﻿//----------------------------------------------------------------------------
//  Copyright (C) 2004-2017 by EMGU Corporation. All rights reserved.       
//----------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Text;

#if UNITY_EDITOR || UNITY_IOS || UNITY_ANDROID || UNITY_STANDALONE
using UnityEngine;
#else
using System.Drawing;
#if __ANDROID__
using Android.Graphics;
using Color = System.Drawing.Color;
#elif __UNIFIED__ && !__IOS__
using AppKit;
using CoreGraphics;
#elif __IOS__
using UIKit;
using CoreGraphics;
#endif
#endif

namespace Emgu.TF.Models
{
    public class MultiboxGraph : DownloadableModels
    {
        public MultiboxGraph(Status status = null, String[] modelFiles = null, String downloadUrl = null)
            : base(
                  modelFiles ?? new string[] { "multibox_model.pb", "multibox_location_priors.txt" },
                  downloadUrl ?? "https://github.com/emgucv/models/raw/master/mobile_multibox_v1a/")
        {
            Download();

            byte[] model = File.ReadAllBytes( GetLocalFileName( _modelFiles[0] ));
            
            Buffer modelBuffer = Buffer.FromString(model);

            using (ImportGraphDefOptions options = new ImportGraphDefOptions())
                ImportGraphDef(modelBuffer, options, status);
        }

        public Result Detect(Tensor imageResults)
        {
            Session multiboxSession = new Session(this);

            Tensor[] finalTensor = multiboxSession.Run(new Output[] { this["ResizeBilinear"] }, new Tensor[] { imageResults },
                new Output[] { this["output_scores/Reshape"], this["output_locations/Reshape"] });

            int labelCount = finalTensor[0].Dim[1];
            Tensor[] topK = GetTopDetections(finalTensor, labelCount);

            float[] encodedScores = topK[0].Flat<float>();

            float[] encodedLocations = finalTensor[1].Flat<float>();

            float[] boxPriors = ReadBoxPriors( GetLocalFileName(_modelFiles[1]) );

            Result result = new Result();
            result.Scores = DecodeScoresEncoding(encodedScores);
            result.Indices = topK[1].Flat<int>();
            result.DecodedLocations = MultiboxGraph.DecodeLocationsEncoding(encodedLocations, boxPriors);
            return result;

        }

        public class Result
        {
            public float[] Scores;
            public int[] Indices;
            public float[] DecodedLocations;
        }
        
        public static Tensor[] GetTopDetections(Tensor[] outputs, int labelsCount)
        {
            var graph = new Graph();
            Operation input = graph.Placeholder(DataType.Float);
            Tensor countTensor = new Tensor(labelsCount);
            Operation countOp = graph.Const(countTensor, countTensor.Type, opName: "count");
            Operation topK = graph.TopKV2(input, countOp, opName: "TopK");
            Session session = new Session(graph);
            Tensor[] topKResult = session.Run(new Output[] { input }, new Tensor[] { outputs[0] },
                new Output[] { new Output(topK, 0), new Output(topK, 1) });
            return topKResult;
        }

        public static float[] ReadBoxPriors(String fileName)
        {
            List<float> priors = new List<float>();
#if UNITY_EDITOR || UNITY_IOS || UNITY_ANDROID || UNITY_STANDALONE
            foreach (String line in File.ReadAllLines(fileName))
#else
            foreach (String line in File.ReadLines(fileName))
#endif
            {
                String[] tokens = line.Split(',');
                foreach (var token in tokens)
                {
                    float result = 0;
                    if (float.TryParse(token.Trim(), out result))
                        priors.Add(result);
                }
            }
            return priors.ToArray();
        }

        public static float[] DecodeLocationsEncoding(float[] locationEncoding, float[] boxPriors)
        {
            int numLocations = locationEncoding.Length / 4;

            float[] locations = new float[locationEncoding.Length];
            bool nonZero = false;
            for (int i = 0; i < numLocations; ++i)
            {
                for (int j = 0; j < 4; ++j)
                {
                    float currEncoding = locationEncoding[4 * i + j];
                    nonZero = nonZero || currEncoding != 0.0f;

                    float mean = boxPriors[i * 8 + j * 2];
                    float stdDev = boxPriors[i * 8 + j * 2 + 1];
                    float currentLocation = currEncoding * stdDev + mean;
                    currentLocation = Math.Max(currentLocation, 0.0f);
                    currentLocation = Math.Min(currentLocation, 1.0f);
                    locations[4 * i + j] = currentLocation;
                }
            }

            if (!nonZero)
            {
                throw new Exception("No non-zero encodings; check log for inference errors.");
            }
            return locations;
        }

        public static float[] DecodeScoresEncoding(float[] scoresEncoding)
        {
            float[] scores = new float[scoresEncoding.Length];
            for (int i = 0; i < scoresEncoding.Length; ++i)
            {
                scores[i] = 1 / ((float)(1 + Math.Exp(-scoresEncoding[i])));
            }
            return scores;
        }

#if UNITY_EDITOR || UNITY_IOS || UNITY_ANDROID || UNITY_STANDALONE
        public static Rect[] ScaleLocation(float[] location, int imageWidth, int imageHeight)
        {
            Rect[] scaledLocation = new Rect[location.Length / 4];
            for (int i = 0; i < scaledLocation.Length; i++)
            {
                float left = location[i * 4] * imageWidth;
                float top = location[i * 4 + 1] * imageHeight;
                float right = location[i * 4 + 2] * imageWidth;
                float bottom = location[i * 4 + 3] * imageHeight;

                scaledLocation[i] = new Rect(left, top, right - left, bottom - top);
            }
            return scaledLocation;
        }

        #region TextureDrawLine function from http://wiki.unity3d.com/index.php?title=TextureDrawLine
        private static void DrawLine(Texture2D tex, int x0, int y0, int x1, int y1, Color col)
        {
            int dy = (int)(y1 - y0);
            int dx = (int)(x1 - x0);
            int stepx, stepy;

            if (dy < 0) { dy = -dy; stepy = -1; }
            else { stepy = 1; }
            if (dx < 0) { dx = -dx; stepx = -1; }
            else { stepx = 1; }
            dy <<= 1;
            dx <<= 1;

            float fraction = 0;

            tex.SetPixel(x0, y0, col);
            if (dx > dy)
            {
                fraction = dy - (dx >> 1);
                while (Mathf.Abs(x0 - x1) > 1)
                {
                    if (fraction >= 0)
                    {
                        y0 += stepy;
                        fraction -= dx;
                    }
                    x0 += stepx;
                    fraction += dy;
                    tex.SetPixel(x0, y0, col);
                }
            }
            else
            {
                fraction = dx - (dy >> 1);
                while (Mathf.Abs(y0 - y1) > 1)
                {
                    if (fraction >= 0)
                    {
                        x0 += stepx;
                        fraction -= dy;
                    }
                    y0 += stepy;
                    fraction += dx;
                    tex.SetPixel(x0, y0, col);
                }
            }
        }
#endregion

        private static void DrawRect(Texture2D image, Rect rect, Color color)
        {
            DrawLine(image, (int)rect.position.x, (int)rect.position.y, (int)(rect.position.x + rect.width), (int)rect.position.y, color);
            DrawLine(image, (int)rect.position.x, (int)rect.position.y, (int)rect.position.x, (int)(rect.position.y + rect.height), color);
            DrawLine(image, (int)(rect.position.x + rect.width), (int)(rect.position.y + rect.height), (int)(rect.position.x + rect.width), (int)rect.position.y, color);
            DrawLine(image, (int)(rect.position.x + rect.width), (int)(rect.position.y + rect.height), (int)rect.position.x, (int)(rect.position.y + rect.height), color);
        }

        public static void DrawResults(Texture2D image, MultiboxGraph.Result result, float scoreThreshold)
        {
            Rect[] locations = ScaleLocation(result.DecodedLocations, image.width, image.height);
            
            Color color = new Color(1.0f, 0, 0);//Set color to red
            for (int i = 0; i < result.Scores.Length; i++)
            {
                if (result.Scores[i] > scoreThreshold)
                {
                    Rect r = locations[result.Indices[i]];
                    //Texture 2D coordinates is flipped upside down, we need to do the same flipping for the Rectangle
                    r.y = image.height - r.y - r.height;
                    DrawRect(image, r, color);
                }
            }
            image.Apply();
            //GUI.color = Color.white;//Reset color to white
            /*
            Android.Graphics.Paint p = new Android.Graphics.Paint();
            p.SetStyle(Paint.Style.Stroke);
            p.AntiAlias = true;
            p.Color = Android.Graphics.Color.Red;
            Canvas c = new Canvas(bmp);


            for (int i = 0; i < result.Scores.Length; i++)
            {
                if (result.Scores[i] > scoreThreshold)
                {
                    Rectangle rect = locations[result.Indices[i]];
                    Android.Graphics.Rect r = new Rect(rect.Left, rect.Top, rect.Right, rect.Bottom);
                    c.DrawRect(r, p);
                }
            }*/
        }
#else
        public static Rectangle[] ScaleLocation(float[] location, int imageWidth, int imageHeight)
        {
            Rectangle[] scaledLocation = new Rectangle[location.Length / 4];
            for (int i = 0; i < scaledLocation.Length; i++)
            {
                float left = location[i * 4] * imageWidth;
                float top = location[i * 4 + 1] * imageHeight;
                float right = location[i * 4 + 2] * imageWidth;
                float bottom = location[i * 4 + 3] * imageHeight;

                scaledLocation[i] = Rectangle.Round(new RectangleF(left, top, right - left, bottom - top));
            }
            return scaledLocation;
        }

#if __ANDROID__
        public static void DrawResults(Android.Graphics.Bitmap bmp, MultiboxGraph.Result result, float scoreThreshold)
        {
            Rectangle[] locations = ScaleLocation(result.DecodedLocations, bmp.Width, bmp.Height);

            Android.Graphics.Paint p = new Android.Graphics.Paint();
            p.SetStyle(Paint.Style.Stroke);
            p.AntiAlias = true;
            p.Color = Android.Graphics.Color.Red;
            Canvas c = new Canvas(bmp);
            
            
                for (int i = 0; i < result.Scores.Length; i++)
                {
                    if (result.Scores[i] > scoreThreshold)
                    {
                        Rectangle rect = locations[result.Indices[i]];
                        Android.Graphics.Rect r = new Rect(rect.Left, rect.Top, rect.Right, rect.Bottom);
                        c.DrawRect(r, p);
                    }
                }     
        }
#elif __UNIFIED__ && !__IOS__ //mac
        public static void DrawResults(NSImage img, MultiboxGraph.Result result, float scoreThreshold)
        {
            Rectangle[] locations = ScaleLocation(result.DecodedLocations, (int)img.Size.Width, (int)img.Size.Height);
            img.LockFocus();

            NSColor redColor = NSColor.Red;
            redColor.Set();
            var context = NSGraphicsContext.CurrentContext;
            var cgcontext = context.CGContext;
            cgcontext.ScaleCTM(1, -1);
            cgcontext.TranslateCTM(0, -img.Size.Height);
            //context.IsFlipped = !context.IsFlipped;
            for (int i = 0; i < result.Scores.Length; i++)
            {
                if (result.Scores[i] > scoreThreshold)
                {
                    Rectangle rect = locations[result.Indices[i]];
                    //img.Draw()
                    //Trace.WriteLine(String.Format("x: {0}, y: {1}, w: {2}, h: {3}", rect.X, rect.Y, rect.Width, rect.Height));
                    CGRect cgRect = new CGRect(rect.X, rect.Y, rect.Width, rect.Height);
                    //img.Draw(cgRect);
                    //CGPath path = CGPath.FromRect(cgRect);
                    //NSBezierPath path = NSBezierPath.FromOvalInRect(cgRect);
                    //path.Fill();
                    //path.Stroke();
                    NSBezierPath.StrokeRect(cgRect);
                    //img.Draw(cgRect, );

                }
            }
            img.UnlockFocus();
        }
#elif __UNIFIED__ //IOS
        public static UIImage DrawResults(UIImage img, MultiboxGraph.Result result, float scoreThreshold)
		{
			Rectangle[] locations = ScaleLocation(result.DecodedLocations, (int)img.Size.Width, (int)img.Size.Height);

        UIGraphics.BeginImageContextWithOptions(img.Size, false, 0);
            var context = UIGraphics.GetCurrentContext();

        img.Draw(new CGPoint());
            context.SetStrokeColor(UIColor.Red.CGColor);
        context.SetLineWidth(2);
			for (int i = 0; i < result.Scores.Length; i++)
			{
				if (result.Scores[i] > scoreThreshold)
				{
					Rectangle rect = locations[result.Indices[i]];
					CGRect cgRect = new CGRect(rect.X, rect.Y, rect.Width, rect.Height);
        context.AddRect(cgRect);
        context.DrawPath(CGPathDrawingMode.Stroke);

				}
			}
            UIImage imgWithRect = UIGraphics.GetImageFromCurrentImageContext();
        UIGraphics.EndImageContext();
            return imgWithRect;
        }
#else
        public static void DrawResults(Bitmap bmp, MultiboxGraph.Result result, float scoreThreshold)
        {
            Rectangle[] locations = ScaleLocation(result.DecodedLocations, bmp.Width, bmp.Height);


            using (Graphics g = Graphics.FromImage(bmp))
            {
                for (int i = 0; i < result.Scores.Length; i++)
                {
                    if (result.Scores[i] > scoreThreshold)
                    {
                        Rectangle rect = locations[result.Indices[i]];
                        Pen redPen = new Pen(Color.Red, 3);

                        g.DrawRectangle(redPen, rect);
                    }
                }
                g.Save();
            }
        }
#endif
#endif
    }
}

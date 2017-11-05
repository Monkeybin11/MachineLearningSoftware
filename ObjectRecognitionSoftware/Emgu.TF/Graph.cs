﻿//----------------------------------------------------------------------------
//  Copyright (C) 2004-2017 by EMGU Corporation. All rights reserved.       
//----------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.Text;
using Emgu.TF.Util;
using System.Runtime.InteropServices;

namespace Emgu.TF
{
    /// <summary>
    /// Tensorflow Graph
    /// </summary>
    public partial class Graph : UnmanagedObject
    {
        /// <summary>
        /// Create a new Graph
        /// </summary>
        public Graph()
        {
            _ptr = TfInvoke.tfeNewGraph();
        }

        /// <summary>
        /// Sets the shape of the Tensor referenced by <paramref name="output"/> in graph to
        /// the shape described by <paramref name="dims"/>.
        /// </summary>
        /// <param name="output">The output</param>
        /// <param name="dims">The shape</param>
        /// <param name="status">The status</param>
        public void SetTensorShape(Output output, int[] dims, Status status = null)
        {
            GCHandle handle = GCHandle.Alloc(dims, GCHandleType.Pinned);
            using (StatusChecker checker = new StatusChecker(status))
                TfInvoke.tfeGraphSetTensorShape(_ptr, output.Operation, output.Index, handle.AddrOfPinnedObject(), dims.Length, checker.Status);
        }

        /// <summary>
        /// Returns the shape of the Tensor
        /// </summary>
        /// <param name="output">The output</param>
        /// <param name="numDim">The rank of the tensor</param>
        /// <param name="status">The status</param>
        /// <returns>The shape of the Tensor</returns>
        public int[] GetTensorShape(Output output, int numDim, Status status = null)
        {
            int[] dims = new int[numDim];
            GCHandle handle = GCHandle.Alloc(dims, GCHandleType.Pinned);
            using (StatusChecker checker = new StatusChecker(status))
                TfInvoke.tfeGraphGetTensorShape(_ptr, output.Operation, output.Index, handle.AddrOfPinnedObject(), numDim, checker.Status);
            handle.Free();
            return dims;
        }

        /// <summary>
        /// Release all the unmanaged memory associated with the graph
        /// </summary>
        protected override void DisposeObject()
        {
            if (IntPtr.Zero != _ptr)
                TfInvoke.tfeDeleteGraph(ref _ptr);
        }

        /// <summary>
        /// Import the graph serialized in <paramref name="graphDef"/> into the current graph.
        /// Convenience function for when no return outputs have been added.
        /// </summary>
        /// <param name="graphDef">The GraphDef to be imported</param>
        /// <param name="options">The import options</param>
        /// <param name="status">The status</param>
        public void ImportGraphDef(Buffer graphDef, ImportGraphDefOptions options, Status status = null)
        {
            using (StatusChecker checker = new StatusChecker(status))
                TfInvoke.tfeGraphImportGraphDef(_ptr, graphDef, options, checker.Status);
        }

        /// <summary>
        /// Operation will only be added to graph when FinishOperation() is
        /// called (assuming FinishOperation() does not return an error).
        /// Graph must not be deleted until after FinishOperation() is
        /// called.
        /// </summary>
        /// <param name="opType">The operation type</param>
        /// <param name="opName">The name of the operation</param>
        /// <returns>A new operation description</returns>
        public OperationDescription NewOperation(String opType, String opName)
        {
            return new OperationDescription(TfInvoke.tfeNewOperation(_ptr, opType, opName));
        }

        /// <summary>
        /// Returns the operation in the graph with the specific name. Returns null if
        /// no operation found.
        /// </summary>
        /// <param name="opName">The name of the operation</param>
        /// <returns>
        /// Returns the operation in the graph with the specific name. Returns null if
        /// no operation found.
        /// </returns>
        public Operation OperationByName(String opName)
        {
            IntPtr ptr = TfInvoke.tfeGraphOperationByName(_ptr, opName);
            if (ptr == IntPtr.Zero)
                return null;
            return new Operation(ptr);
        }

        /// <summary>
        /// Returns the operation in the graph with the specific name. Returns null if
        /// no operation found.
        /// </summary>
        /// <param name="name">The name of the operation</param>
        /// <returns>
        /// Returns the operation in the graph with the specific name. Returns null if
        /// no operation found.
        /// </returns>
        public Operation this[string name]
        {
            get { return OperationByName(name); }
        }

        /// <summary>
        /// Iterate through the operations of a graph.
        /// </summary>
        /// <param name="pos">The position pointer that can be used to iterate though the operations of this graph. Use IntPtr.Zero to get the first operation</param>
        /// <returns>The next operation from the position</returns>
        public Operation NextOperation(IntPtr pos = new IntPtr())
        {
            return new Operation(TfInvoke.tfeGraphNextOperation(_ptr, pos));
        }

        /// <summary>
        /// Write out a serialized representation of `graph` (as a GraphDef protocol
        /// message).
        /// </summary>
        /// <param name="outputGraphDef">The buffer to store the GraphDef</param>
        /// <param name="status">The status</param>
        public void ToGraphDef(Buffer outputGraphDef, Status status = null)
        {
            using (StatusChecker checker = new StatusChecker(status))
                TfInvoke.tfeGraphToGraphDef(_ptr, outputGraphDef, checker.Status);
        }
    }

    public static partial class TfInvoke
    {

        [DllImport(ExternLibrary, CallingConvention = TfInvoke.TFCallingConvention)]
        internal static extern IntPtr tfeNewGraph();

        [DllImport(ExternLibrary, CallingConvention = TfInvoke.TFCallingConvention)]
        internal static extern void tfeDeleteGraph(ref IntPtr buffer);

        [DllImport(ExternLibrary, CallingConvention = TfInvoke.TFCallingConvention)]
        internal static extern void tfeGraphImportGraphDef(IntPtr graph, IntPtr graph_def, IntPtr options, IntPtr status);

        [DllImport(ExternLibrary, CallingConvention = TfInvoke.TFCallingConvention)]
        internal static extern void tfeGraphToGraphDef(IntPtr graph, IntPtr outputGraphDef, IntPtr status);

        [DllImport(ExternLibrary, CallingConvention = TfInvoke.TFCallingConvention)]
        internal static extern IntPtr tfeNewOperation(
            IntPtr graph,
            [MarshalAs(StringMarshalType)]
            String opType,
            [MarshalAs(StringMarshalType)]
            String opName);

        [DllImport(ExternLibrary, CallingConvention = TfInvoke.TFCallingConvention)]
        internal static extern IntPtr tfeGraphOperationByName(
            IntPtr graph,
            [MarshalAs(StringMarshalType)]
            String opName);

        [DllImport(ExternLibrary, CallingConvention = TfInvoke.TFCallingConvention)]
        internal static extern IntPtr tfeGraphNextOperation(IntPtr graph, IntPtr pos);

        [DllImport(ExternLibrary, CallingConvention = TfInvoke.TFCallingConvention)]
        internal static extern void tfeGraphSetTensorShape(IntPtr graph, IntPtr outputOperation, int idx, IntPtr dims, int numDims, IntPtr status);

        [DllImport(ExternLibrary, CallingConvention = TfInvoke.TFCallingConvention)]
        internal static extern void tfeGraphGetTensorShape(IntPtr graph, IntPtr outputOperation, int idx, IntPtr dims, int numDims, IntPtr status);
    }
}

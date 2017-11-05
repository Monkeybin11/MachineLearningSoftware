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
    /// Tensorflow session options
    /// </summary>
    public class SessionOptions : UnmanagedObject
    {
        /// <summary>
        /// Construct a new session options
        /// </summary>
        public SessionOptions()
        {
            _ptr = TfInvoke.tfeNewSessionOptions();
        }

        /// <summary>
        /// Release the unmanaged memory associated with this session options.
        /// </summary>
        protected override void DisposeObject()
        {
            if (IntPtr.Zero != _ptr)
            {
                TfInvoke.tfeDeleteSessionOptions(ref _ptr);
            }
        }

        /// <summary>
        /// Set the target in TF_SessionOptions.options.
        /// </summary>
        /// <param name="target">
        /// target can be empty, a single entry, or a comma separated list of entries.
        /// Each entry is in one of the following formats :
        /// "local"
        /// ip:port
        /// host:port
        /// </param>
        public void SetTarget(String target)
        {
            TfInvoke.tfeSetTarget(_ptr, target);
        }
    }

    public static partial class TfInvoke
    {

        [DllImport(ExternLibrary, CallingConvention = TfInvoke.TFCallingConvention)]
        internal static extern IntPtr tfeNewSessionOptions();

        [DllImport(ExternLibrary, CallingConvention = TfInvoke.TFCallingConvention)]
        internal static extern void tfeDeleteSessionOptions(ref IntPtr options);

        [DllImport(ExternLibrary, CallingConvention = TfInvoke.TFCallingConvention)]
        internal static extern void tfeSetTarget(
            IntPtr options,
            [MarshalAs(StringMarshalType)]
            String target);
    }
}

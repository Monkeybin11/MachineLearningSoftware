﻿//----------------------------------------------------------------------------
//  Copyright (C) 2004-2017 by EMGU Corporation. All rights reserved.       
//----------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using System.Text;

namespace Emgu.TF
{
    /// <summary>
    /// Represents a specific input of an operation.
    /// </summary>
    public class Input
    {
        /// <summary>
        /// The Operation
        /// </summary>
        public Operation Operation;

        /// <summary>
        /// The index of the input within the operation
        /// </summary>
        public int Index;

        /// <summary>
        /// Create an input by specifying the operation and index.
        /// </summary>
        /// <param name="operation">The operation</param>
        /// <param name="index">The index of the input within the operation</param>
        public Input(Operation operation, int index)
        {
            Operation = operation;
            Index = index;
        }
    }
}

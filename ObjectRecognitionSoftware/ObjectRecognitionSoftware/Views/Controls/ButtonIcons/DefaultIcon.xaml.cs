﻿using System.Windows.Controls;
using System.Windows.Shapes;

namespace ObjectRecognitionSoftware.Views.Controls.ButtonIcons
{
    /// <summary>
    /// Interaction logic for ThemeButtonIcon.xaml
    /// </summary>
    public partial class DefaultIcon : UserControl
    {
        public DefaultIcon()
        {
            InitializeComponent();
        }

        public Path GetPath()
        {
            return IconPath;
        }
    }
}

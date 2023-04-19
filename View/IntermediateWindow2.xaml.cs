using CoverallsShop.DbEntity;
using System.Collections.Generic;
using System.Windows;
using System.Timers;
using System;
using System.Windows.Media.Imaging;
using System.Windows.Threading;
using static System.Net.Mime.MediaTypeNames;

namespace CoverallsShop.View
{
    public partial class IntermediateWindow2 : Window
    {
        public IntermediateWindow2()
        {
            InitializeComponent();
        }
        #region
        private void OpenCatal_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            this.Close();
        }

        private void Minimize_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        private void Close_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
    #endregion

}

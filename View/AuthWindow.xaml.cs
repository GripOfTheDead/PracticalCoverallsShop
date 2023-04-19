using CoverallsShop.ViewModel;
using System.Windows;
using System.Windows.Controls;

namespace CoverallsShop.View
{
    public partial class AuthWindow : Window
    {
        public AuthWindow()
        {
            InitializeComponent();
            this.DataContext = new AuthViewModel();
        }
        #region
        private void btnAuth_Click(object sender, RoutedEventArgs e)
        {
            (DataContext as AuthViewModel).Password = txtPasswordBox.Password.ToString();

            (DataContext as AuthViewModel).AuthorInApp();
        }

        private void btnReg_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("На данный момент регистрация пользователя недоступна\n\n" +
                "Пользователи добавляются в ручную через тех.поддержку\n\n" +
                "Телефон тех.поддержки - 8-952-ХХХ-ХХ-ХХ", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Information);
        }

        private void Minimize_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        private void Close_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
        #endregion
    }
}

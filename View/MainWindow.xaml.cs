using CoverallsShop.DbEntity;
using CoverallsShop.Model;
using CoverallsShop.ViewModel;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.Entity.Migrations;
using System.Threading;
using System.Windows;

namespace CoverallsShop.View
{
    public partial class MainWindow : Window
    {
       
        public ObservableCollection<Product> product;
        public MainWindow()
        {
            InitializeComponent();
            this.DataContext = new MainViewModel();

            
        }
        #region
        //Обработчик нажатия на кнопку - Свёртывание приложение
        private void Minimize_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        //Обработчик нажатия на кнопку - Закрытие приложения
        private void Close_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
        
       
        
        //Информация о программе
        private void Info_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Данное приложение создано для заказов Спецальной одежды для разных спецслужб: Военные, пожарные и прочие\n\n" +
                "Приложение находится на стадии разработки, все жалобы и предложения присылайте на почту: holodok522@mail.ru\n\n" +
                "Я обязательно учту каждое предложение и постараюсь решить ваши проблемы\n\n" +
                "Над проектом работал:\nФилипьев Констрантин Олегович\n" +
                "Студент группы ИС-32\n\n\n" +
                "Версия приложения на момент показа: v0.1.1", "О программе", MessageBoxButton.OK, MessageBoxImage.Information);
        }

       
        //Обработка нажатия на кнопку - Обновление бд
        private void UpdateBtn_Click(object sender, RoutedEventArgs e)
        {
            (DataContext as MainViewModel).LoadData();
        }
#endregion
        //Обработчик нажатия на кнопку - Сохранение информации
        private void btnSaveClick_Click(object sender, RoutedEventArgs e)
        {
            
        }
        
        #region
        private void DobavitVKorzinu_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("В разработке", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Information);
        }

        private void MenuItem_Click(object sender, RoutedEventArgs e)
        {

            MessageBox.Show("В разработке", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Information);
        }
        #endregion
        #region
        //Делает Border с информацией о товаре видимым
        private void btnBrowseItem_Click(object sender, RoutedEventArgs e)
        {
            (DataContext as MainViewModel).BtnVisib = Visibility.Visible;
        }

        //Делает Border с информацией о товаре невидимым
        private void btnInv_Click(object sender, RoutedEventArgs e)
        {
            (DataContext as MainViewModel).BtnVisib = Visibility.Hidden;
        }
        #endregion
        #region
        //Делает Border с Редактированием данных Видимым
        private void btnRedact_Click(object sender, RoutedEventArgs e)
        {
            (DataContext as MainViewModel).BtnVisib2 = Visibility.Visible;
        }

        //Делает Border с Редактированием данных невидимыми
        private void btnInvBorder2Click_Click(object sender, RoutedEventArgs e)
        {
            (DataContext as MainViewModel).BtnVisib2 = Visibility.Hidden;
        }
        #endregion
        #region
        //Делает Border Корзины данных Видимым
        private void btnKorzina_Click(object sender, RoutedEventArgs e)
        {
            (DataContext as MainViewModel).BtnVisib3 = Visibility.Visible;
        }
        //Делает Border Корзины данных Нивидимым
        private void btnInvBorder3Click_Click(object sender, RoutedEventArgs e)
        {
            (DataContext as MainViewModel).BtnVisib3 = Visibility.Hidden;
        }
        #endregion
    }
}

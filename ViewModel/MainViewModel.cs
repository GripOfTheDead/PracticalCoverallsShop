using CoverallsShop.DbEntity;
using CoverallsShop.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace CoverallsShop.ViewModel
{
    public class MainViewModel : BaseViewModel
    {
        #region
        private Visibility _btnVis3 = Visibility.Hidden;
        private Visibility _btnVis2 = Visibility.Hidden;
        private Visibility _btnVis = Visibility.Hidden;
        private Visibility _visbBut = Visibility.Hidden;
        private ObservableCollection<Product> _product;
        private string _productDis;
        private string _productName;
        private string _productPrize;
        private string _productCurrentDis;
        private Product _productBut;
        #endregion
        #region
        public string ProductDis
        {
            get=> _productDis;
            set
            {
                _productDis = value;
                OnPropertyChanged(nameof(ProductDis));
            }
        }

        public string ProductName
        {
            get => _productDis;
            set
            {
                _productDis = value;
                OnPropertyChanged(nameof(ProductName));
            }
        }

        public string ProductPrize
        {
            get => _productDis;
            set
            {
                _productDis = value;
                OnPropertyChanged(nameof(ProductPrize));
            }
        }

        public string ProductCurrentDis
        {
            get => _productDis;
            set
            {
                _productDis = value;
                OnPropertyChanged(nameof(ProductCurrentDis));
            }
        }

        public Product ProductBut
        {
            get => _productBut;
            set
            {
                _productBut = value;
                OnPropertyChanged(nameof(ProductBut));
            }
        }
        public ObservableCollection<Product> Products
        {
            get => _product;
            set
            {
                _product = value;
                OnPropertyChanged(nameof(Product));
            }
        }
        public Visibility BtnVisib
        {
            get => _btnVis;
            set
            {
                _btnVis = value;
                OnPropertyChanged(nameof(BtnVisib));
            }
        }
        public Visibility BtnVisib2
        {
            get => _btnVis2;
            set
            {
                _btnVis2 = value;
                OnPropertyChanged(nameof(BtnVisib2));
            }
        }
        public Visibility BtnVisib3
        {
            get => _btnVis3;
            set
            {
                _btnVis3 = value;
                OnPropertyChanged(nameof(BtnVisib3));
            }
        }
        public Visibility VisibilityBut
        {
            get => _visbBut;
            set
            {
                _visbBut = value;
                OnPropertyChanged(nameof(VisibilityBut));
            }
        }
        #endregion
        public void LoadData()
        {
            if (Products.Count > 0)
            {
                Products.Clear();
            }

            var userResult = DbCoverallsShop.Db.Product.ToList();
            userResult.ForEach(element => Products?.Add(element));
        }
        public MainViewModel()
        {
            if (EntrUser.CheckOnTheAdmin()) VisibilityBut = Visibility.Visible;
            else VisibilityBut = Visibility.Hidden;

            Products = new ObservableCollection<Product>();
            LoadData();
        }
    }
}

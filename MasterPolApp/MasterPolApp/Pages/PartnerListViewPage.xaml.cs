using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace MasterPolApp.Pages
{
    /// <summary>
    /// Логика взаимодействия для PartnerListViewPage.xaml
    /// </summary>
    public partial class PartnerListViewPage : Page
    {
        public PartnerListViewPage()
        {
            InitializeComponent();
            PartnerListView.ItemsSource = Data.DatabaseMasterPolEntities.GetContext().PartnerImport.ToList();
        }

        private void EditButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.AddEditPage((sender as Button).DataContext as Data.PartnerImport));
        }

        private void HistoryButton_Click(object sender, RoutedEventArgs e)
        {
            Button button = sender as Button;
            if(button != null && button.Tag is int partnerId)
            {
                Classes.Manager.MainFrame.Navigate(new Pages.HistoryDataGridPage(partnerId));
            }
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.LoginPage());
        }

        private void AddButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.AddEditPage(null));
        }
    }
}

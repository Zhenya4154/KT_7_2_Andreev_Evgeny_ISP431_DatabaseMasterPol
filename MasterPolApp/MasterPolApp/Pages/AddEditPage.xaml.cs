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
    /// Логика взаимодействия для AddEditPage.xaml
    /// </summary>
    public partial class AddEditPage : Page
    {
        public Data.PartnerImport CurrentPartner = new Data.PartnerImport();
        public string FlagAddOrEdit = "default";
        public AddEditPage(Data.PartnerImport _partner)
        {
            InitializeComponent();
            if(_partner != null)
            {
                FlagAddOrEdit = "edit";
                CurrentPartner = _partner;
            }
            else
            {
                FlagAddOrEdit = "add";
            }
            DataContext = CurrentPartner;
            Init();

        }

        private void Init()
        {
            try
            {
                TypePartnerComboBox.ItemsSource = Data.DatabaseMasterPolEntities.GetContext().TypePartner.ToList();
                if(FlagAddOrEdit == "add")
                {
                    NamePartnerTextBox.Text = string.Empty;
                    TypePartnerComboBox.SelectedItem = null;
                    RatingTextBox.Text = string.Empty;
                    IndexTextBox.Text = string.Empty;
                    AreaTextBox.Text = string.Empty;
                    CityTextBox.Text = string.Empty;
                    StreetTextBox.Text = string.Empty;
                    HouseTextBox.Text = string.Empty;
                    NameDirectorTextBox.Text = string.Empty;
                    NumberPhoneTextBox.Text = string.Empty;
                    MailTextBox.Text = string.Empty;
                }
                else if(FlagAddOrEdit == "edit")
                {
                    NamePartnerTextBox.Text = CurrentPartner.NamePartner;
                    TypePartnerComboBox.SelectedItem = Data.DatabaseMasterPolEntities.GetContext().TypePartner
                        .Where(d => d.Id == CurrentPartner.IdTypePartner).FirstOrDefault();
                    RatingTextBox.Text = CurrentPartner.Rating.ToString();
                    IndexTextBox.Text = CurrentPartner.Address.NumberIndex.Number.ToString();
                    AreaTextBox.Text = CurrentPartner.Address.NameArea.Area;
                    CityTextBox.Text = CurrentPartner.Address.NameCity.City;
                    StreetTextBox.Text = CurrentPartner.Address.NameStreet.Street;
                    HouseTextBox.Text = CurrentPartner.Address.House.ToString();
                    NameDirectorTextBox.Text = CurrentPartner.NameDirector.Director;
                    NumberPhoneTextBox.Text = CurrentPartner.NumberPhone;
                    MailTextBox.Text = CurrentPartner.Mail;
                }
            }
            catch
            {

            }
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.PartnerListViewPage());
        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                StringBuilder errors = new StringBuilder();
                if (string.IsNullOrEmpty(NamePartnerTextBox.Text))
                {
                    errors.AppendLine("Введите наименование партнера!");
                }
                if(TypePartnerComboBox.SelectedItem == null)
                {
                    errors.AppendLine("Выберите тип партнера!");
                }
                if (string.IsNullOrEmpty(RatingTextBox.Text))
                {
                    errors.AppendLine("Введите рейтинг партнера!");
                }
                if (string.IsNullOrEmpty(IndexTextBox.Text))
                {
                    errors.AppendLine("Введите индекс!");
                }
                if (string.IsNullOrEmpty(AreaTextBox.Text))
                {
                    errors.AppendLine("Введите область!");
                }
                if (string.IsNullOrEmpty(CityTextBox.Text))
                {
                    errors.AppendLine("Введите город!");
                }
                if (string.IsNullOrEmpty(StreetTextBox.Text))
                {
                    errors.AppendLine("Введите улицу!");
                }
                if (string.IsNullOrEmpty(HouseTextBox.Text))
                {
                    errors.AppendLine("Введите дом!");
                }
                if (string.IsNullOrEmpty(NameDirectorTextBox.Text))
                {
                    errors.AppendLine("Введите ФИО директора!");
                }
                if (string.IsNullOrEmpty(NumberPhoneTextBox.Text))
                {
                    errors.AppendLine("Введите номер телефона!");
                }
                if (string.IsNullOrEmpty(MailTextBox.Text))
                {
                    errors.AppendLine("Введите почту!");
                }
                if(errors.Length > 0)
                {
                    MessageBox.Show("Не все поля заполненны!", "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }

                var address = new Data.Address();
                var IndexText = Convert.ToInt32(IndexTextBox.Text);

                var searchStreet = (from item in Data.DatabaseMasterPolEntities.GetContext().NameStreet
                                    where item.Street == StreetTextBox.Text
                                    select item).FirstOrDefault();
                if(searchStreet != null)
                {
                    address.IdNameStreet = searchStreet.Id;
                }
                else
                {
                    Data.NameStreet nameStreet = new Data.NameStreet()
                    {
                        Street = StreetTextBox.Text
                    };
                    Data.DatabaseMasterPolEntities.GetContext().NameStreet.Add(nameStreet);
                    Data.DatabaseMasterPolEntities.GetContext().SaveChanges();
                    address.IdNameStreet = nameStreet.Id;
                }

                var searchArea = (from item in Data.DatabaseMasterPolEntities.GetContext().NameArea
                                    where item.Area == AreaTextBox.Text
                                    select item).FirstOrDefault();
                if (searchArea != null)
                {
                    address.IdNameArea = searchArea.Id;
                }
                else
                {
                    Data.NameArea nameArea = new Data.NameArea()
                    {
                        Area = AreaTextBox.Text
                    };
                    Data.DatabaseMasterPolEntities.GetContext().NameArea.Add(nameArea);
                    Data.DatabaseMasterPolEntities.GetContext().SaveChanges();
                    address.IdNameArea = nameArea.Id;
                }

                var searchCity = (from item in Data.DatabaseMasterPolEntities.GetContext().NameCity
                                  where item.City == CityTextBox.Text
                                  select item).FirstOrDefault();
                if (searchCity != null)
                {
                    address.IdNameCity = searchCity.Id;
                }
                else
                {
                    Data.NameCity nameCity = new Data.NameCity()
                    {
                        City = CityTextBox.Text
                    };
                    Data.DatabaseMasterPolEntities.GetContext().NameCity.Add(nameCity);
                    Data.DatabaseMasterPolEntities.GetContext().SaveChanges();
                    address.IdNameCity = nameCity.Id;
                }

                var searchIndex = (from item in Data.DatabaseMasterPolEntities.GetContext().NumberIndex
                                  where item.Number == IndexText
                                  select item).FirstOrDefault();
                if (searchIndex != null)
                {
                    address.IdNumberIndex = searchIndex.Id;
                }
                else
                {
                    Data.NumberIndex nameIndex = new Data.NumberIndex()
                    {
                        Number = IndexText
                    };
                    Data.DatabaseMasterPolEntities.GetContext().NumberIndex.Add(nameIndex);
                    Data.DatabaseMasterPolEntities.GetContext().SaveChanges();
                    address.IdNumberIndex = nameIndex.Id;
                }

                var searchName = (from item in Data.DatabaseMasterPolEntities.GetContext().NameDirector
                                  where item.Director == NameDirectorTextBox.Text
                                  select item).FirstOrDefault();
                if (searchName != null)
                {
                    CurrentPartner.IdNameDirector = searchName.Id;
                }
                else
                {
                    Data.NameDirector nameDirector = new Data.NameDirector()
                    {
                        Director = NameDirectorTextBox.Text
                    };
                    Data.DatabaseMasterPolEntities.GetContext().NameDirector.Add(nameDirector);
                    Data.DatabaseMasterPolEntities.GetContext().SaveChanges();
                    CurrentPartner.IdNameDirector = nameDirector.Id;
                }

                Data.DatabaseMasterPolEntities.GetContext().Address.Add(address);
                Data.DatabaseMasterPolEntities.GetContext().SaveChanges();

                CurrentPartner.NumberPhone = NumberPhoneTextBox.Text;
                CurrentPartner.Mail = MailTextBox.Text;
                CurrentPartner.Rating = Convert.ToInt32(RatingTextBox.Text);
                var selecttype = TypePartnerComboBox.SelectedItem as Data.TypePartner;
                CurrentPartner.IdTypePartner = selecttype.Id;
                CurrentPartner.NamePartner = NamePartnerTextBox.Text;
                CurrentPartner.Discount = 0;
                address.House = Convert.ToInt32(HouseTextBox.Text);
                CurrentPartner.IdAddress = address.Id;
                
                if(FlagAddOrEdit == "add")
                {
                    Data.DatabaseMasterPolEntities.GetContext().Address.Add(address);
                    Data.DatabaseMasterPolEntities.GetContext().PartnerImport.Add(CurrentPartner);
                    Data.DatabaseMasterPolEntities.GetContext().SaveChanges();
                    MessageBox.Show("Успешно добавлено!", "Успех!", MessageBoxButton.OK, MessageBoxImage.Information);
                }
                else if(FlagAddOrEdit == "edit")
                {
                    Data.DatabaseMasterPolEntities.GetContext().SaveChanges();
                    MessageBox.Show("Успешно изменено!", "Успех!", MessageBoxButton.OK, MessageBoxImage.Information);
                }
            }
            catch
            {

            }
        }
    }
}

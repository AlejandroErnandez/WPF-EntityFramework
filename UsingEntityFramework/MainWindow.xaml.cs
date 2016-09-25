using System;
using System.Data.Entity;
using System.Windows;
using System.Linq;

namespace UsingEntityFramework
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private PersonInfoEntities1 db;
        
        public MainWindow()
        {        
            InitializeComponent();

            db = new PersonInfoEntities1();
            
        }
        private void onload(object sender, RoutedEventArgs e)
        {
            db.PersonalInfoes.Load();
            dataGrid.ItemsSource = db.PersonalInfoes.Local.ToBindingList();
        }
        

        private void buttonAdd_Click(object sender, RoutedEventArgs e)
        {
            if (textBoxName.Text == string.Empty || textBoxPosition.Text == string.Empty || textBoxSalary.Text == string.Empty)
            {
                MessageBox.Show("Fill in all the fields!", "Warning!", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            PersonalInfo person = new PersonalInfo();
            int id = db.PersonalInfoes.Select(p => p.Id).Max() + 1;

            person.Id = id;
            person.Name = textBoxName.Text;
            person.Position = textBoxPosition.Text;
            person.Salary = Convert.ToDecimal(textBoxSalary.Text);

            db.PersonalInfoes.Add(person);
            
            db.SaveChanges();

            textBoxName.Text = string.Empty;
            textBoxPosition.Text = string.Empty;
            textBoxSalary.Text = string.Empty;
        }

        private void buttonEdit_Click(object sender, RoutedEventArgs e)
        {
            if (textBoxName.Text == string.Empty || textBoxPosition.Text == string.Empty || textBoxSalary.Text == string.Empty)
            {
                MessageBox.Show("Fill in all the fields!", "Warning!", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }          

            if(MessageBox.Show("Are you sure you want to change this item?", "Warning!", MessageBoxButton.YesNo) == MessageBoxResult.Yes)
            {
               
               
                db.SaveChanges();

                textBoxName.Text = string.Empty;
                textBoxPosition.Text = string.Empty;
                textBoxSalary.Text = string.Empty;

            }
        }

        private void buttonDelete_Click(object sender, RoutedEventArgs e)
        {
            if(MessageBox.Show("Are you really want to delete item?","Warning!", MessageBoxButton.YesNo) == MessageBoxResult.Yes)
            {
                db.PersonalInfoes.Remove((PersonalInfo) dataGrid.SelectedItem);
                db.SaveChanges();
            }
        }

        private void textBoxSearch_TextChanged(object sender, System.Windows.Controls.TextChangedEventArgs e)
        {
            if (textBoxSearch.Text != string.Empty)
            {
                dataGrid.ItemsSource = db.PersonalInfoes.Where(p => p.Name.Contains(textBoxSearch.Text)).ToList();
                dataGrid.ItemsSource = db.PersonalInfoes.Where(p => p.Position.Contains(textBoxSearch.Text)).ToList();
            }
            else
                dataGrid.ItemsSource = db.PersonalInfoes.Local.ToBindingList();
        }

    }
}

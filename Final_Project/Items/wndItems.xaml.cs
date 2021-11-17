﻿using System;
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
using System.Windows.Shapes;

namespace Final_Project
{
    /// <summary>
    /// Interaction logic for wndItems.xaml
    /// </summary>
    public partial class wndItems : Window
    {
        #region Class Members
        /// <summary>
        /// This is a boolean to tell the Main 
        /// Page whether or not it needs to refresh.
        /// </summary>
        public bool changesMade;
        /// <summary>
        /// This will hold an itemLogic object
        /// </summary>
        public clsItemsLogic product = new clsItemsLogic();
        /// <summary>
        /// This will hold a list of items passed in
        /// from the database
        /// </summary>
        public List<DataGrid> items;
        /// <summary>
        /// This will hold all of the info of the selected data grid
        /// row
        /// </summary>
        private DataGridRow dataRow;
        #endregion

        public wndItems()
        {
            InitializeComponent();
            ItemDataGrid.ItemsSource = product.getItems();
        }

        /// <summary>
        /// Button to Add an item
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void addItemButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                string code = codeTxtBox.Text;
                string desc = descTxtBox.Text;
                string cost = costTxtBox.Text;
                product.addItem(code, desc, cost);

                ItemDataGrid.ItemsSource = null;           
                ItemDataGrid.ItemsSource = product.getItems();
                codeTxtBox.Text = "";
                descTxtBox.Text = "";
                costTxtBox.Text = "";
            }
            catch(System.Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        /// <summary>
        /// This is a method to grab the selected data grid item
        /// when the user double clicks an item.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Row_DoubleClick(object sender, MouseButtonEventArgs e)
        {
            try
            {
                editButton.IsEnabled = true;

                dataRow = (DataGridRow)sender;
            }
            catch(System.Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        /// <summary>
        /// This is a button that when clicked will enter an editing mode allowing
        /// the user to edit a row. When clicked the text on the button will change to
        /// indicate that they can edit and when they are done editing after clicking 
        /// this button it will update the database. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void editButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (ItemDataGrid.IsReadOnly)
                {
                    ItemDataGrid.IsReadOnly = false;
                    editButton.Content = "Save Edit";
                    return;
                }
                else
                {
                    ItemDataGrid.IsReadOnly = true;
                    editButton.Content = "Edit Item";
                }

                Item item = (Item)(dataRow.DataContext);

                string code = item.itemCode;
                string desc = item.itemDesc;
                string cost = item.itemCost;

                product.updateItem(code, desc, cost);
            }
            catch(System.Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        /// <summary>
        /// Button to delete an item if the item is not attached to an invoice. 
        /// if the selected item is attached to an invoice than it will retrieve 
        /// the invoice number from the logic class and display that to the user. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void deleteButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Item item = (Item)(ItemDataGrid.SelectedItem);
                if(item == null)
                {
                    MessageBox.Show("Please first select an item to delete by double clicking an item in the grid.", "Input Error", MessageBoxButton.OK, MessageBoxImage.Warning);   
                }

                string code = item.itemCode;            
            
                if (product.deleteItem(code))
                {
                    ItemDataGrid.ItemsSource = product.getItems();
                    return;
                }
                else
                {
                    string attachedInvoice = product.getAttachedInvoiceNum(code);
                    MessageBox.Show("This item cannot be deleted because it is attached to Invoice : " + attachedInvoice, "Unsuccessful Deletion", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
            catch(System.Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}

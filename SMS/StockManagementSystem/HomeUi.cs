﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace StockManagementSystem
{
    public partial class HomeUi : Form
    {
        public HomeUi()
        {
            InitializeComponent();

        }

        private void ComapnySetupButton_Click(object sender, EventArgs e)
        {
            CompanySetupUi companySetupUi=new CompanySetupUi();
            companySetupUi.ShowDialog();
        }

        private void ViewSalesBetweenTwoDatesButton_Click(object sender, EventArgs e)
        {
            ViewSalesBetweenTwoDatesUi viewSalesBetweenTwoDatesUi=new ViewSalesBetweenTwoDatesUi();
            viewSalesBetweenTwoDatesUi.ShowDialog();
        }

        private void StockOutButton_Click(object sender, EventArgs e)
        {
            StockOutUi stockOutUi = new StockOutUi();
            stockOutUi.ShowDialog();
        }

        private void CatetorySetupButton_Click(object sender, EventArgs e)
        {
            CategorySetupUi categorySetupUi = new CategorySetupUi();
            categorySetupUi.ShowDialog();

        }

        private void StockInButton_Click(object sender, EventArgs e)
        {
            StockInUi stockInUi = new StockInUi();
            stockInUi.ShowDialog();
        }

        private void ItemSetupButton_Click(object sender, EventArgs e)
        {
            ItemSetupUi itemSetupUi = new ItemSetupUi();
            itemSetupUi.ShowDialog();
        }

        private void SearchAndViewItemSummaryButton_Click(object sender, EventArgs e)
        {
            SearchAndViewItemsUi searchAndViewItemsUi = new SearchAndViewItemsUi();
            searchAndViewItemsUi.ShowDialog();
        }

        private void HomeUi_Load(object sender, EventArgs e)
        {

        }

        private void closeLabel_Click(object sender, EventArgs e)
        {
            this.Hide();
        }

    }
}

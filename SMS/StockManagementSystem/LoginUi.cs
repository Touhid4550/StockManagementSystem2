using System;
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
    public partial class LoginUi : Form
    {
        public LoginUi()
        {
            InitializeComponent();
        }
        int mov, movx, movy;
        
        

        private void LoginUi_Load(object sender, EventArgs e)
        {

        }

        private void LoginButton_Click(object sender, EventArgs e)
        {
            if(userNameTextBox.Text=="user" && passwordTextBox.Text=="user")
            {
                this.Hide();
                HomeUi homeUi = new HomeUi();
                homeUi.ShowDialog();
            }
            else
            {
                MessageBox.Show("Error User Name Or Password!");
                passwordTextBox.Text = "";
            }
        }

        public void clear()
        {
            userNameTextBox.Text = "";
            passwordTextBox.Text = "";
        }

       
        private void headPanel_MouseUp(object sender, MouseEventArgs e)
        {
            mov = 0;
        }

        private void headPanel_MouseDown(object sender, MouseEventArgs e)
        {
            mov = 1;
            movx = e.X;
            movy = e.Y;
        }

        private void headPanel_MouseMove(object sender, MouseEventArgs e)
        {

            if (mov == 1)
            {
                this.SetDesktopLocation(MousePosition.X - movx, MousePosition.Y - movy);
            }
        }

        private void label2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void ClearButton_Click(object sender, EventArgs e)
        {
            clear();
        }

       
       
    }
}

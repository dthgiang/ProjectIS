using Oracle.ManagedDataAccess.Client;
using Phase_1.Phase_2.UserControls;
using Phase_1.UserControls;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Phase_1
{
    public partial class Admin : Form
    {
        bool sidebarExpand;
        bool taskCollapsed;
        bool profileCollapsed;
        String username;
        OracleConnection connection;
        private void addUserControl(UserControl userControl)
        {
            userControl.Dock = DockStyle.Fill;
            panelContainer.Controls.Clear();
            panelContainer.Controls.Add(userControl);
            userControl.BringToFront();
        }
        public Admin()
        {
            InitializeComponent();
        }
        public Admin(String user, OracleConnection connection)
        {
            InitializeComponent();
            this.connection = connection;
            this.username = user;
        }


        private void button4_Click(object sender, EventArgs e)
        {
            Encryption encryption = new Encryption(username, connection);
            addUserControl(encryption);
        }

        private void button11_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void button12_Click(object sender, EventArgs e)
        {
            if (this.WindowState == FormWindowState.Normal)
            {
                this.WindowState = FormWindowState.Maximized;
            }
            else
            {
                this.WindowState = FormWindowState.Normal;
            }
        }

        private void button13_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void button28_Click(object sender, EventArgs e)
        {
            Admin_UpdateKey l = new Admin_UpdateKey(username, connection);
            addUserControl(l);
        }
    }
}

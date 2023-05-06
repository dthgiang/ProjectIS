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

namespace Phase_1.Phase_2
{
    public partial class Admin : Form
    {
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
        private void button3_Click(object sender, EventArgs e)
        {
            Encryption encryption = new Encryption(username,connection);
            addUserControl(encryption);
        }
    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Oracle.ManagedDataAccess.Client;

namespace Phase_1.UserControls
{
    public partial class Notification : UserControl
    {
        private string username;
        private OracleConnection connection;
        Panel container;
        Dictionary<string, string> obj = new Dictionary<string, string> { { "Giam Doc", "GD" }, { "Truong Phong", "TP" }, { "Nhan Vien", "NV" }, { "All", "NV" } };
        Dictionary<string, string> field = new Dictionary<string, string> { { "Gia Cong", "GC" }, { "San Xuat", "SX" }, { "Mua Ban", "MB" }, { "All", "null" } };
        Dictionary<string, string> region = new Dictionary<string, string> { { "Mien Bac", "MB" }, { "Mien Trung", "MT" }, { "Mien Nam", "MN" }, { "All", "null" } };

        public Notification()
        {
            InitializeComponent();
        }

        public Notification(string user, OracleConnection conn, Panel panelContainer)
        {
            username = user;
            connection = conn;
            container = panelContainer;
            InitializeComponent();

            if (Login.role != "admin")
            {
                sendNotificationButton.Hide();

            } else
            {
                sendNotificationButton.Show();
            }

            Helper.raiseTable(dataGridView1, "select * from OLS_ADMIN.VW_XEMTHONGBAO", connection);
            dataGridView1.Columns[0].Width = 300; // set the width of the first column to 100 pixels

        }

  
       
        private void sendNotificationButton_Click(object sender, EventArgs e)
        {
            AddNotification an = new AddNotification(username, connection);
            //this.Hide();
            Helper.addUserControl(container, an);
            an.Show();

        }
    }
}

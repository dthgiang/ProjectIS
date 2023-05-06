using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Phase_1.Phase_2.UserControls
{
    public partial class Admin_UpdateKey : UserControl
    {
        OracleConnection connection;
        String username;
        public Admin_UpdateKey()
        {
            InitializeComponent();
        }
        public Admin_UpdateKey(String user, OracleConnection connection)
        {
            InitializeComponent();
            this.username = user;
            this.connection = connection;
        }
        private void button1_Click(object sender, EventArgs e)
        {
            String pw= txtPassword.Text;
            String new_key= txtNewKey.Text;
            if (new_key.Length >= 10)
            {
                OracleCommand command = new OracleCommand("select password from ATBM.view_getpw", connection);
                OracleDataReader reader = command.ExecuteReader();

                if (reader.Read())
                {
                    string key = reader.GetString(0);
                    if (key == pw)
                    {
                        try
                        {
                            OracleCommand command_ = new OracleCommand("update atbm.save_key set key='" + new_key + "' where manv='" + username + "'", connection);
                            command_.ExecuteNonQuery();
                            MessageBox.Show("Procedure executed successfully");
                        }
                        catch (OracleException ex)
                        {
                            MessageBox.Show("Error: " + ex.ToString());
                        }
                    }
                }
            }
            else
            {
                MessageBox.Show("The key must be longer than 10 characters");
            }
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void Admin_UpdateKey_Load(object sender, EventArgs e)
        {

        }
    }
}

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
using DatabaseAccess;
namespace Phase_1
{
    public partial class Login : Form
    {
        private static string username;
        private static string role;
        private static OracleConnection connection;
        public Login()
        {
            InitializeComponent();
        }

        private void Login_Load(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        public string authenFunc(OracleConnection connection)
        {
            try
            {
                OracleCommand command = new OracleCommand("select vaitro from ATBM.VW_NHANVIEN", connection);
                OracleDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    string columnName = reader.GetString(0);
                    return columnName;
                }
            }
            catch (OracleException e)
            {
                MessageBox.Show(e.ToString());
            }

            return "admin";
        }
        private void loginButton_Click(object sender, EventArgs e)
        {

            string user = usernameInput.Text;
            string pw = passwordInput.Text;
            // check empty input
            /*
            if (user == "" || pw == "") {
                MessageBox.Show("Please enter all information");
                return;
            }
            */

            connection = Connector.GetConnectionPhase2(user, pw);
            // Check if connection does not succeed
            if (connection == null)
            {
                MessageBox.Show("Something went wrong ! Please try again");
                return;
            }
            username = user;


            this.Hide();

            role = authenFunc(connection);
            System.Diagnostics.Debug.WriteLine(role);

            // select vaitro from vw_nhanvien -> assign to vai tro;
            switch (role)
            {
                case "admin":
                    {
                        TruongPhong l = new TruongPhong(user, connection);
                        l.Show();
                        break;
                    }

                case "Quan ly":
                    {
                        TruongPhong l = new TruongPhong(user, connection);
                        l.Show();
                        break;
                    }
                case "Truong phong":
                    {
                        TruongPhong l = new TruongPhong(user, connection);
                        l.Show();
                        break;
                    }
                case "Nhan su":
                    {
                        TruongPhong l = new TruongPhong(user, connection);
                        l.Show();
                        break;
                    }
                case "Tai chinh":
                    {
                        TruongPhong l = new TruongPhong(user, connection);
                        l.Show();
                        break;
                    }
                case "Giam doc":
                    {
                        TruongPhong l = new TruongPhong(user, connection);
                        l.Show();
                        break;
                    }
                default:
                    { // default se la nhan vien
                        TruongPhong l = new TruongPhong(user, connection);
                        l.Show();
                        break;
                    }
            }
        }

        private void exitButton_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        public static string getUsername()
        {
            return username;
        }

        public static string getRole()
        {
            return role;
        }

        public static OracleConnection getConnection()
        {
            return connection;
        }
    }
}

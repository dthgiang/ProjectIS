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

        /* ALL USER:
        -- Truong de an:    TDA037
        -- Nhan vien:       NV100
        -- Nhan su:         NS015
        -- TaiChinh:        TC010
        -- Truong phong:    TP040
        -- Quan li:         QL0303
        -- admin phase 1:   DB_manage
        -- admin OLS:       OLS_Admin
        -- audit Admi:
        -- security admin:
         */


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


            if (adminCheckBox.Checked)
            {
                Form1 f1 = new Form1(connection);
                f1.Show();
                return;
            }



            role = authenFunc(connection);
            System.Diagnostics.Debug.WriteLine(role);

            // select vaitro from vw_nhanvien -> assign to vai tro;
            switch (role)
            {
                case "admin":
                    {
                        Admin l = new Admin(user, connection);
                        l.Show();
                        break;
                    }

                case "Nhan vien":
                    {
                        NhanVien l = new NhanVien(user, connection);
                        l.Show();
                        break;
                    }

                case "Quan ly":
                    {
                        QuanLyTrucTiep l= new QuanLyTrucTiep(user, connection);
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
                        NhanSu l = new NhanSu(user, connection);
                        l.Show();
                        break;
                    }
                case "Tai chinh":
                    {
                        TaiChinh l = new TaiChinh(user, connection);
                        l.Show();
                        break;
                    }
                case "Ban giam doc":
                    {
                        GiamDoc l = new GiamDoc(user, connection);
                        l.Show();
                        break;
                    }
                case "Truong de an":
                    {
                        TruongDeAn l = new TruongDeAn(user, connection);
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

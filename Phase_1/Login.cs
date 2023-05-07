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
using Phase_1.Phase_1;

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

            System.Diagnostics.Debug.WriteLine(username + " " + pw);

            connection = Connector.GetConnectionPhase2(user, pw);
            // Check if connection does not succeed
            if (connection == null)
            {
                MessageBox.Show("Something went wrong ! Please try again");
                return;
            }
            username = user;

            role = authenFunc(connection);
            System.Diagnostics.Debug.WriteLine(role);

            if (adminCheckBox.Checked)
            {
                if (role.ToUpper() == "ADMIN" )
                {
                    Admin_Phase1 f1 = new Admin_Phase1(connection);
                    f1.Show();
                    return;
                }
               else
                {
                    MessageBox.Show("Sorry you are not Admin !!!");
                    return;
                }
            }

            this.Hide();

            
            // select vaitro from vw_nhanvien -> assign to vai tro;
            switch (role.ToUpper())
            {
                case "ADMIN":
                    {
                        Admin l = new Admin(user, connection);
                        l.Show();
                        break;
                    }

                case "QUAN LI":
                    {
                        QuanLyTrucTiep l= new QuanLyTrucTiep(user, connection);
                        l.Show();
                        break;
                    }
                case "TRUONG PHONG":
                    {
                        TruongPhong l = new TruongPhong(user, connection);
                        l.Show();
                        break;
                    }
                case "NHAN SU":
                    {
                        NhanSu l = new NhanSu(user, connection);
                        l.Show();
                        break;
                    }
                case "TAI CHINH":
                    {
                        TaiChinh l = new TaiChinh(user, connection);
                        l.Show();
                        break;
                    }
                case "BAN GIAM DOC":
                    {
                        GiamDoc l = new GiamDoc(user, connection);
                        l.Show();
                        break;
                    }
                case "GIAM DOC":
                    {
                        GiamDoc l = new GiamDoc(user, connection);
                        l.Show();
                        break;
                    }
                case "TRUONG DE AN":
                    {
                        TruongDeAn l = new TruongDeAn(user, connection);
                        l.Show();
                        break;
                    }
                default:
                    {  //default se la nhan vien
                        Phase_2.NhanVien l = new Phase_2.NhanVien();
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

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

            OracleConnection connection = Connector.GetConnectionPhase2("TP040", "123");
            // Check if connection does not succeed
            if (connection == null) {
                MessageBox.Show("Something went wrong ! Please try again");
                return;
            }
            

            this.Hide();
            TruongPhong l = new TruongPhong(user, connection);
            l.Show();

     

        }

        private void exitButton_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}

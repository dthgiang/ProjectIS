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


namespace Phase_1
{
    public partial class Form4 : Form
    {

        string userID = null;
        string password = null;

        public Form4()
        {
            InitializeComponent();
  
        }
        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void Form4_Load(object sender, EventArgs e)
        {
            // Get the size of the primary screen
            Rectangle workingArea = Screen.PrimaryScreen.WorkingArea;

            // Calculate the location of the form to be centered on the screen
            int x = (workingArea.Width - this.Width) / 2;
            int y = (workingArea.Height - this.Height) / 2;

            // Set the location of the form
            this.Location = new Point(x, y);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            userID = textBox1.Text; password = textBox2.Text;
            userID =  "DB_MANAGER";
            password = "123";
            String connectionString = "Data Source=localhost;Persist Security Info=True;User ID=" + userID + ";Password=" + password;

            try
            {
                OracleConnection connection = new OracleConnection(connectionString);
                connection.Open();

                Form1 f1 = new Form1(connection);
                this.Hide();
                f1.userID = userID;
                f1.password = password;
                f1.Show();

            }

            catch (Exception ex)
            {
                MessageBox.Show("Lỗi khi kết nối đến cơ sở dữ liệu Oracle: " + ex.Message);
            }
            
        }

        private void EXIT_Click(object sender, EventArgs e)
        {
            Application.Exit();
 
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }
    }
}

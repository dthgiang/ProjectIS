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

namespace Phase_1
{
    public partial class Form1 : Form
    {
        OracleConnection connection = null;
        public String userID = null;
        public String password = null;
        public Form1(OracleConnection connection)
        {
            InitializeComponent();
            this.connection = connection;
            
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // Get the size of the primary screen
            Rectangle workingArea = Screen.PrimaryScreen.WorkingArea;

            // Calculate the location of the form to be centered on the screen
            int x = (workingArea.Width - this.Width) / 2;
            int y = (workingArea.Height - this.Height) / 2;

            // Set the location of the form
            this.Location = new Point(x, y);
        }

        private void button1_Click(object sender, EventArgs e) //Form 2
        {
            
            Form2 f2 = new Form2(connection);
            this.Hide();
            f2.Show();
        }

        private void button2_Click(object sender, EventArgs e) //Form 3
        {
            Form3 f3 = new Form3(connection);
            this.Hide();
            f3.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Form4 f4 = new Form4();
            this.Hide();
            f4.Show();
        }
    }
}

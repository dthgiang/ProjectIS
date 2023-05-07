using Oracle.ManagedDataAccess.Client;
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

namespace Phase_1.Phase_1
{
    public partial class Admin_Phase1 : Form
    {
        OracleConnection connection = null;
        private void addUserControl(UserControl userControl)
        {
            userControl.Dock = DockStyle.Fill;
            panel2.Controls.Clear();
            panel2.Controls.Add(userControl);
            userControl.BringToFront();
        }

        public Admin_Phase1()
        {
            InitializeComponent();
        }
        public Admin_Phase1(OracleConnection connection)
        {
            InitializeComponent();
            this.connection = connection;


        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void button4_Click(object sender, EventArgs e)
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
        private void button2_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void button7_Click(object sender, EventArgs e)
        {
            this.Hide();
            Login login = new Login();
            login.Show();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            ManagePriviliege mp = new ManagePriviliege(connection);
            addUserControl(mp);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            ManageObject mo = new ManageObject(connection);
            addUserControl(mo);
        }

        private void button6_Click(object sender, EventArgs e)
        {
            Grant gr = new Grant(connection);
            addUserControl(gr);
        }

        private void panel3_Paint(object sender, PaintEventArgs e)
        {

        }

        

        static Admin_Phase1 _obj;

        public static Admin_Phase1 Instance
        {
            get
            {
                if (_obj == null)
                {
                    _obj = new Admin_Phase1();
                }
                return _obj;
            }
        }

        public Panel PnlContainer
        {
            get { return panel2; }
            set { panel2 = value; }
        }

        //public Button BackButton
        //{
        //    get { return btnBack; }
        //    set { btnBack = value; }
        //}
        private void Admin_Phase1_Load(object sender, EventArgs e)
        {
            //btnBack.Visible = false;
            _obj = this;

      
        }

    }
}

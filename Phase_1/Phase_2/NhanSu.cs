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

namespace Phase_1
{
    public partial class NhanSu : Form
    {
        bool sidebarExpand;
        bool taskCollapsed;
        bool profileCollapsed;
        String username;
        OracleConnection connection;

        public NhanSu()
        {
            InitializeComponent();
        }
        public NhanSu(String user, OracleConnection connection)
        {
            InitializeComponent();
            this.connection = connection;
            this.username = user;
        }
        private void addUserControl(UserControl userControl)
        {
            userControl.Dock = DockStyle.Fill;
            panelContainer.Controls.Clear();
            panelContainer.Controls.Add(userControl);
            userControl.BringToFront();
        }
        private void button11_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void button12_Click(object sender, EventArgs e)
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

        private void button13_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void sidebarTimer_Tick(object sender, EventArgs e)
        {
            if (sidebarExpand)
            {
                sidebar.Width -= 10;
                if (sidebar.Width == sidebar.MinimumSize.Width)
                {
                    sidebarExpand = false;
                    sidebarTimer.Stop();
                }
            }
            else
            {
                sidebar.Width += 10;
                if (sidebar.Width == sidebar.MaximumSize.Width)
                {
                    sidebarExpand = true;
                    sidebarTimer.Stop();
                }
            }
        }


        private void ProfileTimer_Tick(object sender, EventArgs e)
        {
            if (profileCollapsed)
            {
                panelThongTin.Height += 10;
                if (panelThongTin.Height == panelThongTin.MaximumSize.Height)
                {
                    profileCollapsed = false;
                    ProfileTimer.Stop();
                }
            }
            else
            {
                panelThongTin.Height -= 10;
                if (panelThongTin.Height == panelThongTin.MinimumSize.Height)
                {
                    profileCollapsed = true;
                    ProfileTimer.Stop();
                }
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            NhanSu x = new NhanSu();
            this.Hide();
            x.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            AllLayout.showTask(panelContainer);
        }

        private void button23_Click(object sender, EventArgs e)
        {
            AllLayout.showProfile(panelContainer);

        }

        private void button24_Click(object sender, EventArgs e)
        {

        }

        private void button25_Click(object sender, EventArgs e)
        {
            this.Hide();
            Login login = new Login();
            login.Show();
        }

        private void menuButton_Click(object sender, EventArgs e)
        {
            sidebarTimer.Start();
        }
        /*
        private void button4_Click(object sender, EventArgs e)
        {
            TaskTimer.Start();
        }
        */

        private void sidebar_Paint(object sender, PaintEventArgs e)
        {

        }


        private void button21_Click(object sender, EventArgs e)
        {

        }

        private void button6_Click(object sender, EventArgs e)
        {
            NhanSu_EditPhongBan ql = new NhanSu_EditPhongBan(username, connection);
            addUserControl(ql);
        }

        private void button8_Click(object sender, EventArgs e)
        {
            AllLayout.showProject(panelContainer);
        }

        private void button10_Click(object sender, EventArgs e)
        {
            NhanSu_EditNhanVien ql = new NhanSu_EditNhanVien(username, connection);
            addUserControl(ql);
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            ProfileTimer.Start();
        }

        private void btnThongBao_Click(object sender, EventArgs e)
        {
            AllLayout.showNotification(panelContainer);
        }
    }
}
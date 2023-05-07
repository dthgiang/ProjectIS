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
    public partial class NhanVien_PhanCong : UserControl
    {
        public NhanVien_PhanCong()
        {
            InitializeComponent();
            pictureBox1.Hide();
            richTextBox2.Hide();
            pictureBox1.SizeMode = PictureBoxSizeMode.Zoom;

            try
            {
                bool x = Helper.raiseTable(dataGridView1, "select * from ATBM.Vw_PhanCong", Login.getConnection());
                if (!x)
                {
                    richTextBox2.Font = new Font("Cambira", 15, FontStyle.Regular);
                    richTextBox2.ForeColor = Color.LawnGreen;
                    richTextBox2.Text = "Congratulation !! You have no task to do :))";
                    pictureBox1.Show();
                    richTextBox2.Show();
                    dataGridView1.Hide();
                    return;
                }
                dataGridView1.Show();
            }
            catch (OracleException ex)
            {
                System.Diagnostics.Debug.WriteLine("OracleException: " + ex.Message);
            }
        }

        private void NhanVien_PhanCong_Load(object sender, EventArgs e)
        {

        }
    }
}

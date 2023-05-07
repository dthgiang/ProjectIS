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

namespace Phase_1.UserControls
{
    public partial class QLTrucTiep_Task : UserControl
    {
        public QLTrucTiep_Task()
        {
            InitializeComponent();
            pictureBox1.Hide();
            richTextBox2.Hide(); 

            try
            {
                bool x = Helper.raiseTable(dataGridView1, "select * from ATBM.Vw_PhanCong", Login.getConnection());
                System.Diagnostics.Debug.WriteLine(x);
                if (x)
                {
                    richTextBox2.Font = new Font("Cambira", 15, FontStyle.Bold);
                    richTextBox2.ForeColor = Color.LawnGreen;
                    richTextBox2.Text = "Congratulation !! You have no task to do :))";
                    pictureBox1.Show();
                    richTextBox2.Show();
                }
                dataGridView1.Show();
            }
            catch (OracleException ex)
            {
                System.Diagnostics.Debug.WriteLine("OracleException: " + ex.Message);
            }
        }
    }
}

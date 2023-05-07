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
    public partial class TruongPhong_XemNV : UserControl
    {
        public TruongPhong_XemNV()
        {
            InitializeComponent();

            try
            {
                Helper.raiseTable(dataGridView1, "select * from ATBM.Vw_TruongPhongToNhanVien", Login.getConnection());
                dataGridView1.Show();
            }
            catch (OracleException ex)
            {
                System.Diagnostics.Debug.WriteLine("OracleException: " + ex.Message);
            }

        }
    }
}

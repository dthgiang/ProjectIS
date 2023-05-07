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

namespace Phase_1.UserControls
{
    public partial class QLTrucTiep_ThongTinNV : UserControl
    {
        public QLTrucTiep_ThongTinNV()
        {
            InitializeComponent();
            try
            {
                Helper.raiseTable(dataGridView1, "SELECT * FROM ATBM.PH2_View_QLy_XemNhanvien", Login.getConnection());
                dataGridView1.Show();
            }
            catch (OracleException ex)
            {
                System.Diagnostics.Debug.WriteLine("OracleException: " + ex.Message);
            }
        }
    }
}

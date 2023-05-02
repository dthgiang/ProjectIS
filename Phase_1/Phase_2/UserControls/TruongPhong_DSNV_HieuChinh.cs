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
    public partial class TruongPhong_DSNV_HieuChinh : UserControl
    {
        string username;
        OracleConnection connection;
        public TruongPhong_DSNV_HieuChinh()
        {
            InitializeComponent();
        }
        private void raiseTable(DataGridView dgv, string SQLCommand)
        {


            OracleDataAdapter adt = new OracleDataAdapter(SQLCommand, connection);

            DataTable userTable = new DataTable();

            adt.Fill(userTable);
            if (userTable.Rows.Count < 1)
            {
                System.Diagnostics.Debug.WriteLine("here we go again");
                return;
            }

            dgv.DataSource = userTable;
        }
        public TruongPhong_DSNV_HieuChinh(string user, OracleConnection con)
        {
            username = user;
            connection = con;
            InitializeComponent();

            try
            {
                raiseTable(dataGridView1, "select * from ATBM.Vw_TruongPhongToNhanVien");
                dataGridView1.Show();
            }
            catch (OracleException ex)
            {
                System.Diagnostics.Debug.WriteLine("OracleException: " + ex.Message);
            }

            
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}

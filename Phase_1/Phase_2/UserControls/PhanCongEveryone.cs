using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Oracle.ManagedDataAccess.Client;
using System.Data.SqlClient;

namespace Phase_1.Phase_2.UserControls
{
    public partial class PhanCongEveryone: UserControl
    {
        OracleConnection connection = null;
        String Username;
        public PhanCongEveryone()
        {
            InitializeComponent();
        }
        public PhanCongEveryone(string user, OracleConnection connection)
        {
            InitializeComponent();
            this.connection = connection;
            this.Username = user;
        }


        private void PhanCongEveryone_Load(object sender, EventArgs e)
        {
            OracleDataAdapter adt = new OracleDataAdapter("select * from ATBM.PHANCONG", connection);

            DataTable table = new DataTable();

            adt.Fill(table);
            dataGridView1.DataSource = table;
            dataGridView1.AutoResizeColumns(DataGridViewAutoSizeColumnsMode.AllCells);

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Oracle.ManagedDataAccess.Client;

namespace Phase_1.UserControls
{
    public partial class TaiChinh_DSNhanVien : UserControl
    {
        OracleConnection connection;
        String username;
        public TaiChinh_DSNhanVien()
        {
            InitializeComponent();
        }
        public TaiChinh_DSNhanVien(String user, OracleConnection connection)
        {
            InitializeComponent();
            this.username = user;
            this.connection = connection;


        }

        private void TaiChinh_DSNhanVien_Load(object sender, EventArgs e)
        {
            OracleDataAdapter adt = new OracleDataAdapter("select * from ATBM.view_allnhanvien", connection);

            DataTable table = new DataTable();

            adt.Fill(table);
            dataGridView1.DataSource = table;

            dataGridView1.ReadOnly = false;

            dataGridView1.CellEndEdit += new DataGridViewCellEventHandler(dataGridView1_CellValueChanged);
        }
        // Xử lý sự kiện CellEndEdit
        private void dataGridView1_CellValueChanged(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == dataGridView1.Columns["LUONG"].Index)
            {
                string newName = dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();
                
                String id = dataGridView1.Rows[e.RowIndex].Cells["MANV"].Value.ToString();
                string query = "UPDATE ATBM.view_allnhanvien set luong='"+ newName+"' where manv='"+id+"'";

                OracleCommand command = new OracleCommand(query, connection);


                command.ExecuteNonQuery();

            }
            if (e.ColumnIndex == dataGridView1.Columns["PHUCAP"].Index)
            {
                string newName = dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();

                String id = dataGridView1.Rows[e.RowIndex].Cells["MANV"].Value.ToString();
                string query = "UPDATE ATBM.view_allnhanvien set PHUCAP='" + newName + "' where manv='" + id + "'";

                OracleCommand command = new OracleCommand(query, connection);


                command.ExecuteNonQuery();

            }
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}

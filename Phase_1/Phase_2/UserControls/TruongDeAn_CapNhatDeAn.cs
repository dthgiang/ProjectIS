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
using System.Xml.Linq;

namespace Phase_1.UserControls
{
    public partial class TruongDeAn_CapNhatDeAn : UserControl
    {
        OracleConnection connection;
        String username;
        public TruongDeAn_CapNhatDeAn()
        {
            InitializeComponent();
        }
        public TruongDeAn_CapNhatDeAn(String user, OracleConnection connection)
        {
            InitializeComponent();
            this.username = user;
            this.connection = connection;
        }
        private void TruongDeAn_CapNhatDeAn_Load(object sender, EventArgs e)
        {
            OracleDataAdapter adt = new OracleDataAdapter("select * FROM ATBM.DEAN", connection);

            DataTable table = new DataTable();

            adt.Fill(table);
            dataGridView1.DataSource = table;

            dataGridView1.ReadOnly = false;
            dataGridView1.CellEndEdit += new DataGridViewCellEventHandler(dataGridView1_CellValueChanged);

        }
        private void dataGridView1_CellValueChanged(object sender, DataGridViewCellEventArgs e)
        {
            DataGridViewRow row = dataGridView1.Rows[e.RowIndex];

            // Xác định hành động được thực hiện là Update hay Insert
            //string action = (row.Cells["MAPB"].Value == null) ? "Insert" : "Update";
            //if (action=="Update")
            //{
            if (e.ColumnIndex == dataGridView1.Columns["TENDA"].Index)
            {
                string newName = dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();

                String id = dataGridView1.Rows[e.RowIndex].Cells["MADA"].Value.ToString();
                string query = "UPDATE ATBM.DEAN set TENDA='" + newName + "' where MADA='" + id + "'";

                OracleCommand command = new OracleCommand(query, connection);


                command.ExecuteNonQuery();
                return;

            }
            else if (e.ColumnIndex == dataGridView1.Columns["NGAYBD"].Index)
            {
                string newName = dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();

                String id = dataGridView1.Rows[e.RowIndex].Cells["MADA"].Value.ToString();
                string query = "UPDATE ATBM.DEAN set NGAYBD=TO_DATE('" + newName + "','YYYY-MM-DD') where MADA='" + id + "'";

                OracleCommand command = new OracleCommand(query, connection);


                command.ExecuteNonQuery();
                return;
            }
            else if (e.ColumnIndex == dataGridView1.Columns["PHONG"].Index)
            {
                string newName = dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();

                String id = dataGridView1.Rows[e.RowIndex].Cells["MADA"].Value.ToString();
                string query = "UPDATE ATBM.DEAN set PHONG=" + newName + " where MADA='" + id+"'";

                OracleCommand command = new OracleCommand(query, connection);


                command.ExecuteNonQuery();
                return;
            }
            else if (e.ColumnIndex == dataGridView1.Columns["TRUONGDEAN"].Index)
            {
                string newName = dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();

                String id = dataGridView1.Rows[e.RowIndex].Cells["MADA"].Value.ToString();
                string query = "UPDATE ATBM.DEAN set TRUONGDEAN='" + newName + "' where MADA='" + id + "'";

                OracleCommand command = new OracleCommand(query, connection);


                command.ExecuteNonQuery();
                return;
            }
            //}
            else if (e.ColumnIndex == dataGridView1.Columns["MADA"].Index)
            {
                String MADA = dataGridView1.Rows[e.RowIndex].Cells["MADA"].Value.ToString();

                String sql = "insert into atbm.DEAN values ('" + MADA + "',null,null,NULL,NULL)";
                OracleCommand command = new OracleCommand(sql, connection);


                command.ExecuteNonQuery();
                return;
            }


        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (dataGridView1.SelectedRows.Count > 0)
            {
                if (MessageBox.Show("Bạn có chắc muốn xóa dòng này?", "Xác nhận xóa", MessageBoxButtons.YesNo) == DialogResult.Yes)
                {

                        DataGridViewRow Row = dataGridView1.SelectedRows[0];


                        String MADA = Row.Cells["MADA"].Value.ToString();
                        String sql = "delete atbm.DEAN where MADA='" + MADA + "'";
                        OracleCommand command = new OracleCommand(sql, connection);
                        command.ExecuteNonQuery();
                        dataGridView1.Rows.Remove(Row);
                    
                    
                }
            }
        }
        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == dataGridView1.Columns["IsDelete"].Index && e.RowIndex >= 0)
            {
                if (MessageBox.Show("Bạn có chắc muốn xóa dòng này?", "Xác nhận xóa", MessageBoxButtons.YesNo) == DialogResult.Yes)
                {
                    int rowIndex = e.RowIndex;

                    String MADA = dataGridView1.Rows[e.RowIndex].Cells["MADA"].Value.ToString();

                    String sql = "delete atbm.DEAN where MaDA='" + MADA + "'";
                    OracleCommand command = new OracleCommand(sql, connection);
                    command.ExecuteNonQuery();
                    dataGridView1.Rows.RemoveAt(rowIndex);
                }

            }
        }



    }
}

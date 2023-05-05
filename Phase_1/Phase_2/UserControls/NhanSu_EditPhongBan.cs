using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections;
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
    public partial class NhanSu_EditPhongBan : UserControl
    {
        OracleConnection connection;
        String username;
        public NhanSu_EditPhongBan()
        {
            InitializeComponent();
        }
        public NhanSu_EditPhongBan(String user, OracleConnection connection)
        {
            InitializeComponent();
            this.username = user;
            this.connection = connection;
        }
        private void NhanSu_EditPhongBan_Load(object sender, EventArgs e)
        {
            OracleDataAdapter adt = new OracleDataAdapter("select MAPB, TENPB, TRPHG from ATBM.phongban", connection);

            DataTable table = new DataTable();

            adt.Fill(table);
            dataGridView1.DataSource = table;

            dataGridView1.ReadOnly = false;

            dataGridView1.CellEndEdit += new DataGridViewCellEventHandler(dataGridView1_CellValueChanged);
            //dataGridView1.CellEndEdit += new DataGridViewCellEventHandler(dataGridView1_RowsAdded);

        }
        // Xử lý sự kiện CellValueChanged của datagridview để lưu dữ liệu khi người dùng chỉnh sửa
        private void dataGridView1_CellValueChanged(object sender, DataGridViewCellEventArgs e)
        {
            DataGridViewRow row = dataGridView1.Rows[e.RowIndex];

            // Xác định hành động được thực hiện là Update hay Insert
            //string action = (row.Cells["MAPB"].Value == null) ? "Insert" : "Update";
            //if (action=="Update")
            //{
                if (e.ColumnIndex == dataGridView1.Columns["TENPB"].Index)
                {
                    string newName = dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();

                    String id = dataGridView1.Rows[e.RowIndex].Cells["MAPB"].Value.ToString();
                    string query = "UPDATE ATBM.PHONGBAN set TENPB='" + newName + "' where MAPB=" + id;

                    OracleCommand command = new OracleCommand(query, connection);


                    command.ExecuteNonQuery();
                    return;

                }
                else if (e.ColumnIndex == dataGridView1.Columns["TRPHG"].Index)
                {
                    string newName = dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();

                    String id = dataGridView1.Rows[e.RowIndex].Cells["MAPB"].Value.ToString();
                    string query = "UPDATE ATBM.PHONGBAN set TRPHG='" + newName + "' where MAPB=" + id;

                    OracleCommand command = new OracleCommand(query, connection);


                    command.ExecuteNonQuery();
                    return;
                }
            //}
                else if (e.ColumnIndex == dataGridView1.Columns["MAPB"].Index)
                {
                    String mapb = dataGridView1.Rows[e.RowIndex].Cells["MAPB"].Value.ToString();
                    //String tenpb = row.Cells["TENPB"].Value.ToString();
                    //String trphg = row.Cells["TRPHG"].Value.ToString();
                    String sql = "insert into atbm.phongban values (" + mapb + ",'null','null')";
                    OracleCommand command = new OracleCommand(sql, connection);


                    command.ExecuteNonQuery();
                    return;
                }
            

        }
        
        private void dataGridView1_RowsAdded(object sender, DataGridViewRowsAddedEventArgs e)
        {
            // Kiểm tra nếu dòng mới được thêm vào là dòng cuối cùng của DataGridView
            DataGridViewRow row = dataGridView1.Rows[e.RowIndex];

            // Xác định hành động được thực hiện là Update hay Insert
            string action = (row.Cells["MAPB"].Value == null) ? "Insert" : "Update";
            if (action == "Insert")
            { 
                String mapb = row.Cells["MAPB"].Value.ToString();
                String tenpb = row.Cells["TENPB"].Value.ToString();
                String trphg = row.Cells["TRPHG"].Value.ToString();
                String sql = "insert into atbm.phongban(MAPB) values (" + mapb + ")";
                OracleCommand command = new OracleCommand(sql, connection);


                command.ExecuteNonQuery();
                return;
            }
        }



    }
}

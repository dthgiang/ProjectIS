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
    public partial class NhanSu_EditNhanVien : UserControl
    {
        OracleConnection connection;
        String username;
        public NhanSu_EditNhanVien()
        {
            InitializeComponent();
        }
        public NhanSu_EditNhanVien(String user, OracleConnection connection)
        {
            InitializeComponent();
            this.username = user;
            this.connection = connection;
        }
        private void NhanSu_EditNhanVien_Load(object sender, EventArgs e)
        {
            OracleDataAdapter adt = new OracleDataAdapter("select * FROM ATBM.NS_XEMNHANVIEN", connection);

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
            if (e.ColumnIndex == dataGridView1.Columns["TENNV"].Index)
            {
                string newName = dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();

                String id = dataGridView1.Rows[e.RowIndex].Cells["MANV"].Value.ToString();
                string query = "UPDATE ATBM.NS_XEMNHANVIEN set TENNV='" + newName + "' where MANV='" + id+"'";

                OracleCommand command = new OracleCommand(query, connection);


                command.ExecuteNonQuery();
                return;

            }
            else if (e.ColumnIndex == dataGridView1.Columns["PHAI"].Index)
            {
                string newName = dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();

                String id = dataGridView1.Rows[e.RowIndex].Cells["MANV"].Value.ToString();
                string query = "UPDATE ATBM.NS_XEMNHANVIEN set PHAI='" + newName + "' where MANV='" + id+"'";

                OracleCommand command = new OracleCommand(query, connection);


                command.ExecuteNonQuery();
                return;
            }
            else if (e.ColumnIndex == dataGridView1.Columns["NGAYSINH"].Index)
            {
                string newName = dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();

                String id = dataGridView1.Rows[e.RowIndex].Cells["MANV"].Value.ToString();
                string query = "UPDATE ATBM.NS_XEMNHANVIEN set NGAYSINH=TO_DATE('" + newName + "') where MANV='" + id+"'";

                OracleCommand command = new OracleCommand(query, connection);


                command.ExecuteNonQuery();
                return;
            }
            else if (e.ColumnIndex == dataGridView1.Columns["DIACHI"].Index)
            {
                string newName = dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();

                String id = dataGridView1.Rows[e.RowIndex].Cells["MANV"].Value.ToString();
                string query = "UPDATE ATBM.NS_XEMNHANVIEN set DIACHI='" + newName + "' where MANV='" + id+"'";

                OracleCommand command = new OracleCommand(query, connection);


                command.ExecuteNonQuery();
                return;
            }
            else if (e.ColumnIndex == dataGridView1.Columns["SODT"].Index)
            {
                string newName = dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();

                String id = dataGridView1.Rows[e.RowIndex].Cells["MANV"].Value.ToString();
                string query = "UPDATE ATBM.NS_XEMNHANVIEN set SODT='" + newName + "' where MANV='" + id+"'";

                OracleCommand command = new OracleCommand(query, connection);


                command.ExecuteNonQuery();
                return;
            }
            else if (e.ColumnIndex == dataGridView1.Columns["VAITRO"].Index)
            {
                string newName = dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();

                String id = dataGridView1.Rows[e.RowIndex].Cells["MANV"].Value.ToString();
                string query = "UPDATE ATBM.NS_XEMNHANVIEN set VAITRO='" + newName + "' where MANV='" + id+"'";

                OracleCommand command = new OracleCommand(query, connection);


                command.ExecuteNonQuery();
                return;
            }
            else if (e.ColumnIndex == dataGridView1.Columns["MANQL"].Index)
            {
                string newName = dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();

                String id = dataGridView1.Rows[e.RowIndex].Cells["MANV"].Value.ToString();
                string query = "UPDATE ATBM.NS_XEMNHANVIEN set MANQL='" + newName + "' where MANV='" + id+"'";

                OracleCommand command = new OracleCommand(query, connection);


                command.ExecuteNonQuery();
                return;
            }
            else if (e.ColumnIndex == dataGridView1.Columns["PHG"].Index)
            {
                string newName = dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();

                String id = dataGridView1.Rows[e.RowIndex].Cells["MANV"].Value.ToString();
                string query = "UPDATE ATBM.NS_XEMNHANVIEN set PHG=" + newName + " where MANV='" + id+"'";

                OracleCommand command = new OracleCommand(query, connection);


                command.ExecuteNonQuery();
                return;
            }
            else if (e.ColumnIndex == dataGridView1.Columns["KHUVUC"].Index)
            {
                string newName = dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();

                String id = dataGridView1.Rows[e.RowIndex].Cells["MANV"].Value.ToString();
                string query = "UPDATE ATBM.NS_XEMNHANVIEN set KHUVUC='" + newName + "' where MANV='" + id+"'";

                OracleCommand command = new OracleCommand(query, connection);


                command.ExecuteNonQuery();
                return;
            }
            else if (e.ColumnIndex == dataGridView1.Columns["LINHVUC"].Index)
            {
                string newName = dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();

                String id = dataGridView1.Rows[e.RowIndex].Cells["MANV"].Value.ToString();
                string query = "UPDATE ATBM.NS_XEMNHANVIEN set LINHVUC='" + newName + "' where MANV='" + id+"'";

                OracleCommand command = new OracleCommand(query, connection);


                command.ExecuteNonQuery();
                return;
            }

            else if (e.ColumnIndex == dataGridView1.Columns["MANV"].Index)
            {
                String MANV = dataGridView1.Rows[e.RowIndex].Cells["MANV"].Value.ToString();
                String sql = "insert into ATBM.NS_XEMNHANVIEN values ('" + MANV + "',NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL)";
                OracleCommand command = new OracleCommand(sql, connection);


                command.ExecuteNonQuery();
                return;
            }


        }
    }
}
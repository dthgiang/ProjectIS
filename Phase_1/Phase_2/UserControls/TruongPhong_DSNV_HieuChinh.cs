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
        String updateMADA, updateNV, updateThoiGian;    
        OracleConnection connection;
        public TruongPhong_DSNV_HieuChinh()
        {
            InitializeComponent();

            try
            {
                connection = Login.getConnection();
                Helper.raiseTable(dataGridView1, "select * from ATBM.Vw_TruongPhongToPhanCong", connection);
                dataGridView1.Show();
            }
            catch (OracleException ex)
            {
                System.Diagnostics.Debug.WriteLine("OracleException: " + ex.Message);
            }
        }

        private void refeshBtn_Click(object sender, EventArgs e)
        {
            Helper.raiseTable(dataGridView1, "select * from ATBM.Vw_TruongPhongToPhanCong", connection);
            dataGridView1.Show();
        }

        private void insertBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (empIdTxt.Text == updateNV && prjIdTxt.Text == updateMADA)
                {
                    MessageBox.Show("Không thể thêm Phân công đã có sẵn vào CSDL!!!");
                    return;
                }

                String query = "INSERT INTO ATBM.Vw_TruongPhongToPhanCong VALUES('" + empIdTxt.Text + "', '" + prjIdTxt.Text + "', '" + timeTxt.Text + "')";
                MessageBox.Show(query);
                OracleCommand cmd = new OracleCommand(query, connection);

                if (cmd.ExecuteNonQuery() > 0)
                    MessageBox.Show("Thêm thành công!!!");
                else
                    MessageBox.Show("Thêm thất bại!!!");
            }
            catch (OracleException ex)
            {
                System.Diagnostics.Debug.WriteLine("OracleException: " + ex.Message);
            }
        }

        private void deleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                String query = "DELETE FROM ATBM.Vw_TruongPhongToPhanCong WHERE MANV = '" + empIdTxt.Text + "' AND MADA = '" + prjIdTxt.Text + "'AND THOIGIAN = '" + timeTxt.Text + "'";
                //query = "DELETE FROM ATBM.Vw_TruongPhongToPhanCong WHERE MANV = 'NV113' AND MADA = 'DA201'AND THOIGIAN = '10/03/2022'";
                MessageBox.Show(query);
                OracleCommand cmd = new OracleCommand(query, connection);

                if (cmd.ExecuteNonQuery() > 0)
                    MessageBox.Show("Xóa thành công!!!");
                else
                    MessageBox.Show("Xóa thất bại!!!");
            }
            catch (OracleException ex)
            {
                System.Diagnostics.Debug.WriteLine("OracleException: " + ex.Message);
            }
        }

 

        private void updateBtn_Click(object sender, EventArgs e)
        {
            try
            {
                String query = "UPDATE ATBM.Vw_TruongPhongToPhanCong SET MANV = '" + empIdTxt.Text + "', MADA = '" + prjIdTxt.Text + "', THOIGIAN = '" + timeTxt.Text +
                                "' WHERE MANV = '" + updateNV + "' AND MADA = '" + updateMADA + "'";
                //MessageBox.Show(query);
                OracleCommand cmd = new OracleCommand(query, connection);

                if (cmd.ExecuteNonQuery() > 0)
                    MessageBox.Show("Cập nhật thành công!!!");
                else
                    MessageBox.Show("Cập nhật thất bại!!!");

            }
            catch (OracleException ex)
            {
                System.Diagnostics.Debug.WriteLine("OracleException: " + ex.Message);
            }
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value != null)
            {
                updateNV = empIdTxt.Text = dataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString();
                updateMADA = prjIdTxt.Text = dataGridView1.Rows[e.RowIndex].Cells[1].Value.ToString();
                updateThoiGian = timeTxt.Text = dataGridView1.Rows[e.RowIndex].Cells[2].Value.ToString();
            }
        }

        //private void raiseTable(DataGridView dgv, string SQLCommand)
        //{


        //    OracleDataAdapter adt = new OracleDataAdapter(SQLCommand, connection);

        //    DataTable userTable = new DataTable();

        //    adt.Fill(userTable);
        //    if (userTable.Rows.Count < 1)
        //    {
        //        System.Diagnostics.Debug.WriteLine("here we go again");
        //        return;
        //    }

        //    dgv.DataSource = userTable;
        //}
        //public TruongPhong_DSNV_HieuChinh(string user, OracleConnection con)
        //{
        //    username = user;
        //    connection = con;
        //    InitializeComponent();

        //    try
        //    {
        //        raiseTable(dataGridView1, "select * from ATBM.Vw_TruongPhongToNhanVien");
        //        dataGridView1.Show();
        //    }
        //    catch (OracleException ex)
        //    {
        //        System.Diagnostics.Debug.WriteLine("OracleException: " + ex.Message);
        //    }
        //}

        //private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        //{

        //}
    }
}

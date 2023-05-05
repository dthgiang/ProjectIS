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

            this.Size = new System.Drawing.Size(800, 600); // Kích thước của form
            this.Location = new System.Drawing.Point(0, 0); // Vị trí của form (tọa độ x, y)

            // Thiết lập kích thước của màn hình
            Screen screen = Screen.PrimaryScreen; // Lấy màn hình chính
            int screenWidth = screen.WorkingArea.Width; // Lấy chiều rộng của màn hình
            int screenHeight = screen.WorkingArea.Height; // Lấy chiều cao của màn hình
            int screenLeft = screen.WorkingArea.Left; // Lấy tọa độ x của màn hình
            int screenTop = screen.WorkingArea.Top; // Lấy tọa độ y của màn hình

            // Thiết lập kích thước và vị trí của form để nó chiếm cả màn hình
            this.Size = new System.Drawing.Size(screenWidth, screenHeight);
            this.Location = new System.Drawing.Point(screenLeft, screenTop);
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
            // Kiểm tra nếu cột Name đã thay đổi
            if (e.ColumnIndex == dataGridView1.Columns["LUONG"].Index)
            {
                // Lấy giá trị mới từ ô đã thay đổi
                string newName = dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();
                
                // Lấy giá trị ID của hàng tương ứng
                String id = dataGridView1.Rows[e.RowIndex].Cells["MANV"].Value.ToString();
                // Cập nhật dữ liệu vào cơ sở dữ liệu
                string query = "UPDATE ATBM.view_allnhanvien set luong='"+ newName+"' where manv='"+id+"'";

                OracleCommand command = new OracleCommand(query, connection);


                command.ExecuteNonQuery();

            }
            if (e.ColumnIndex == dataGridView1.Columns["PHUCAP"].Index)
            {
                // Lấy giá trị mới từ ô đã thay đổi
                string newName = dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();

                // Lấy giá trị ID của hàng tương ứng
                String id = dataGridView1.Rows[e.RowIndex].Cells["MANV"].Value.ToString();
                // Cập nhật dữ liệu vào cơ sở dữ liệu
                string query = "UPDATE ATBM.view_allnhanvien set PHUCAP='" + newName + "' where manv='" + id + "'";

                OracleCommand command = new OracleCommand(query, connection);


                command.ExecuteNonQuery();

            }
        }



    }
}

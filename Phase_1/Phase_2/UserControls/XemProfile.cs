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
    public partial class XemProfile : UserControl
    {
        public XemProfile()
        {
            InitializeComponent();

            try
            {
                OracleCommand cmd = new OracleCommand("select * from ATBM.VW_NHANVIEN", Login.getConnection());
                OracleDataReader reader;
                reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    empID.Text = reader["MANV"].ToString();
                    fullName.Text = reader["TENNV"].ToString();
                    gender.Text = reader["PHAI"].ToString();
                    DOB.Text = reader["NGAYSINH"].ToString();
                    address.Text = reader["DIACHI"].ToString();
                    phone.Text = reader["SODT"].ToString();
                    salary.Text = reader["LUONG"].ToString();
                    bonus.Text = reader["PHUCAP"].ToString();
                    role.Text = reader["VAITRO"].ToString();
                    managed.Text = reader["MANQL"].ToString();
                    deptID.Text = reader["PHG"].ToString();
                }
            }
            catch (OracleException ex)
            {
                System.Diagnostics.Debug.WriteLine("OracleException: " + ex.Message);
            }
        }

        private void XemProfile_Load(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void idLabel_Click(object sender, EventArgs e)
        {

        }

        private void XemProfile_Load(object sender, EventArgs e)
        {

        }
    }
}

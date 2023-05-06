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
            avatarPictureBox.SizeMode = PictureBoxSizeMode.AutoSize;

            try
            {
                OracleCommand cmd = new OracleCommand("select * from ATBM.VW_NHANVIEN", Login.getConnection());
                OracleDataReader reader;
                reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    IDLabel.Text = reader["MANV"].ToString();
                    nameLabel.Text = reader["TENNV"].ToString();
                    genderLabel.Text = reader["PHAI"].ToString();
                    DOBLabel.Text = reader["NGAYSINH"].ToString();
                    addressLabel.Text = reader["DIACHI"].ToString();
                    phoneLabel.Text = reader["SODT"].ToString();
                    salaryLabel.Text = reader["LUONG"].ToString();
                    bonusLabel.Text = reader["PHUCAP"].ToString();
                    roleLabel.Text = reader["VAITRO"].ToString();
                    managedLabel.Text = reader["MANQL"].ToString();
                    departmentLabel.Text = reader["PHG"].ToString();
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

    }

}

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
        private string DOB;
        public XemProfile()
        {
            InitializeComponent();
            dobTimePicker.Hide();
            addressTextBox.Hide();
            phoneTextBox.Hide();
            editProfileButton.Show();
            saveButton.Hide();
            dobEditLabel.Hide();

            avatarPictureBox.SizeMode = PictureBoxSizeMode.AutoSize;
            IDLabel.Font = new Font("Cambria", 10, FontStyle.Bold);
            nameLabel.Font = new Font("Cambria", 10, FontStyle.Regular);
            genderLabel.Font = new Font("Cambria", 10, FontStyle.Regular);
            DOBLabel.Font = new Font("Cambria", 10, FontStyle.Regular);
            addressLabel.Font = new Font("Cambria", 10, FontStyle.Regular);
            phoneLabel.Font = new Font("Cambria", 10, FontStyle.Regular);
            salaryLabel.Font = new Font("Cambria", 10, FontStyle.Regular);
            bonusLabel.Font = new Font("Cambria", 10, FontStyle.Regular);
            roleLabel.Font = new Font("Cambria", 10, FontStyle.Bold);
            managedLabel.Font = new Font("Cambria", 10, FontStyle.Regular);
            departmentLabel.Font = new Font("Cambria", 10, FontStyle.Regular);
            loadInfor();
            DOB = DOBLabel.Text;

        }

        public void loadInfor()
        {
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
                    DOBLabel.Text = DOBLabel.Text.Substring(0, DOBLabel.Text.IndexOf(' '));

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

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void editProfileButton_Click(object sender, EventArgs e)
        {
            dobTimePicker.Show();
            addressTextBox.Show();
            phoneTextBox.Show();
            editProfileButton.Hide();
            saveButton.Show();
            dobEditLabel.Show();

            phoneTextBox.Text = "Enter your new phone";
            addressTextBox.Text = "Enter your new address";


        }

        private void saveButton_Click(object sender, EventArgs e)
        {


            dobTimePicker.Hide();
            addressTextBox.Hide();
            phoneTextBox.Hide();
            editProfileButton.Show();
            saveButton.Hide();
            dobEditLabel.Hide();
            string dob, phone, address;
            dob = DOB;
            phone = phoneTextBox.Text == "Enter your new phone" ? phoneLabel.Text : phoneTextBox.Text;
            address = addressTextBox.Text == "Enter your new address" ? addressLabel.Text : addressTextBox.Text;

            System.Diagnostics.Debug.WriteLine(dob + " " + phone + " " + address);


            phoneTextBox.Text = "";
            addressTextBox.Text = "";

            try
            {
                OracleCommand command = new OracleCommand(DatabaseAccess.Connector.getOwner() + ".updateNhanVien", Login.getConnection());
                // set the command type to stored procedure
                command.CommandType = CommandType.StoredProcedure;

                // create input parameter

                OracleParameter ngaySinh = new OracleParameter("p_ngaySinh", OracleDbType.Varchar2, ParameterDirection.Input);
                ngaySinh.Value = dob;

                OracleParameter sodt = new OracleParameter("p_soDT", OracleDbType.Varchar2, ParameterDirection.Input);
                sodt.Value = phone;

                OracleParameter diaChi = new OracleParameter("p_diaChi", OracleDbType.Varchar2, ParameterDirection.Input);
                diaChi.Value = address;
                // add parameters to the command object
                command.Parameters.Add(ngaySinh);
                command.Parameters.Add(sodt);
                command.Parameters.Add(diaChi);
                

                // execute the command
                command.ExecuteNonQuery();
                MessageBox.Show("Update successful");
                loadInfor();

            }
            catch (OracleException ex)
            {
                MessageBox.Show(ex.ToString());
            }


        }

        private void dobTimePicker_ValueChanged(object sender, EventArgs e)
        {
            DOB = dobTimePicker.Value.ToString("dd-mm-yyyy");
        }
    }

}

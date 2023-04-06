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
using Oracle.ManagedDataAccess.Client;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.Button;
using System.Collections.Specialized;
using System.Data.Common;
using System.Collections.ObjectModel;
using System.Windows.Input;

namespace Phase_1
{
    public partial class Form2 : Form
    {
        OracleConnection con = null;
        String strCBB = null;
        public Form2(OracleConnection connection)
        {
            InitializeComponent();
            this.con = connection;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Form1 f1 = new Form1();
            this.Hide();
            f1.Show();
        }

        private void Form2_Load(object sender, EventArgs e)
        {
            // Get the size of the primary screen
            Rectangle workingArea = Screen.PrimaryScreen.WorkingArea;

            // Calculate the location of the form to be centered on the screen
            int x = (workingArea.Width - this.Width) / 2;
            int y = (workingArea.Height - this.Height) / 2;

            // Set the location of the form
            this.Location = new Point(x, y);
            dataGridView1.Hide();
            lbl_tablename.Hide();
            txt_name.Hide();
            dataGridView2.Hide();
            bt_createtable.Hide();
            lbl_username.Hide();
            bt_createuser.Hide();
            label2.Hide();
            label2.Hide();
            bt_createrole.Hide();
        }

        private void button1_Click(object sender, EventArgs e)
        {

            strCBB = comboBox1.Text;
            String strSQL = null;
            if (strCBB == "User")
            {
                strSQL = "select * from HIENTHU.NHANVIEN ";
            }
            else if (strCBB == "Role")
            {
                strSQL = "exec ";
            }
            else if (strCBB == "Table")
            {
                strSQL = "exec ";
            }
            else if (strCBB == "View")
            {
                strSQL = "exec ";
            }

            OracleDataAdapter da = new OracleDataAdapter(strSQL, con);
            //OracleCommandBuilder builder = new OracleCommandBuilder(da);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView1.DataSource = dt;
            dataGridView1.Show();

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            dataGridView1.Hide();
            strCBB = comboBox1.Text;


            if (strCBB == "Table")
            {
                lbl_tablename.Show();
                txt_name.Show();
                dataGridView2.Show();
                bt_createtable.Show();
                lbl_username.Hide();
                bt_createuser.Hide();
                label2.Hide();
                bt_createrole.Hide();
            }
            else if (strCBB == "User")
            {
                strCBB = comboBox1.Text;
                lbl_tablename.Hide();
                txt_name.Show();
                dataGridView2.Hide();
                bt_createtable.Hide();
                lbl_username.Show();
                bt_createuser.Show();
                label2.Hide();
                bt_createrole.Hide();
            }
            else if (strCBB == "Role")
            {
                lbl_username.Hide();
                txt_name.Show();
                label2.Show();
                bt_createuser.Hide();
                bt_createrole.Show();
                dataGridView2.Hide();
                lbl_tablename.Hide();
            }

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void bt_createtable_Click(object sender, EventArgs e)
        {
            String tablename = "";
            tablename = txt_name.Text;
            String strSQL = "";
            strSQL = "create table " + tablename + " ( ";
            String name = "";
            String datatype = "";
 
            foreach (DataGridViewRow row in dataGridView2.Rows)
            {
                if (!row.IsNewRow)
                {

                    name = (String)row.Cells["Name"].Value;
                    datatype = (String)row.Cells["DataType"].Value;


                    if (name != null & datatype != null )
                    {
                        strSQL += name + " " + datatype;
                    }
                    if (PrimaryKey.Equals(DataGridViewTriState.True))
                    {
                        strSQL += " primary key";
                    }
                        strSQL += ",";
                }

            }
            strSQL = strSQL.Substring(0, strSQL.Length - 1);
            strSQL += ")";

            using (OracleCommand command = new OracleCommand(strSQL, con))
            {
                int n = command.ExecuteNonQuery();

            }


            


        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void button4_Click(object sender, EventArgs e)
        {
            dataGridView1.Hide();
            strCBB = comboBox1.Text;
            lbl_tablename.Hide();
            txt_name.Show();
            dataGridView2.Hide();
            bt_createtable.Hide();
            lbl_username.Show();
            bt_createuser.Show();

            String user_name = null;
            user_name= txt_name.Text;

            String strSQL = null;
            strSQL = "ALTER SESSION SET \"_ORACLE_SCRIPT\"=TRUE ";


            using (OracleCommand command = new OracleCommand(strSQL, con))
            {
                int n = command.ExecuteNonQuery();

            }
            strSQL = "create user " + user_name + " IDENTIFIED BY " + user_name;
            using (OracleCommand command = new OracleCommand(strSQL, con))
            {
                int n = command.ExecuteNonQuery();

            }
        }

        private void bt_createrole_Click(object sender, EventArgs e)
        {
            String role_name = null;
            role_name = txt_name.Text;

            String strSQL = null;
            strSQL = "ALTER SESSION SET \"_ORACLE_SCRIPT\"=TRUE ";



            using (OracleCommand command = new OracleCommand(strSQL, con))
            {
                int n = command.ExecuteNonQuery();

            }
            strSQL = "create role " + role_name;
            using (OracleCommand command = new OracleCommand(strSQL, con))
            {
                int n = command.ExecuteNonQuery();

            }
        }

        private void dataGridView2_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}

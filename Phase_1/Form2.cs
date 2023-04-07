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

        private string sqlQueryView(string viewName, string owner)
        {
            return "select * from " + owner + "." + viewName;
        }

        private void raiseTable(DataGridView dgv, string SQLCommand)
        {
            OracleDataAdapter adt = new OracleDataAdapter(SQLCommand, con);

            DataTable userTable = new DataTable();

            adt.Fill(userTable);
            dgv.DataSource = userTable;
        }
        private void button1_Click(object sender, EventArgs e)
        {

            strCBB = filterBox.Text.ToUpper();
            string view = "PH1_VIEW_ALL_" + strCBB + "S";
            String strSQL = sqlQueryView(view, "GOD");
            
            
            try{
                raiseTable(dataGridView1, strSQL);
                dataGridView1.Show();
            }
            catch (OracleException ex){
                Console.WriteLine("OracleException: " + ex.Message);
            }
           

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            dataGridView1.Hide();
            strCBB = filterBox.Text;


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
                strCBB = filterBox.Text;
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
            strCBB = filterBox.Text;
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

        private void label2_Click_1(object sender, EventArgs e)
        {

        }

        private void dropButton_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Are you sure to drop this one", "Confirmation", MessageBoxButtons.YesNo);
            if (result == DialogResult.Yes)
            {
                if (dataGridView1.SelectedRows.Count > 0)
                {
                    DataGridViewRow selectedRow = dataGridView1.SelectedRows[0];
                    string mode = filterBox.Text;
                    string names = mode + "Name";
                    string choose = selectedRow.Cells[names].Value.ToString();
   

                    try{
                        
                        OracleCommand command = new OracleCommand("ph1_dropUserOrRole", con);


                        command.CommandType = System.Data.CommandType.StoredProcedure;

                        // Add input parameter(s) to the command
                        command.Parameters.Add("p_userOrRole", OracleDbType.Varchar2).Value = choose;
                        command.Parameters.Add("p_mode", OracleDbType.Varchar2).Value = mode;
                        System.Diagnostics.Debug.WriteLine(choose + " - " + mode);
                        // Get the value of the output parameter(s)
                        int resultEx = command.ExecuteNonQuery();
                        System.Diagnostics.Debug.WriteLine(resultEx);

                        if (resultEx >= 0){
                            // The stored procedure executed successfully
                            MessageBox.Show(mode + " dropped", "Message", MessageBoxButtons.OK);
                        }
                        else {
                            // The stored procedure did not execute successfully
                            MessageBox.Show("Something went wrong! please try again", "Message", MessageBoxButtons.OK);
                        }
                    }
                    catch (OracleException ex)
                    {
                        Console.WriteLine("OracleException: " + ex.Message);
                    }
                }
                else
                {
                    MessageBox.Show("Please choose the object", "Message", MessageBoxButtons.OK);

                }
            }
        }


        private void dataGridView1_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            if (dataGridView1.SelectedRows.Count > 0)
            {
                DataGridViewRow selectedRow = dataGridView1.SelectedRows[0];
                string names = filterBox.Text + "Name";
                objectNameTextBox.Text = selectedRow.Cells[names].Value.ToString();

            }
        }

        private void filterBox_SelectedIndexChanged(object sender, EventArgs e)
        {

            strCBB = filterBox.SelectedItem.ToString().ToUpper();
            string view = "PH1_VIEW_ALL_" + strCBB + "S";
            String strSQL = sqlQueryView(view, "GOD");


            try
            {
                raiseTable(dataGridView1, strSQL);
                dataGridView1.Show();
            }
            catch (OracleException ex)
            {
                Console.WriteLine("OracleException: " + ex.Message);
            }

        }
    }
}

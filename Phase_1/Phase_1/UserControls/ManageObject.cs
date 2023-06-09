﻿using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Phase_1.UserControls;
using Phase_1.Phase_1;


namespace Phase_1
{
    public partial class ManageObject : UserControl
    {
        OracleConnection con = null;
        String strCBB = null;
        public ManageObject(OracleConnection connection)
        {
            InitializeComponent();
            this.con = connection;
            filterBox.Text = "Table";

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
            label2.Hide();
            label2.Hide();
            bt_createrole.Hide();
            pwLabel.Hide();
            pwTextBox.Hide();

            objectNameTextBox.Show();
            detailButton.Show();
            dropButton.Show();
            objectLabel.Show();

            string temp = filterBox.Text.ToUpper();
            strCBB = temp == "" ? "Table" : temp;

            string view = "PH1_VIEW_ALL_" + strCBB + "S";
            String strSQL = sqlQueryView(view, DatabaseAccess.Connector.getOwner());


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
            String strSQL = sqlQueryView(view, DatabaseAccess.Connector.getOwner());


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
        private void addUserControl(UserControl userControl)
        {
            userControl.Dock = DockStyle.Fill;
            panel2.Controls.Clear();
            panel2.Controls.Add(userControl);
            userControl.BringToFront();
        }
        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            dataGridView1.Hide();
            strCBB = filterBox.Text;
            objectNameTextBox.Hide();
            detailButton.Hide();
            dropButton.Hide();
            objectLabel.Hide();

            if (strCBB == "Table")
            {
                lbl_tablename.Show();
                txt_name.Show();
                dataGridView2.Show();
                bt_createtable.Show();
                lbl_username.Hide();
                label2.Hide();
                bt_createrole.Hide();

                pwLabel.Hide();
                pwTextBox.Hide();


            }
            else if (strCBB == "User")
            {
                strCBB = filterBox.Text;
                lbl_tablename.Hide();
                txt_name.Show();
                dataGridView2.Hide();
                bt_createtable.Hide();
                lbl_username.Show();
                label2.Hide();
                bt_createrole.Show();

                pwLabel.Show();
                pwTextBox.Show();


            }
            else if (strCBB == "Role")
            {
                lbl_username.Hide();
                txt_name.Show();
                label2.Show();
                bt_createrole.Show();
                dataGridView2.Hide();
                lbl_tablename.Hide();

                pwLabel.Show();
                pwTextBox.Show();

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
            bool isChecked = false;
            foreach (DataGridViewRow row in dataGridView2.Rows)
            {
                if (!row.IsNewRow)
                {

                    name = (String)row.Cells["Name"].Value;
                    datatype = (String)row.Cells["DataType"].Value;
                    isChecked = (bool)row.Cells["PrimaryKey"].Value;


                    if (name != null & datatype != null)
                    {
                        strSQL += name + " " + datatype;
                    }
                    if (isChecked)
                    {
                        strSQL += " primary key";
                    }
                    strSQL += ",";
                }

            }
            strSQL = strSQL.Substring(0, strSQL.Length - 1);
            strSQL += ")";
            MessageBox.Show(strSQL);
            System.Diagnostics.Debug.WriteLine(strSQL);

            OracleCommand command = new OracleCommand(strSQL, con);

            try
            {
                OracleDataReader reader = command.ExecuteReader(); // run it

                MessageBox.Show("Create table successfully!");
                Form2_Load(sender, e);

            }
            catch (Exception ex)
            {
                MessageBox.Show("OracleException: " + ex.Message, "Message", MessageBoxButtons.OK);
            }




        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }



        private void bt_createrole_Click(object sender, EventArgs e)
        {

            dataGridView1.Hide();
            strCBB = filterBox.Text;
            lbl_tablename.Hide();
            txt_name.Show();
            dataGridView2.Hide();
            bt_createtable.Hide();
            lbl_username.Show();

            String sql;

            try
            {
                if (filterBox.Text == "User")
                {
                    OracleCommand command = new OracleCommand("atbm.ph1_createUser", con);
                    command.CommandType = CommandType.StoredProcedure;

                    // Add input parameters to the command
                    command.Parameters.Add("p_username", OracleDbType.Varchar2).Value = txt_name.Text;
                    command.Parameters.Add("p_password", OracleDbType.Varchar2).Value = pwTextBox.Text;

                    // Execute the stored procedure
                    command.ExecuteNonQuery();

                }
                else
                {
                    OracleCommand command = new OracleCommand("atbm.ph1_createRole", con);
                    command.CommandType = CommandType.StoredProcedure;

                    // Add input parameters to the command
                    command.Parameters.Add("p_username", OracleDbType.Varchar2).Value = txt_name.Text;
                    command.Parameters.Add("p_password", OracleDbType.Varchar2).Value = pwTextBox.Text;

                    // Execute the stored procedure
                    command.ExecuteNonQuery();

                }

                //OracleCommand command = new OracleCommand(sql, con);
                //string x = txt_name.Text;

                ////command.CommandType = System.Data.CommandType.StoredProcedure;

                //// Add input parameter(s) to the command
                ////command.Parameters.Add("p_username", OracleDbType.Varchar2).Value = txt_name.Text;
                ////command.Parameters.Add("p_password", OracleDbType.Varchar2).Value = pwTextBox.Text;


                //// Get the value of the output parameter(s)
                //command.ExecuteNonQuery();


                // The stored procedure executed successfully
                MessageBox.Show("create" + filterBox.Text + " " + txt_name.Text + " succeed", "Message", MessageBoxButtons.OK);
                txt_name.Text = "";
                pwTextBox.Text = "";
                Form2_Load(sender, e);

            }
            catch (OracleException ex)
            {
                MessageBox.Show("OracleException: " + ex.Message, "Message", MessageBoxButtons.OK);
            }


        }



        private void label2_Click_1(object sender, EventArgs e)
        {

        }

        private void dropButton_Click(object sender, EventArgs e)
        {
            if (filterBox.Text == "User")
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
                        objectNameTextBox.Text = "";


                        try
                        {

                            OracleCommand command = new OracleCommand("ph1_dropUserOrRole", con);


                            command.CommandType = System.Data.CommandType.StoredProcedure;

                            // Add input parameter(s) to the command
                            command.Parameters.Add("p_username", OracleDbType.Varchar2).Value = choose;
                            command.Parameters.Add("p_mode", OracleDbType.Varchar2).Value = mode;
                            System.Diagnostics.Debug.WriteLine(choose + " - " + mode);
                            // Get the value of the output parameter(s)
                            command.ExecuteNonQuery();

                            // The stored procedure executed successfully
                            MessageBox.Show(mode + " " + choose + " dropped", "Message", MessageBoxButtons.OK);
                            Form2_Load(sender, e);

                        }
                        catch (OracleException ex)
                        {
                            MessageBox.Show("OracleException: " + ex.Message, "Message", MessageBoxButtons.OK);
                        }
                    }
                    else
                    {
                        MessageBox.Show("Please choose the object", "Message", MessageBoxButtons.OK);

                    }
                }
            }
            else
            {
                MessageBox.Show("Only user!");
            }
        }


        private void dataGridView1_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            if (dataGridView1.SelectedRows.Count > 0)
            {
                DataGridViewRow selectedRow = dataGridView1.SelectedRows[0];
                if (filterBox.Text == "")
                    filterBox.Text = "Table";
                string names = filterBox.Text + "Name";
                objectNameTextBox.Text = selectedRow.Cells[names.ToUpper()].Value.ToString();

            }
        }

        private void filterBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            objectNameTextBox.Show();
            detailButton.Show();
            dropButton.Show();
            objectLabel.Show();

            lbl_tablename.Hide();
            txt_name.Hide();
            dataGridView2.Hide();
            bt_createtable.Hide();
            lbl_username.Hide();
            label2.Hide();
            bt_createrole.Hide();
            pwLabel.Hide();
            pwTextBox.Hide();

            strCBB = filterBox.SelectedItem.ToString().ToUpper();
            string view = "PH1_VIEW_ALL_" + strCBB + "S";
            String strSQL = sqlQueryView(view, DatabaseAccess.Connector.getOwner());


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

        private void detailButton_Click(object sender, EventArgs e)
        {
            string objectName = objectNameTextBox.Text;
            string mode = filterBox.Text;
            if (objectName == "")
            {
                MessageBox.Show("Please choose the object", "Message", MessageBoxButtons.OK);
            }
            else
            {
                if (mode != "User" && mode != "Role")
                {
                    MessageBox.Show("Only for User & Role", "Message", MessageBoxButtons.OK);

                }
                else
                {
                    if (!Admin_Phase1.Instance.PnlContainer.Controls.ContainsKey("ManagePriviliege"))
                    {
                        ManagePriviliege d = new ManagePriviliege(con, objectName, mode);
                        d.Dock = DockStyle.Fill;
                        Admin_Phase1.Instance.PnlContainer.Controls.Add(d);
                    }
                    Admin_Phase1.Instance.PnlContainer.Controls["ManagePriviliege"].BringToFront();


                }

            }

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        

        private void ManageObject_Load(object sender, EventArgs e)
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
            label2.Hide();
            label2.Hide();
            bt_createrole.Hide();
            pwLabel.Hide();
            pwTextBox.Hide();

            objectNameTextBox.Show();
            detailButton.Show();
            dropButton.Show();
            objectLabel.Show();

            string temp = filterBox.Text.ToUpper();
            strCBB = temp == "" ? "Table" : temp;

            string view = "PH1_VIEW_ALL_" + strCBB + "S";
            String strSQL = sqlQueryView(view, DatabaseAccess.Connector.getOwner());


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

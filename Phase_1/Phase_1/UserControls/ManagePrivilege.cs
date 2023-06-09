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
using System.Xml.Linq;


namespace Phase_1
{
    public partial class ManagePriviliege : UserControl
    {
        OracleConnection con = null;
        string objectName = null;
        string mode = null;
        string view = "PH1_VIEW_USERS_PRIVS";
        string pri;
        public ManagePriviliege(OracleConnection connection)
        {
            InitializeComponent();
            this.con = connection;
            this.objectName = null;
            this.mode = null;

        }
        public ManagePriviliege(OracleConnection connection, string objectN, string mode)
        {
            InitializeComponent();
            this.con = connection;
            this.objectName = objectN;
            this.mode = mode;

        }

        public ManagePriviliege()
        {
            InitializeComponent();
        }
        private string sqlQueryView(string viewName, string owner)
        {
            return "select * from " + owner + "." + viewName;
        }
        private string sqlQueryViewCon(string viewName, string owner)
        {
            return "select * from " + owner + "." + viewName + " where GRANTEE = '" + objectName.ToUpper() + "'";
        }

        private List<string> getUserRoleTableList(string m)
        {

            string sql = "SELECT " + m.ToUpper() + "NAME FROM GOD.PH1_VIEW_ALL_" + m.ToUpper() + "S";
            OracleCommand cmd = new OracleCommand(sql, con);

            // Execute the query and get the data reader
            OracleDataReader reader = cmd.ExecuteReader();

            // Initialize a string array to store the column values
            List<string> userList = new List<string>();

            // Loop through the rows in the data reader and add the column values to the array
            while (reader.Read())
            {
                string columnValue = reader.GetString(0); // Assuming the column is of type string
                userList.Add(columnValue);
            }

            return userList;
        }


        private bool isExist()
        {
            List<string> userList = getUserRoleTableList("user");
            int r;
            string OjName = this.objectName.ToUpper();

            r = userList.BinarySearch(OjName);
            if (r < 0)
            {
                List<string> roleList = getUserRoleTableList("role");
                r = roleList.BinarySearch(OjName);

                return r < 0 ? false : true;
            }
            return true;
        }

        private List<string> getTableAttribute(string tabName)
        {

            string sql = "SELECT column_name FROM ALL_TAB_COLUMNS WHERE table_name = '" + tabName + "'";
            OracleCommand cmd = new OracleCommand(sql, con);

            // Execute the query and get the data reader
            OracleDataReader reader = cmd.ExecuteReader();

            // Initialize a string array to store the column values
            List<string> userList = new List<string>();

            // Loop through the rows in the data reader and add the column values to the array
            while (reader.Read())
            {
                string columnValue = reader.GetString(0); // Assuming the column is of type string
                userList.Add(columnValue);
                System.Diagnostics.Debug.WriteLine(columnValue);
            }
            userList.Add("ALL");
            return userList;
        }

        private string getTableOwner(string tabName, string m)
        {

            string sql = "SELECT OWNER FROM GOD.PH1_VIEW_ALL_" + m.ToUpper() + "S WHERE " + m.ToUpper() + "NAME = '" + tabName + "'";
            OracleCommand cmd = new OracleCommand(sql, con);

            // Execute the query and get the data reader
            OracleDataReader reader = cmd.ExecuteReader();

            // Initialize a string array to store the column values

            // Loop through the rows in the data reader and add the column values to the array

            return reader.Read() ? reader.GetString(0) : ""; // Assuming the column is of type string
        }


        private void raiseTable(DataGridView dataGridView1, string SQLCommand)
        {
            OracleDataAdapter adt = new OracleDataAdapter(SQLCommand, con);

            DataTable userTable = new DataTable();

            adt.Fill(userTable);
            dataGridView1.DataSource = userTable;
        }
        
        
        private void searchButton_Click(object sender, EventArgs e)
        {
            string userR = objChoosetextBox.Text;
            string temp = this.objectName;
            objChoosetextBox.Text = "";
            if (userR != "")
            {
                this.objectName = userR;
                if (isExist())
                {
                    string sqlCommand = sqlQueryViewCon(view, DatabaseAccess.Connector.getOwner());
                    try
                    {
                        raiseTable(dataGridView1, sqlCommand);
                        dataGridView1.Show();
                    }
                    catch (OracleException ex)
                    {
                        Console.WriteLine("OracleException: " + ex.Message);
                    }
                }
                else
                {
                    MessageBox.Show("Can not find this User/Role", "Message", MessageBoxButtons.OK);
                    this.objectName = temp;
                }

            }
        }
        private void dataGridView1_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            if (dataGridView1.SelectedRows.Count > 0)
            {
                DataGridViewRow selectedRow = dataGridView1.SelectedRows[0];

                objChoosetextBox.Text = selectedRow.Cells["GRANTEE"].Value.ToString();

                string priv = selectedRow.Cells["PRIVILEGE"].Value.ToString() + " ON "
                    + selectedRow.Cells["OWNER"].Value.ToString() + "." + selectedRow.Cells["TABLE_NAME"].Value.ToString();
                privilegeTextBox.Text = priv;
                this.objectName = objChoosetextBox.Text;
                this.mode = priv;
            }
        }
        private void ManagePriviliege_Load(object sender, EventArgs e)
        {
            // Get the size of the primary screen
            Rectangle workingArea = Screen.PrimaryScreen.WorkingArea;

            // Calculate the location of the form to be centered on the screen
            int x = (workingArea.Width - this.Width) / 2;
            int y = (workingArea.Height - this.Height) / 2;

            // Set the location of the form
            this.Location = new Point(x, y);
            String strSQL;
            if (this.objectName != null)
            {

                strSQL = sqlQueryViewCon(view, DatabaseAccess.Connector.getOwner());
               
            }
            else
            {
                strSQL = "SELECT * FROM ATBM.PH1_VIEW_USERS_PRIVS";
                
            }

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

        
       

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }


        


        private void revokeButton_Click(object sender, EventArgs e)
        {
            string priv = privilegeTextBox.Text;
            this.objectName=objChoosetextBox.Text;
            if (priv == "")
            {
                MessageBox.Show("Please choose privilege to revoke", "Message", MessageBoxButtons.OK);

            }
            else
            {
                DialogResult result = MessageBox.Show("Are you sure to revoke this privilege from this user/role?", "Confirmation", MessageBoxButtons.YesNo);
                if (result == DialogResult.Yes)
                {
                    try
                    {

                        OracleCommand command = new OracleCommand("ph1_revokePriv", con);


                        command.CommandType = System.Data.CommandType.StoredProcedure;

                        // Add input parameter(s) to the command
                        command.Parameters.Add("p_userOrRole", OracleDbType.Varchar2).Value = this.objectName;
                        command.Parameters.Add("p_privilege", OracleDbType.Varchar2).Value = priv;

                        // Get the value of the output parameter(s)
                        int resultEx = command.ExecuteNonQuery();
                        System.Diagnostics.Debug.WriteLine(resultEx);


                        // The stored procedure executed successfully
                        MessageBox.Show(priv + " dropped", "Message", MessageBoxButtons.OK);
                        ManagePriviliege_Load(sender, e);

                    }
                    catch (OracleException ex)
                    {
                        MessageBox.Show("OracleException: " + ex.Message, "Message", MessageBoxButtons.OK);
                    }
                }
            }
        }


        private void moreActionButton_Click(object sender, EventArgs e)
        {
            if (!Admin_Phase1.Instance.PnlContainer.Controls.ContainsKey("Grant"))
            {
                Grant d = new Grant(con, objectName, mode);
                d.Dock = DockStyle.Fill;
                Admin_Phase1.Instance.PnlContainer.Controls.Add(d);
            }
            Admin_Phase1.Instance.PnlContainer.Controls["Grant"].BringToFront();
        }

        private void rowComboBox_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void colPrivCheckbox_CheckedChanged(object sender, EventArgs e)
        {
            string view = "";
            if (colPrivCheckbox.Checked)
            {
                allPrivCheckbox.Checked = false;
                view = "PH1_VIEW_COL_PRIVS";

            }
            String strSQL = sqlQueryViewCon(view, DatabaseAccess.Connector.getOwner());

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

        private void allPrivCheckbox_CheckedChanged(object sender, EventArgs e)
        {
            string view = "";
            if (allPrivCheckbox.Checked)
            {
                colPrivCheckbox.Checked = false;

                view = "PH1_VIEW_USERS_PRIVS";
            }
            string strSQL = sqlQueryViewCon(view, DatabaseAccess.Connector.getOwner());

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

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }


    }


}

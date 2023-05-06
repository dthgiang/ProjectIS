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

namespace Phase_1
{
    public partial class GrantAndAlter : Form
    {
        OracleConnection con = null;
        string objectName = null;
        string mode = null;
        string view = "PH1_VIEW_USERS_PRIVS";
        

        public GrantAndAlter(OracleConnection connection)
        {
            InitializeComponent();
            this.con = connection;
        }
        public GrantAndAlter(OracleConnection connection, string objectN, string mode)
        {
            InitializeComponent();
            this.con = connection;
            this.objectName = objectN;
            this.mode = mode;
        }

        private string sqlQueryViewCon(string viewName, string owner)
        {
            return "select * from " + owner + "." + viewName + " where GRANTEE = '" + objectName.ToUpper() + "'";
        }

        private List<string> getUserRoleTableList(string m)
        {

            string sql = "SELECT " + m.ToUpper() + "NAME FROM " + DatabaseAccess.Connector.getOwner() + ".PH1_VIEW_ALL_" + m.ToUpper() + "S";
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


        private int isExist()
        {
            List<string> userList = getUserRoleTableList("user");
            int r;
            string OjName = this.objectName.ToUpper();

            r = userList.BinarySearch(OjName);
            if (r < 0)
            {
                List<string> roleList = getUserRoleTableList("role");
                r = roleList.BinarySearch(OjName);

                return r < 0 ? 0 : 2;
            }
            return 1;
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
            }
            userList.Add("ALL");
            return userList;
        }

        private string getTableOwner(string tabName, string m)
        {

            string sql = "SELECT OWNER FROM " + DatabaseAccess.Connector.getOwner() + ".PH1_VIEW_ALL_" + m.ToUpper() + "S WHERE " + m.ToUpper() + "NAME = '" + tabName + "'";
            OracleCommand cmd = new OracleCommand(sql, con);

            // Execute the query and get the data reader
            OracleDataReader reader = cmd.ExecuteReader();

            // Initialize a string array to store the column values

            // Loop through the rows in the data reader and add the column values to the array

            return reader.Read() ? reader.GetString(0) : ""; // Assuming the column is of type string
        }

        private List<string> getAllRole()
        {

            string sql = "SELECT ROLENAME FROM  " + DatabaseAccess.Connector.getOwner() + ".PH1_VIEW_ALL_ROLES";
            OracleCommand cmd = new OracleCommand(sql, con);

            // Execute the query and get the data reader
            OracleDataReader reader = cmd.ExecuteReader();

            List<string> userList = new List<string>();

            // Loop through the rows in the data reader and add the column values to the array
            while (reader.Read())
            {
                string columnValue = reader.GetString(0); // Assuming the column is of type string
                userList.Add(columnValue);
                System.Diagnostics.Debug.WriteLine(columnValue);
            }

            return userList;


        }
        private void raiseTable(DataGridView dgv, string SQLCommand)
        {
            OracleDataAdapter adt = new OracleDataAdapter(SQLCommand, con);

            DataTable userTable = new DataTable();

            adt.Fill(userTable);
            dgv.DataSource = userTable;
        }


        private void grantPrivButton_Click(object sender, EventArgs e)
        {
            grantPrivPanel.Show();
            grantRolePanel.Hide();
            changePWPanel.Hide();

            //grantPrivLabel.Show();
            //grantRoleLabel.Hide();
            //changePWLabel.Hide();

        }

        private void grantRoleButton_Click(object sender, EventArgs e)
        {
            grantPrivPanel.Hide();
            grantRolePanel.Show();
            changePWPanel.Hide();

            //grantPrivLabel.Hide();
            //grantRoleLabel.Show();
            //changePWLabel.Hide();

            rowComboBox.DataSource = getAllRole();

        }

        private void changePWButton_Click(object sender, EventArgs e)
        {
            grantPrivPanel.Hide();
            grantRolePanel.Hide();
            changePWPanel.Show();

            //grantPrivLabel.Hide();
            //grantRoleLabel.Hide();
            //changePWLabel.Show();

            if (this.mode == "Role") {
                passwordCheckBox.Show();
            } else
            {
                passwordCheckBox.Hide();
            }
        }

        private void returnButton_Click(object sender, EventArgs e)
        {
            Detail d = new Detail(con, objectName, mode);
            this.Hide();
            d.Show();
        }

        private void GrantAndAlter_Load(object sender, EventArgs e)
        {
            // Get the size of the primary screen
            Rectangle workingArea = Screen.PrimaryScreen.WorkingArea;

            // Calculate the location of the form to be centered on the screen
            int x = (workingArea.Width - this.Width) / 2;
            int y = (workingArea.Height - this.Height) / 2;

            // Set the location of the form
            this.Location = new Point(x, y);

            nameObjsLabel.Text = this.objectName;
            welcomeLabel.Text = "You are editing on " + this.mode;
            List<string> objectList = getUserRoleTableList("Table");
            objectList.AddRange(getUserRoleTableList("View"));
            objectComboBox.DataSource = objectList;

            objectTextBox.Text = this.objectName;
            granteeRoleTextBox.Text = this.objectName;
            granteeChangePWTextBox.Text = this.objectName;
            optionComboBox.Text = "No";

            grantPrivPanel.Show();
            grantRolePanel.Hide();
            changePWPanel.Hide();

            //grantPrivLabel.Show();
            //grantRoleLabel.Hide();
            //changePWLabel.Hide();
        }



        private void changeUserButton_Click(object sender, EventArgs e)
        {
            string userR = searchNameTextBox.Text;
            string temp = this.objectName;
            searchNameTextBox.Text = "";
            if (userR != "")
            {
                this.objectName = userR;
                if (isExist() != 0)
                {
                    this.objectName = userR;
                    nameObjsLabel.Text = this.objectName;
                    nameObjsLabel.ForeColor = Color.OrangeRed;
                    nameObjsLabel.Font = new Font("Cambria", 14, FontStyle.Bold);

                    objectTextBox.Text = this.objectName;
                    granteeRoleTextBox.Text = this.objectName;
                    granteeChangePWTextBox.Text = this.objectName;
                    this.mode = isExist() == 1 ? "User" : "Role";

                    if (this.mode == "Role")
                    {
                        passwordCheckBox.Show();
                    }
                    else
                    {
                        passwordCheckBox.Hide();
                    }

                    welcomeLabel.ForeColor = Color.MediumVioletRed;
                    welcomeLabel.Text = "You are editing on " + this.mode;
                }
                else
                {
                    MessageBox.Show("Can not find this User/Role", "Message", MessageBoxButtons.OK);
                    this.objectName = temp;
                }

            }
        }

        private void execProc(object sender, EventArgs e, string privl, string grantee, string opt)
        {
            try
            {

                OracleCommand command = new OracleCommand("ph1_grantPriv", con);


                command.CommandType = System.Data.CommandType.StoredProcedure;

                // Add input parameter(s) to the command
                command.Parameters.Add("p_userOrRole", OracleDbType.Varchar2).Value = grantee;
                command.Parameters.Add("p_privilege", OracleDbType.Varchar2).Value = privl;
                command.Parameters.Add("p_option", OracleDbType.Varchar2).Value = opt;

                // Get the value of the output parameter(s)
                int resultEx = command.ExecuteNonQuery();
                System.Diagnostics.Debug.WriteLine(resultEx);


                // The stored procedure executed successfully
                MessageBox.Show(privl + " granted", "Message", MessageBoxButtons.OK);
                GrantAndAlter_Load(sender, e);
            }
            catch (OracleException ex)
            {
                MessageBox.Show("OracleException: " + ex.Message, "Message", MessageBoxButtons.OK);
            }
        }
        private void grantPrivActionButton_Click(object sender, EventArgs e)
        {
            string obj = objectComboBox.Text.ToUpper();
            string grantee = objectTextBox.Text;
            string priv = privComboBox.Text.ToUpper();
            string owner = getTableOwner(obj, "view");
            string opt = optionComboBox.Text;
            if (owner == "") owner = getTableOwner(obj, "table");
            string col;
            string privl = priv;
            if (priv.ToUpper() == "UPDATE")
            {
                col = attributeComboBox.Text;
                if (col == "ALL")
                {
                    priv += " ON " + owner + "." + obj;
                    execProc(sender, e, priv, grantee, opt);
                    return;
                }
                privl += "(" + col + ")";
            }
            privl += " ON " + owner + "." + obj;

            execProc(sender, e, privl, grantee, opt);

            

        }

        private void privComboBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            string obj = objectComboBox.Text.ToUpper();

            string priv = privComboBox.SelectedItem.ToString().ToUpper(); ;

            List<string> s = new List<string> { "ALL" };
            attributeComboBox.DataSource = priv == "UPDATE" ? getTableAttribute(obj) : s;
        }

        private void objectComboBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            string obj = objectComboBox.SelectedItem.ToString().ToUpper();
            string priv = privComboBox.Text.ToUpper();

            List<string> s = new List<string> { "ALL" };
            attributeComboBox.DataSource = priv == "UPDATE" ? getTableAttribute(obj) : s;

        }

        private void grantRoleActionButton_Click(object sender, EventArgs e)
        {
            string grantee = objectTextBox.Text;
            string roleName = rowComboBox.Text;

            execProc(sender, e, roleName, grantee, "No");
        }

        private void passwordCheckBox_CheckedChanged(object sender, EventArgs e)
        {
            if (passwordCheckBox.Checked) {
                newPWTextBox.Hide();
                confirmPWTextBox.Hide();
                newPWLabel.Hide();
                confirmPWLabel.Hide();
            }
            else
            {
                newPWTextBox.Show();
                confirmPWTextBox.Show();
                newPWLabel.Show();
                confirmPWLabel.Show();
            }
        }

        private void changePWActionButton_Click(object sender, EventArgs e)
        {
            string newPW = newPWTextBox.Text;
            string confirm = confirmPWTextBox.Text;
            if (newPW != confirm || newPW == "")  {
                MessageBox.Show("Password does not match", "Message", MessageBoxButtons.OK);

            } else {
                try
                {
                    string opt = passwordCheckBox.Checked ? "No" : "Yes";
                    OracleCommand command = new OracleCommand("ph1_changePasswordUserOrRole", con);


                    command.CommandType = System.Data.CommandType.StoredProcedure;

                    // Add input parameter(s) to the command
                    command.Parameters.Add("p_name", OracleDbType.Varchar2).Value = this.objectName;
                    command.Parameters.Add("p_newPassword", OracleDbType.Varchar2).Value = newPW;
                    command.Parameters.Add("p_mode", OracleDbType.Varchar2).Value = this.mode;
                    command.Parameters.Add("p_isPassword", OracleDbType.Varchar2).Value = opt;

                    // Get the value of the output parameter(s)
                    int resultEx = command.ExecuteNonQuery();
                    newPWTextBox.Text = "";
                    confirmPWTextBox.Text = "";

                    // The stored procedure executed successfully
                    GrantAndAlter_Load(sender, e);
                    MessageBox.Show("Change succeed", "Message", MessageBoxButtons.OK);

                }
                catch (OracleException ex)
                {
                    MessageBox.Show("OracleException: " + ex.Message, "Message", MessageBoxButtons.OK);
                }
            }
        }

    }
}

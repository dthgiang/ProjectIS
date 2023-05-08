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


namespace Phase_1
{
    public partial class Form3 : Form
    {
        OracleConnection con = null;
        string pri;
        public Form3(OracleConnection connection)
        {
            InitializeComponent();
            this.con = connection;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Form1 f1 = new Form1(con);
            this.Hide();
            f1.Show();
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

        private void Form3_Load(object sender, EventArgs e)
        {
            // Get the size of the primary screen
            Rectangle workingArea = Screen.PrimaryScreen.WorkingArea;

            // Calculate the location of the form to be centered on the screen
            int x = (workingArea.Width - this.Width) / 2;
            int y = (workingArea.Height - this.Height) / 2;

            // Set the location of the form
            this.Location = new Point(x, y);
            allPrivCheckbox.Checked = true;

            string view = "PH1_VIEW_USERS_PRIVS";
        
            String strSQL = sqlQueryView(view, DatabaseAccess.Connector.getOwner());
            
            try
            {
                raiseTable(dataGridView1, "select * from ATBM.PH1_VIEW_USERS_PRIVS ");
        dataGridView1.Show();
            }
            catch (OracleException ex)
            {
                Console.WriteLine("OracleException: " + ex.Message);
            }

            
        }

        private void colPrivCheckbox_CheckedChanged(object sender, EventArgs e)
        {
            string view = "";
            if (colPrivCheckbox.Checked == true)
            {
                allPrivCheckbox.Checked = false;
                view = "PH1_VIEW_COL_PRIVS";

            }
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

        private void allPrivCheckbox_CheckedChanged(object sender, EventArgs e)
        {
            string view = "";
            if (allPrivCheckbox.Checked == true)
            {
                colPrivCheckbox.Checked = false;
                
                view = "PH1_VIEW_USERS_PRIVS";
            }
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

        private void dataGridView1_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            if (dataGridView1.SelectedRows.Count > 0)
            {
                DataGridViewRow selectedRow = dataGridView1.SelectedRows[0];
                string priv;
                objChoosetextBox.Text = selectedRow.Cells["GRANTEE"].Value.ToString();

                this.pri = selectedRow.Cells["PRIVILEGE"].Value.ToString() + " ON "
                        + selectedRow.Cells["OWNER"].Value.ToString() + "." + selectedRow.Cells["TABLE_NAME"].Value.ToString();
                if (allPrivCheckbox.Checked == false)
                {
                    priv = selectedRow.Cells["PRIVILEGE"].Value.ToString() + "(" + selectedRow.Cells["COLUMN_NAME"].Value.ToString() + ")" + " ON "
                        + selectedRow.Cells["OWNER"].Value.ToString() + "." + selectedRow.Cells["TABLE_NAME"].Value.ToString();
                    privilegeTextBox.Text = priv;

                } else
                {
                    privilegeTextBox.Text = this.pri;

                }


            }
        }

        private void revokeButton_Click(object sender, EventArgs e)
        {
            string priv = this.pri;
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
                        command.Parameters.Add("p_userOrRole", OracleDbType.Varchar2).Value = objChoosetextBox.Text;
                        command.Parameters.Add("p_privilege", OracleDbType.Varchar2).Value = priv;

                        // Get the value of the output parameter(s)
                        int resultEx = command.ExecuteNonQuery();
                        System.Diagnostics.Debug.WriteLine(resultEx);

                        // The stored procedure executed successfully
                        MessageBox.Show(priv + " dropped", "Message", MessageBoxButtons.OK);
                        Form3_Load(sender, e);

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
            string priv = this.pri;
            if (priv == "")
            {
                MessageBox.Show("Please choose user", "Message", MessageBoxButtons.OK);

            }
            else
            {
                string grantee = objChoosetextBox.Text;
                string mode = grantee.Substring(0, 3) == "RL_" ? "Role" : "User";
                GrantAndAlter d = new GrantAndAlter(con, grantee, mode);
                this.Hide();
                d.Show();
            }
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }



        //private void button1_Click(object sender, EventArgs e)
        //{
        //    dataGridView1.Show();
        //    OracleDataAdapter da = new OracleDataAdapter("SELECT GRANTEE, OWNER, TABLE_NAME, PRIVILEGE FROM DBA_TAB_PRIVS  WHERE GRANTEE ='" + name+ "'" , con);
        //    //OracleCommandBuilder builder = new OracleCommandBuilder(da);
        //    DataTable dt = new DataTable();
        //    da.Fill(dt);
        //    dataGridView1.DataSource = dt;
        //}
    }
}

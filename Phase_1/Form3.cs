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

            //if (name == null)
            //{
            //    dataGridView1.Hide();
            //}
            //else
            //{
            //    OracleDataAdapter da = new OracleDataAdapter("exec get_all_privileges "+name, con);
            //    //OracleCommandBuilder builder = new OracleCommandBuilder(da);
            //    DataTable dt = new DataTable();
            //    da.Fill(dt);
            //    dataGridView1.DataSource = dt;
            //    dataGridView1.Show();
            //}    

            
        }

        private void colPrivCheckbox_CheckedChanged(object sender, EventArgs e)
        {
            string view = "";
            if (colPrivCheckbox.Checked == true)
            {
                allPrivCheckbox.Checked = false;
                view = "PH1_VIEW_COL_PRIVS";

            }
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

        private void allPrivCheckbox_CheckedChanged(object sender, EventArgs e)
        {
            string view = "";
            if (allPrivCheckbox.Checked == true)
            {
                colPrivCheckbox.Checked = false;
                
                view = "PH1_VIEW_USERS_PRIVS";
            }
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

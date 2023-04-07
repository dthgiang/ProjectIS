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
    public partial class Detail : Form
    {
        OracleConnection con = null;
        string objectName = null;
        string mode = null;
        public Detail(OracleConnection connection)
        {
            InitializeComponent();
            this.con = connection;
        }
        public Detail(OracleConnection connection, string objectN, string mode)
        {
            InitializeComponent();
            this.con = connection;
            this.objectName = objectN;
            this.mode = mode;
        }

        public Detail()
        {
            InitializeComponent();
        }
        private string sqlQueryViewCon(string viewName, string owner)
        {
            return "select * from " + owner + "." + viewName + " where GRANTEE = '" + objectName.ToUpper() + "'";
        }

        private void raiseTable(DataGridView dgv, string SQLCommand)
        {
            OracleDataAdapter adt = new OracleDataAdapter(SQLCommand, con);

            DataTable userTable = new DataTable();

            adt.Fill(userTable);
            dgv.DataSource = userTable;
        }
        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void Detail_Load(object sender, EventArgs e)
        {
            // Get the size of the primary screen
            Rectangle workingArea = Screen.PrimaryScreen.WorkingArea;

            // Calculate the location of the form to be centered on the screen
            int x = (workingArea.Width - this.Width) / 2;
            int y = (workingArea.Height - this.Height) / 2;

            // Set the location of the form
            this.Location = new Point(x, y);
            string view = "PH1_VIEW_USERS_PRIVS";
            String strSQL = sqlQueryViewCon(view, "DTHGIANG");
            System.Diagnostics.Debug.WriteLine(strSQL);

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

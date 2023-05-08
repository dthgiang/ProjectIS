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

namespace Phase_1.Phase_2.UserControls
{
    public partial class Audit : UserControl
    {
        OracleConnection connection;
        String username;
        public Audit()
        {
            InitializeComponent();
        }
        public Audit(String user, OracleConnection connection)
        {
            InitializeComponent();
            this.username = user;
            this.connection = connection;
        }
        private void Audit_Load(object sender, EventArgs e)
        {

            auditLabel.Hide();
            auditDataGridView.Hide();
            logDataGridView.Show();
            richTextBox1.Hide();

            string sql = "select * from " + DatabaseAccess.Connector.getSys() + ".VW_VIEWLOG";
            bool x = Helper.raiseTable(logDataGridView, sql, connection);
            if (!x)
            {
                richTextBox1.Show();
                richTextBox1.Text = "Log file is empty";
                richTextBox1.Font = new Font("Cambria", 20, FontStyle.Bold);
                richTextBox1.ForeColor = Color.OrangeRed;
            }

        }

        private void viewAuditButton_Click(object sender, EventArgs e)
        {
            auditLabel.Show();
            logDataGridView.Hide();
            richTextBox1.Hide();
            auditDataGridView.Show();
            string sql = "select * from " + DatabaseAccess.Connector.getSys() + ".VW_VIEWAUDIT";
            Helper.raiseTable(auditDataGridView, sql, connection);
        }

        private void viewLogButton_Click(object sender, EventArgs e)
        {
            auditLabel.Hide();
            auditDataGridView.Hide();
            logDataGridView.Show();
            richTextBox1.Hide();

            string sql = "select * from " + DatabaseAccess.Connector.getSys() + ".VW_VIEWLOG";
            bool x = Helper.raiseTable(logDataGridView, sql, connection);
            if (!x)
            {
                richTextBox1.Show();
                richTextBox1.Text = "Log file is empty";
                richTextBox1.Font = new Font("Cambria", 20, FontStyle.Bold);
                richTextBox1.ForeColor = Color.OrangeRed;
            }
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}

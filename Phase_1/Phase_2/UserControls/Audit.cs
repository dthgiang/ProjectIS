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
            OracleDataAdapter adt = new OracleDataAdapter("select sessionid, dbuid,osuid, oshst, clientid, obj$name, policyname, scn, lsqltext, comment$text,comment$text, ntimestamp#, current_user from SYS.fga_log$", connection);

            DataTable table = new DataTable();

            adt.Fill(table);
            dataGridView1.DataSource = table;

            dataGridView1.ReadOnly = true;

        }


    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Oracle.ManagedDataAccess.Client;
using System.Windows.Forms;
using System.Data;

namespace Phase_1
{
    class Helper
    {
        public static void raiseTable(DataGridView dgv, string SQLCommand, OracleConnection connection)
        {

            OracleDataAdapter adt = new OracleDataAdapter(SQLCommand, connection);

            DataTable userTable = new DataTable();

            adt.Fill(userTable);
            if (userTable.Rows.Count < 1)
            {
                System.Diagnostics.Debug.WriteLine("here we go again");
                return;
            }

            dgv.DataSource = userTable;
        }

        public static void addUserControl(Panel panelContainer, UserControl userControl)
        {
            userControl.Dock = DockStyle.Fill;
            panelContainer.Controls.Clear();
            panelContainer.Controls.Add(userControl);
            userControl.BringToFront();
        }
    }
}

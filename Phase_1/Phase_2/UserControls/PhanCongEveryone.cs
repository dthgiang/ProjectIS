using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Oracle.ManagedDataAccess.Client;

namespace Phase_1.Phase_2.UserControls
{
    public partial class PhanCongEveryone: UserControl
    {
        OracleConnection connection = null;
        public PhanCongEveryone()
        {
            InitializeComponent();
        }
        public PhanCongEveryone(OracleConnection connection)
        {
            InitializeComponent();
            this.connection = connection;
        }


        private void PhanCongEveryone_Load(object sender, EventArgs e)
        {

        }
    }
}

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
    public partial class Encryption : UserControl
    {
        String username;
        OracleConnection connection;
        public Encryption()
        {
            InitializeComponent();
        }
        public Encryption(String user, OracleConnection connection)
        {
            InitializeComponent();
            this.connection = connection;
            this.username = user;
        }
        private void Encryption_Load(object sender, EventArgs e)
        {

        }
    }
}

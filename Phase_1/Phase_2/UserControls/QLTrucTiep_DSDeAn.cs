﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Oracle.ManagedDataAccess.Client;

namespace Phase_1.UserControls
{
    public partial class QLTrucTiep_DSDeAn : UserControl
    {
        public QLTrucTiep_DSDeAn()
        {
            InitializeComponent();
            try
            {
                Helper.raiseTable(dataGridView1, "select * from ATBM.DEAN", Login.getConnection());
                dataGridView1.Show();
            }
            catch (OracleException ex)
            {
                System.Diagnostics.Debug.WriteLine("OracleException: " + ex.Message);
            }
        }

        private void QLTrucTiep_DSDeAn_Load(object sender, EventArgs e)
        {

        }
    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Phase_1.UserControls
{
    public partial class Home : UserControl
    {
        private Panel pContainer;
        public Home()
        {
            InitializeComponent();
        }

        public Home(Panel panelX)
        {
            InitializeComponent();
            pContainer = panelX;
        }

        private void button23_Click(object sender, EventArgs e)
        {
            AllLayout.addUserControl(new XemProfile(), pContainer);
        }

        private void button25_Click(object sender, EventArgs e)
        {
            this.Hide();
            Login login = new Login();
            login.Show();
        }
    }
}

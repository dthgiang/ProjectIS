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
    public partial class CustomDialog : Form
    {
        private Button okButton;

        public CustomDialog()
        {
            InitializeComponent();
        }

     



        public string Key
        {
            get { return textBox.Text; }
        }





        private void okButton_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
            this.Close();
        }

        private void CustomDialog_Load(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}

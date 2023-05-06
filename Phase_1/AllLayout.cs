using Phase_1.UserControls;
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
    class AllLayout {
       public AllLayout()
        {
        }

        private static void addUserControl(UserControl userControl, Panel panelContainer)
        {
            userControl.Dock = DockStyle.Fill;
            panelContainer.Controls.Clear();
            panelContainer.Controls.Add(userControl);
            userControl.BringToFront();
        }

        public static void showNotification(Panel panelContainer)
        {
            Notification nt = new Notification(Login.getUsername(), Login.getConnection(), panelContainer);
            addUserControl(nt, panelContainer);
        }

        public static void showMyInformatioin()
        {

        }
    }
}

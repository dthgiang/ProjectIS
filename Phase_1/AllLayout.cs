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
using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;

namespace Phase_1
{
    class AllLayout {
       public AllLayout()
        {
        }

        // Panel container la man hinh con cua giao dien - được truyền trực tiếp từ giao diện vào
        public static void addUserControl(UserControl userControl, Panel panelContainer)
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

        // Hien thi man hinh xem toan bo Phong Ban
        public static void showDepartment(Panel panelContainer)
        {
            QLTrucTiep_DSPhongBan ql = new QLTrucTiep_DSPhongBan();
            addUserControl(ql, panelContainer);
        }


        // Hien thi man hinh xem toan bo De An
        public static void showProject(Panel panelContainer)
        {
            QLTrucTiep_DSDeAn ql = new QLTrucTiep_DSDeAn();
            addUserControl(ql, panelContainer);
        }


        public static void showProfile(Panel panelContainer)
        {
            XemProfile ql = new XemProfile();
            addUserControl(ql, panelContainer);
        }

        public static void showTask(Panel panelContainer)
        {
            QLTrucTiep_Task ql = new QLTrucTiep_Task();
            addUserControl(ql, panelContainer);
        }

    }
}

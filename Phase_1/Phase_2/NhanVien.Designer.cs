namespace Phase_1.Phase_2
{
    partial class NhanVien
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(NhanVien));
            this.sidebar = new System.Windows.Forms.FlowLayoutPanel();
            this.panel2 = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.menuButton = new System.Windows.Forms.PictureBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel3 = new System.Windows.Forms.Panel();
            this.button2 = new System.Windows.Forms.Button();
            this.btnHome = new System.Windows.Forms.Button();
            this.panel4 = new System.Windows.Forms.Panel();
            this.panel5 = new System.Windows.Forms.Panel();
            this.button3 = new System.Windows.Forms.Button();
            this.btnTask = new System.Windows.Forms.Button();
            this.panel6 = new System.Windows.Forms.Panel();
            this.panel7 = new System.Windows.Forms.Panel();
            this.button5 = new System.Windows.Forms.Button();
            this.btnPhongban = new System.Windows.Forms.Button();
            this.panel8 = new System.Windows.Forms.Panel();
            this.panel9 = new System.Windows.Forms.Panel();
            this.button7 = new System.Windows.Forms.Button();
            this.btnDeAn = new System.Windows.Forms.Button();
            this.panel22 = new System.Windows.Forms.Panel();
            this.panel23 = new System.Windows.Forms.Panel();
            this.button22 = new System.Windows.Forms.Button();
            this.btnThongBao = new System.Windows.Forms.Button();
            this.sidebarTimer = new System.Windows.Forms.Timer(this.components);
            this.panel12 = new System.Windows.Forms.Panel();
            this.picAvatar = new System.Windows.Forms.PictureBox();
            this.panel13 = new System.Windows.Forms.Panel();
            this.btnGray = new System.Windows.Forms.Button();
            this.panel24 = new System.Windows.Forms.Panel();
            this.btnRed = new System.Windows.Forms.Button();
            this.btnGreen = new System.Windows.Forms.Button();
            this.panelContainer = new System.Windows.Forms.Panel();
            this.panelThongTin = new System.Windows.Forms.Panel();
            this.button24 = new System.Windows.Forms.Button();
            this.btnSignOut = new System.Windows.Forms.Button();
            this.btnViewProfile = new System.Windows.Forms.Button();
            this.ProfileTimer = new System.Windows.Forms.Timer(this.components);
            this.sidebar.SuspendLayout();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.menuButton)).BeginInit();
            this.panel1.SuspendLayout();
            this.panel3.SuspendLayout();
            this.panel4.SuspendLayout();
            this.panel5.SuspendLayout();
            this.panel6.SuspendLayout();
            this.panel7.SuspendLayout();
            this.panel8.SuspendLayout();
            this.panel9.SuspendLayout();
            this.panel22.SuspendLayout();
            this.panel23.SuspendLayout();
            this.panel12.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picAvatar)).BeginInit();
            this.panel13.SuspendLayout();
            this.panelContainer.SuspendLayout();
            this.panelThongTin.SuspendLayout();
            this.SuspendLayout();
            // 
            // sidebar
            // 
            this.sidebar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(59)))), ((int)(((byte)(52)))), ((int)(((byte)(118)))));
            this.sidebar.Controls.Add(this.panel2);
            this.sidebar.Controls.Add(this.panel1);
            this.sidebar.Controls.Add(this.panel4);
            this.sidebar.Controls.Add(this.panel6);
            this.sidebar.Controls.Add(this.panel8);
            this.sidebar.Controls.Add(this.panel22);
            this.sidebar.Dock = System.Windows.Forms.DockStyle.Left;
            this.sidebar.Location = new System.Drawing.Point(0, 0);
            this.sidebar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.sidebar.MaximumSize = new System.Drawing.Size(410, 1662);
            this.sidebar.MinimumSize = new System.Drawing.Size(98, 895);
            this.sidebar.Name = "sidebar";
            this.sidebar.Size = new System.Drawing.Size(410, 895);
            this.sidebar.TabIndex = 0;
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.label1);
            this.panel2.Controls.Add(this.menuButton);
            this.panel2.Location = new System.Drawing.Point(4, 5);
            this.panel2.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(405, 180);
            this.panel2.TabIndex = 2;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Segoe UI", 23.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.White;
            this.label1.Location = new System.Drawing.Point(98, 55);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(294, 62);
            this.label1.TabIndex = 1;
            this.label1.Text = "HOGWARTS";
            // 
            // menuButton
            // 
            this.menuButton.Cursor = System.Windows.Forms.Cursors.Hand;
            this.menuButton.Image = global::Phase_1.Properties.Resources.menu;
            this.menuButton.Location = new System.Drawing.Point(2, 51);
            this.menuButton.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.menuButton.Name = "menuButton";
            this.menuButton.Size = new System.Drawing.Size(87, 80);
            this.menuButton.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.menuButton.TabIndex = 0;
            this.menuButton.TabStop = false;
            this.menuButton.Click += new System.EventHandler(this.menuButton_Click);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.panel3);
            this.panel1.Controls.Add(this.btnHome);
            this.panel1.Location = new System.Drawing.Point(4, 195);
            this.panel1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(405, 88);
            this.panel1.TabIndex = 1;
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.button2);
            this.panel3.Location = new System.Drawing.Point(0, 83);
            this.panel3.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(405, 88);
            this.panel3.TabIndex = 3;
            // 
            // button2
            // 
            this.button2.BackColor = System.Drawing.Color.Transparent;
            this.button2.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button2.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button2.ForeColor = System.Drawing.Color.White;
            this.button2.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.button2.Location = new System.Drawing.Point(-28, -8);
            this.button2.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.button2.Name = "button2";
            this.button2.Padding = new System.Windows.Forms.Padding(45, 0, 0, 0);
            this.button2.Size = new System.Drawing.Size(462, 103);
            this.button2.TabIndex = 2;
            this.button2.Text = "                  Home";
            this.button2.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.button2.UseVisualStyleBackColor = false;
            // 
            // btnHome
            // 
            this.btnHome.BackColor = System.Drawing.Color.Transparent;
            this.btnHome.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(39)))), ((int)(((byte)(34)))), ((int)(((byte)(78)))));
            this.btnHome.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnHome.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnHome.ForeColor = System.Drawing.Color.White;
            this.btnHome.Image = global::Phase_1.Properties.Resources.icons8_home_page_24;
            this.btnHome.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnHome.Location = new System.Drawing.Point(-28, -8);
            this.btnHome.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnHome.Name = "btnHome";
            this.btnHome.Padding = new System.Windows.Forms.Padding(45, 0, 0, 0);
            this.btnHome.Size = new System.Drawing.Size(462, 103);
            this.btnHome.TabIndex = 2;
            this.btnHome.Text = "                  Home";
            this.btnHome.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnHome.UseVisualStyleBackColor = false;
            this.btnHome.Click += new System.EventHandler(this.btnHome_Click);
            // 
            // panel4
            // 
            this.panel4.Controls.Add(this.panel5);
            this.panel4.Controls.Add(this.btnTask);
            this.panel4.Location = new System.Drawing.Point(4, 293);
            this.panel4.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(405, 88);
            this.panel4.TabIndex = 1;
            // 
            // panel5
            // 
            this.panel5.Controls.Add(this.button3);
            this.panel5.Location = new System.Drawing.Point(0, 83);
            this.panel5.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.panel5.Name = "panel5";
            this.panel5.Size = new System.Drawing.Size(405, 88);
            this.panel5.TabIndex = 3;
            // 
            // button3
            // 
            this.button3.BackColor = System.Drawing.Color.Transparent;
            this.button3.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button3.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button3.ForeColor = System.Drawing.Color.White;
            this.button3.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.button3.Location = new System.Drawing.Point(-28, -8);
            this.button3.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.button3.Name = "button3";
            this.button3.Padding = new System.Windows.Forms.Padding(45, 0, 0, 0);
            this.button3.Size = new System.Drawing.Size(462, 103);
            this.button3.TabIndex = 2;
            this.button3.Text = "                  Home";
            this.button3.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.button3.UseVisualStyleBackColor = false;
            // 
            // btnTask
            // 
            this.btnTask.BackColor = System.Drawing.Color.Transparent;
            this.btnTask.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(39)))), ((int)(((byte)(34)))), ((int)(((byte)(78)))));
            this.btnTask.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnTask.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnTask.ForeColor = System.Drawing.Color.White;
            this.btnTask.Image = global::Phase_1.Properties.Resources.icons8_task_completed_24;
            this.btnTask.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnTask.Location = new System.Drawing.Point(-28, -8);
            this.btnTask.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnTask.Name = "btnTask";
            this.btnTask.Padding = new System.Windows.Forms.Padding(45, 0, 0, 0);
            this.btnTask.Size = new System.Drawing.Size(462, 103);
            this.btnTask.TabIndex = 2;
            this.btnTask.Text = "                  Task assignment";
            this.btnTask.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnTask.UseVisualStyleBackColor = false;
            this.btnTask.Click += new System.EventHandler(this.btnTask_Click);
            // 
            // panel6
            // 
            this.panel6.Controls.Add(this.panel7);
            this.panel6.Controls.Add(this.btnPhongban);
            this.panel6.Location = new System.Drawing.Point(4, 391);
            this.panel6.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.panel6.Name = "panel6";
            this.panel6.Size = new System.Drawing.Size(405, 88);
            this.panel6.TabIndex = 4;
            // 
            // panel7
            // 
            this.panel7.Controls.Add(this.button5);
            this.panel7.Location = new System.Drawing.Point(0, 83);
            this.panel7.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.panel7.Name = "panel7";
            this.panel7.Size = new System.Drawing.Size(405, 88);
            this.panel7.TabIndex = 3;
            // 
            // button5
            // 
            this.button5.BackColor = System.Drawing.Color.Transparent;
            this.button5.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button5.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button5.ForeColor = System.Drawing.Color.White;
            this.button5.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.button5.Location = new System.Drawing.Point(-28, -8);
            this.button5.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.button5.Name = "button5";
            this.button5.Padding = new System.Windows.Forms.Padding(45, 0, 0, 0);
            this.button5.Size = new System.Drawing.Size(462, 103);
            this.button5.TabIndex = 2;
            this.button5.Text = "                  Home";
            this.button5.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.button5.UseVisualStyleBackColor = false;
            // 
            // btnPhongban
            // 
            this.btnPhongban.BackColor = System.Drawing.Color.Transparent;
            this.btnPhongban.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(39)))), ((int)(((byte)(34)))), ((int)(((byte)(78)))));
            this.btnPhongban.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnPhongban.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnPhongban.ForeColor = System.Drawing.Color.White;
            this.btnPhongban.Image = global::Phase_1.Properties.Resources.icons8_organization_chart_people_24;
            this.btnPhongban.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnPhongban.Location = new System.Drawing.Point(-28, -8);
            this.btnPhongban.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnPhongban.Name = "btnPhongban";
            this.btnPhongban.Padding = new System.Windows.Forms.Padding(45, 0, 0, 0);
            this.btnPhongban.Size = new System.Drawing.Size(462, 103);
            this.btnPhongban.TabIndex = 2;
            this.btnPhongban.Text = "                  List of departments";
            this.btnPhongban.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnPhongban.UseVisualStyleBackColor = false;
            this.btnPhongban.Click += new System.EventHandler(this.btnPhongban_Click);
            // 
            // panel8
            // 
            this.panel8.Controls.Add(this.panel9);
            this.panel8.Controls.Add(this.btnDeAn);
            this.panel8.Location = new System.Drawing.Point(4, 489);
            this.panel8.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.panel8.Name = "panel8";
            this.panel8.Size = new System.Drawing.Size(405, 88);
            this.panel8.TabIndex = 5;
            // 
            // panel9
            // 
            this.panel9.Controls.Add(this.button7);
            this.panel9.Location = new System.Drawing.Point(0, 83);
            this.panel9.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.panel9.Name = "panel9";
            this.panel9.Size = new System.Drawing.Size(405, 88);
            this.panel9.TabIndex = 3;
            // 
            // button7
            // 
            this.button7.BackColor = System.Drawing.Color.Transparent;
            this.button7.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button7.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button7.ForeColor = System.Drawing.Color.White;
            this.button7.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.button7.Location = new System.Drawing.Point(-28, -8);
            this.button7.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.button7.Name = "button7";
            this.button7.Padding = new System.Windows.Forms.Padding(45, 0, 0, 0);
            this.button7.Size = new System.Drawing.Size(462, 103);
            this.button7.TabIndex = 2;
            this.button7.Text = "                  Home";
            this.button7.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.button7.UseVisualStyleBackColor = false;
            // 
            // btnDeAn
            // 
            this.btnDeAn.BackColor = System.Drawing.Color.Transparent;
            this.btnDeAn.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(39)))), ((int)(((byte)(34)))), ((int)(((byte)(78)))));
            this.btnDeAn.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnDeAn.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnDeAn.ForeColor = System.Drawing.Color.White;
            this.btnDeAn.Image = global::Phase_1.Properties.Resources.icons8_project_24;
            this.btnDeAn.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnDeAn.Location = new System.Drawing.Point(-28, -8);
            this.btnDeAn.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnDeAn.Name = "btnDeAn";
            this.btnDeAn.Padding = new System.Windows.Forms.Padding(45, 0, 0, 0);
            this.btnDeAn.Size = new System.Drawing.Size(462, 103);
            this.btnDeAn.TabIndex = 2;
            this.btnDeAn.Text = "                  List of projects";
            this.btnDeAn.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnDeAn.UseVisualStyleBackColor = false;
            this.btnDeAn.Click += new System.EventHandler(this.btnDeAn_Click);
            // 
            // panel22
            // 
            this.panel22.Controls.Add(this.panel23);
            this.panel22.Controls.Add(this.btnThongBao);
            this.panel22.Location = new System.Drawing.Point(4, 587);
            this.panel22.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.panel22.Name = "panel22";
            this.panel22.Size = new System.Drawing.Size(405, 88);
            this.panel22.TabIndex = 7;
            // 
            // panel23
            // 
            this.panel23.Controls.Add(this.button22);
            this.panel23.Location = new System.Drawing.Point(0, 83);
            this.panel23.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.panel23.Name = "panel23";
            this.panel23.Size = new System.Drawing.Size(405, 88);
            this.panel23.TabIndex = 3;
            // 
            // button22
            // 
            this.button22.BackColor = System.Drawing.Color.Transparent;
            this.button22.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button22.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold);
            this.button22.ForeColor = System.Drawing.Color.White;
            this.button22.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.button22.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.button22.Location = new System.Drawing.Point(-28, -8);
            this.button22.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.button22.Name = "button22";
            this.button22.Padding = new System.Windows.Forms.Padding(45, 0, 0, 0);
            this.button22.Size = new System.Drawing.Size(462, 103);
            this.button22.TabIndex = 2;
            this.button22.Text = "                  Home";
            this.button22.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.button22.UseVisualStyleBackColor = false;
            // 
            // btnThongBao
            // 
            this.btnThongBao.BackColor = System.Drawing.Color.Transparent;
            this.btnThongBao.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(39)))), ((int)(((byte)(34)))), ((int)(((byte)(78)))));
            this.btnThongBao.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnThongBao.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold);
            this.btnThongBao.ForeColor = System.Drawing.Color.White;
            this.btnThongBao.Image = global::Phase_1.Properties.Resources.icons8_notification_24;
            this.btnThongBao.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnThongBao.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.btnThongBao.Location = new System.Drawing.Point(-28, -18);
            this.btnThongBao.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnThongBao.Name = "btnThongBao";
            this.btnThongBao.Padding = new System.Windows.Forms.Padding(45, 0, 0, 0);
            this.btnThongBao.Size = new System.Drawing.Size(462, 103);
            this.btnThongBao.TabIndex = 2;
            this.btnThongBao.Text = "                  Notification";
            this.btnThongBao.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnThongBao.UseVisualStyleBackColor = false;
            this.btnThongBao.Click += new System.EventHandler(this.btnThongBao_Click);
            // 
            // sidebarTimer
            // 
            this.sidebarTimer.Interval = 10;
            this.sidebarTimer.Tick += new System.EventHandler(this.sidebarTimer_Tick);
            // 
            // panel12
            // 
            this.panel12.BackColor = System.Drawing.Color.White;
            this.panel12.Controls.Add(this.picAvatar);
            this.panel12.Controls.Add(this.panel13);
            this.panel12.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel12.Location = new System.Drawing.Point(410, 0);
            this.panel12.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.panel12.Name = "panel12";
            this.panel12.Size = new System.Drawing.Size(1056, 91);
            this.panel12.TabIndex = 1;
            // 
            // picAvatar
            // 
            this.picAvatar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.picAvatar.Image = global::Phase_1.Properties.Resources.icons8_user_30;
            this.picAvatar.Location = new System.Drawing.Point(648, 18);
            this.picAvatar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.picAvatar.Name = "picAvatar";
            this.picAvatar.Size = new System.Drawing.Size(30, 30);
            this.picAvatar.SizeMode = System.Windows.Forms.PictureBoxSizeMode.AutoSize;
            this.picAvatar.TabIndex = 3;
            this.picAvatar.TabStop = false;
            this.picAvatar.Click += new System.EventHandler(this.picAvatar_Click);
            // 
            // panel13
            // 
            this.panel13.Controls.Add(this.btnGray);
            this.panel13.Controls.Add(this.panel24);
            this.panel13.Controls.Add(this.btnRed);
            this.panel13.Controls.Add(this.btnGreen);
            this.panel13.Dock = System.Windows.Forms.DockStyle.Right;
            this.panel13.Location = new System.Drawing.Point(702, 0);
            this.panel13.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.panel13.Name = "panel13";
            this.panel13.Size = new System.Drawing.Size(354, 91);
            this.panel13.TabIndex = 0;
            // 
            // btnGray
            // 
            this.btnGray.FlatAppearance.BorderSize = 0;
            this.btnGray.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnGray.Image = global::Phase_1.Properties.Resources.minimize;
            this.btnGray.Location = new System.Drawing.Point(204, 29);
            this.btnGray.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnGray.Name = "btnGray";
            this.btnGray.Size = new System.Drawing.Size(34, 35);
            this.btnGray.TabIndex = 2;
            this.btnGray.UseVisualStyleBackColor = true;
            this.btnGray.Click += new System.EventHandler(this.btnGray_Click);
            // 
            // panel24
            // 
            this.panel24.Location = new System.Drawing.Point(20, 91);
            this.panel24.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.panel24.Name = "panel24";
            this.panel24.Size = new System.Drawing.Size(212, 118);
            this.panel24.TabIndex = 1;
            // 
            // btnRed
            // 
            this.btnRed.FlatAppearance.BorderSize = 0;
            this.btnRed.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnRed.Image = global::Phase_1.Properties.Resources.close;
            this.btnRed.Location = new System.Drawing.Point(291, 29);
            this.btnRed.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnRed.Name = "btnRed";
            this.btnRed.Size = new System.Drawing.Size(34, 35);
            this.btnRed.TabIndex = 0;
            this.btnRed.UseVisualStyleBackColor = true;
            this.btnRed.Click += new System.EventHandler(this.btnRed_Click);
            // 
            // btnGreen
            // 
            this.btnGreen.FlatAppearance.BorderSize = 0;
            this.btnGreen.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnGreen.Image = global::Phase_1.Properties.Resources.maximize;
            this.btnGreen.Location = new System.Drawing.Point(248, 29);
            this.btnGreen.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnGreen.Name = "btnGreen";
            this.btnGreen.Size = new System.Drawing.Size(34, 35);
            this.btnGreen.TabIndex = 1;
            this.btnGreen.UseVisualStyleBackColor = true;
            this.btnGreen.Click += new System.EventHandler(this.btnGreen_Click);
            // 
            // panelContainer
            // 
            this.panelContainer.BackColor = System.Drawing.Color.White;
            this.panelContainer.Controls.Add(this.panelThongTin);
            this.panelContainer.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelContainer.Location = new System.Drawing.Point(410, 91);
            this.panelContainer.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.panelContainer.Name = "panelContainer";
            this.panelContainer.Size = new System.Drawing.Size(1056, 804);
            this.panelContainer.TabIndex = 2;
            // 
            // panelThongTin
            // 
            this.panelThongTin.BackColor = System.Drawing.Color.WhiteSmoke;
            this.panelThongTin.Controls.Add(this.button24);
            this.panelThongTin.Controls.Add(this.btnSignOut);
            this.panelThongTin.Controls.Add(this.btnViewProfile);
            this.panelThongTin.Location = new System.Drawing.Point(648, 5);
            this.panelThongTin.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.panelThongTin.MaximumSize = new System.Drawing.Size(208, 152);
            this.panelThongTin.MinimumSize = new System.Drawing.Size(208, 0);
            this.panelThongTin.Name = "panelThongTin";
            this.panelThongTin.Size = new System.Drawing.Size(208, 152);
            this.panelThongTin.TabIndex = 0;
            // 
            // button24
            // 
            this.button24.FlatAppearance.BorderSize = 0;
            this.button24.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button24.Font = new System.Drawing.Font("Segoe UI Semibold", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button24.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(59)))), ((int)(((byte)(52)))), ((int)(((byte)(118)))));
            this.button24.Location = new System.Drawing.Point(-18, 54);
            this.button24.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.button24.Name = "button24";
            this.button24.Padding = new System.Windows.Forms.Padding(30, 0, 0, 0);
            this.button24.Size = new System.Drawing.Size(328, 48);
            this.button24.TabIndex = 1;
            this.button24.Text = "Edit profile";
            this.button24.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.button24.UseVisualStyleBackColor = true;
            this.button24.Click += new System.EventHandler(this.button24_Click);
            // 
            // btnSignOut
            // 
            this.btnSignOut.FlatAppearance.BorderSize = 0;
            this.btnSignOut.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSignOut.Font = new System.Drawing.Font("Segoe UI Semibold", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSignOut.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(59)))), ((int)(((byte)(52)))), ((int)(((byte)(118)))));
            this.btnSignOut.Location = new System.Drawing.Point(-16, 103);
            this.btnSignOut.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnSignOut.Name = "btnSignOut";
            this.btnSignOut.Padding = new System.Windows.Forms.Padding(30, 0, 0, 0);
            this.btnSignOut.Size = new System.Drawing.Size(328, 48);
            this.btnSignOut.TabIndex = 1;
            this.btnSignOut.Text = "Sign out";
            this.btnSignOut.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnSignOut.UseVisualStyleBackColor = true;
            this.btnSignOut.Click += new System.EventHandler(this.btnSignOut_Click);
            // 
            // btnViewProfile
            // 
            this.btnViewProfile.FlatAppearance.BorderSize = 0;
            this.btnViewProfile.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnViewProfile.Font = new System.Drawing.Font("Segoe UI Semibold", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnViewProfile.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(59)))), ((int)(((byte)(52)))), ((int)(((byte)(118)))));
            this.btnViewProfile.Location = new System.Drawing.Point(-16, 2);
            this.btnViewProfile.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnViewProfile.Name = "btnViewProfile";
            this.btnViewProfile.Padding = new System.Windows.Forms.Padding(30, 0, 0, 0);
            this.btnViewProfile.Size = new System.Drawing.Size(328, 48);
            this.btnViewProfile.TabIndex = 1;
            this.btnViewProfile.Text = "Your profile";
            this.btnViewProfile.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnViewProfile.UseVisualStyleBackColor = true;
            this.btnViewProfile.Click += new System.EventHandler(this.btnViewProfile_Click);
            // 
            // ProfileTimer
            // 
            this.ProfileTimer.Interval = 10;
            this.ProfileTimer.Tick += new System.EventHandler(this.ProfileTimer_Tick);
            // 
            // NhanVien
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(1466, 895);
            this.Controls.Add(this.panelContainer);
            this.Controls.Add(this.panel12);
            this.Controls.Add(this.sidebar);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "NhanVien";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form1";
            this.sidebar.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.menuButton)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel3.ResumeLayout(false);
            this.panel4.ResumeLayout(false);
            this.panel5.ResumeLayout(false);
            this.panel6.ResumeLayout(false);
            this.panel7.ResumeLayout(false);
            this.panel8.ResumeLayout(false);
            this.panel9.ResumeLayout(false);
            this.panel22.ResumeLayout(false);
            this.panel23.ResumeLayout(false);
            this.panel12.ResumeLayout(false);
            this.panel12.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picAvatar)).EndInit();
            this.panel13.ResumeLayout(false);
            this.panelContainer.ResumeLayout(false);
            this.panelThongTin.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.FlowLayoutPanel sidebar;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.PictureBox menuButton;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button btnHome;
        private System.Windows.Forms.Panel panel6;
        private System.Windows.Forms.Panel panel7;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.Button btnPhongban;
        private System.Windows.Forms.Panel panel8;
        private System.Windows.Forms.Panel panel9;
        private System.Windows.Forms.Button button7;
        private System.Windows.Forms.Button btnDeAn;
        private System.Windows.Forms.Timer sidebarTimer;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Panel panel12;
        private System.Windows.Forms.Panel panel13;
        private System.Windows.Forms.Button btnRed;
        private System.Windows.Forms.Button btnGray;
        private System.Windows.Forms.Button btnGreen;
        private System.Windows.Forms.Panel panelContainer;
        private System.Windows.Forms.Panel panelThongTin;
        private System.Windows.Forms.Button button24;
        private System.Windows.Forms.Button btnSignOut;
        private System.Windows.Forms.Button btnViewProfile;
        private System.Windows.Forms.Panel panel24;
        private System.Windows.Forms.PictureBox picAvatar;
        private System.Windows.Forms.Timer ProfileTimer;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.Panel panel5;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button btnTask;
        private System.Windows.Forms.Panel panel22;
        private System.Windows.Forms.Panel panel23;
        private System.Windows.Forms.Button button22;
        private System.Windows.Forms.Button btnThongBao;
    }
}
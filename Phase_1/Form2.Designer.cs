namespace Phase_1
{
    partial class Form2
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form2));
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.button3 = new System.Windows.Forms.Button();
            this.filterBox = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.createNewButton = new System.Windows.Forms.Button();
            this.lbl_tablename = new System.Windows.Forms.Label();
            this.txt_name = new System.Windows.Forms.TextBox();
            this.bt_createtable = new System.Windows.Forms.Button();
            this.lbl_username = new System.Windows.Forms.Label();
            this.bt_createuser = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.bt_createrole = new System.Windows.Forms.Button();
            this.dataGridView2 = new System.Windows.Forms.DataGridView();
            this.Name = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DataType = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.PrimaryKey = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.objectNameTextBox = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.dropButton = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.detailButton = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(299, 309);
            this.dataGridView1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 62;
            this.dataGridView1.Size = new System.Drawing.Size(862, 292);
            this.dataGridView1.TabIndex = 1;
            this.dataGridView1.CellMouseClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.dataGridView1_CellMouseClick);
            // 
            // button3
            // 
            this.button3.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.button3.FlatAppearance.BorderColor = System.Drawing.Color.White;
            this.button3.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button3.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button3.ForeColor = System.Drawing.Color.SteelBlue;
            this.button3.Location = new System.Drawing.Point(1075, 661);
            this.button3.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(150, 68);
            this.button3.TabIndex = 4;
            this.button3.Text = "Back";
            this.button3.UseVisualStyleBackColor = false;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // filterBox
            // 
            this.filterBox.FormattingEnabled = true;
            this.filterBox.Items.AddRange(new object[] {
            "Table",
            "View",
            "User",
            "Role"});
            this.filterBox.Location = new System.Drawing.Point(482, 145);
            this.filterBox.Name = "filterBox";
            this.filterBox.Size = new System.Drawing.Size(406, 28);
            this.filterBox.TabIndex = 5;
            this.filterBox.SelectedIndexChanged += new System.EventHandler(this.filterBox_SelectedIndexChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(330, 145);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(73, 28);
            this.label1.TabIndex = 7;
            this.label1.Text = "Filter";
            // 
            // createNewButton
            // 
            this.createNewButton.BackColor = System.Drawing.Color.DarkTurquoise;
            this.createNewButton.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.createNewButton.Location = new System.Drawing.Point(927, 141);
            this.createNewButton.Name = "createNewButton";
            this.createNewButton.Size = new System.Drawing.Size(121, 36);
            this.createNewButton.TabIndex = 8;
            this.createNewButton.Text = "Tạo mới";
            this.createNewButton.UseVisualStyleBackColor = false;
            this.createNewButton.Click += new System.EventHandler(this.button2_Click);
            // 
            // lbl_tablename
            // 
            this.lbl_tablename.AutoSize = true;
            this.lbl_tablename.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.lbl_tablename.Location = new System.Drawing.Point(326, 255);
            this.lbl_tablename.Name = "lbl_tablename";
            this.lbl_tablename.Size = new System.Drawing.Size(145, 28);
            this.lbl_tablename.TabIndex = 9;
            this.lbl_tablename.Text = "Table\'s name";
            this.lbl_tablename.Click += new System.EventHandler(this.label2_Click);
            // 
            // txt_name
            // 
            this.txt_name.Location = new System.Drawing.Point(482, 255);
            this.txt_name.Name = "txt_name";
            this.txt_name.Size = new System.Drawing.Size(406, 26);
            this.txt_name.TabIndex = 10;
            // 
            // bt_createtable
            // 
            this.bt_createtable.Location = new System.Drawing.Point(901, 564);
            this.bt_createtable.Name = "bt_createtable";
            this.bt_createtable.Size = new System.Drawing.Size(124, 37);
            this.bt_createtable.TabIndex = 12;
            this.bt_createtable.Text = "Create table";
            this.bt_createtable.UseVisualStyleBackColor = true;
            this.bt_createtable.Click += new System.EventHandler(this.bt_createtable_Click);
            // 
            // lbl_username
            // 
            this.lbl_username.AutoSize = true;
            this.lbl_username.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_username.Location = new System.Drawing.Point(320, 255);
            this.lbl_username.Name = "lbl_username";
            this.lbl_username.Size = new System.Drawing.Size(138, 28);
            this.lbl_username.TabIndex = 13;
            this.lbl_username.Text = "User\'s name";
            // 
            // bt_createuser
            // 
            this.bt_createuser.BackColor = System.Drawing.Color.LightGreen;
            this.bt_createuser.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bt_createuser.Location = new System.Drawing.Point(928, 251);
            this.bt_createuser.Name = "bt_createuser";
            this.bt_createuser.Size = new System.Drawing.Size(135, 34);
            this.bt_createuser.TabIndex = 14;
            this.bt_createuser.Text = "Create user";
            this.bt_createuser.UseVisualStyleBackColor = false;
            this.bt_createuser.Click += new System.EventHandler(this.button4_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(320, 254);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(136, 28);
            this.label2.TabIndex = 15;
            this.label2.Text = "Role\'s name";
            this.label2.Click += new System.EventHandler(this.label2_Click_1);
            // 
            // bt_createrole
            // 
            this.bt_createrole.BackColor = System.Drawing.Color.LightGreen;
            this.bt_createrole.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bt_createrole.Location = new System.Drawing.Point(927, 249);
            this.bt_createrole.Name = "bt_createrole";
            this.bt_createrole.Size = new System.Drawing.Size(136, 37);
            this.bt_createrole.TabIndex = 16;
            this.bt_createrole.Text = "Create role";
            this.bt_createrole.UseVisualStyleBackColor = false;
            this.bt_createrole.Click += new System.EventHandler(this.bt_createrole_Click);
            // 
            // dataGridView2
            // 
            this.dataGridView2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView2.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Name,
            this.DataType,
            this.PrimaryKey});
            this.dataGridView2.Location = new System.Drawing.Point(373, 344);
            this.dataGridView2.Name = "dataGridView2";
            this.dataGridView2.RowHeadersWidth = 62;
            this.dataGridView2.RowTemplate.Height = 28;
            this.dataGridView2.Size = new System.Drawing.Size(621, 146);
            this.dataGridView2.TabIndex = 17;
            this.dataGridView2.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView2_CellContentClick);
            // 
            // Name
            // 
            this.Name.HeaderText = "Name";
            this.Name.MinimumWidth = 8;
            this.Name.Name = "Name";
            this.Name.Width = 150;
            // 
            // DataType
            // 
            this.DataType.HeaderText = "DataType";
            this.DataType.Items.AddRange(new object[] {
            "varchar2(100)",
            "char(100)",
            "date",
            "number"});
            this.DataType.MinimumWidth = 8;
            this.DataType.Name = "DataType";
            this.DataType.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.DataType.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.DataType.Width = 150;
            // 
            // PrimaryKey
            // 
            this.PrimaryKey.HeaderText = "Primary Key";
            this.PrimaryKey.MinimumWidth = 8;
            this.PrimaryKey.Name = "PrimaryKey";
            this.PrimaryKey.Width = 150;
            // 
            // objectNameTextBox
            // 
            this.objectNameTextBox.Location = new System.Drawing.Point(482, 200);
            this.objectNameTextBox.Name = "objectNameTextBox";
            this.objectNameTextBox.ReadOnly = true;
            this.objectNameTextBox.Size = new System.Drawing.Size(406, 26);
            this.objectNameTextBox.TabIndex = 18;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(330, 196);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(83, 28);
            this.label3.TabIndex = 19;
            this.label3.Text = "Object";
            // 
            // dropButton
            // 
            this.dropButton.BackColor = System.Drawing.Color.Tomato;
            this.dropButton.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dropButton.Location = new System.Drawing.Point(927, 194);
            this.dropButton.Name = "dropButton";
            this.dropButton.Size = new System.Drawing.Size(98, 37);
            this.dropButton.TabIndex = 20;
            this.dropButton.Text = "Drop";
            this.dropButton.UseVisualStyleBackColor = false;
            this.dropButton.Click += new System.EventHandler(this.dropButton_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::Phase_1.Properties.Resources.ObjectDatabase;
            this.pictureBox1.Location = new System.Drawing.Point(-4, -34);
            this.pictureBox1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(1482, 923);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            this.pictureBox1.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // detailButton
            // 
            this.detailButton.BackColor = System.Drawing.Color.LightGreen;
            this.detailButton.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.detailButton.Location = new System.Drawing.Point(1040, 194);
            this.detailButton.Name = "detailButton";
            this.detailButton.Size = new System.Drawing.Size(144, 37);
            this.detailButton.TabIndex = 21;
            this.detailButton.Text = "View Detail";
            this.detailButton.UseVisualStyleBackColor = false;
            this.detailButton.Click += new System.EventHandler(this.detailButton_Click);
            // 
            // Form2
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1476, 863);
            this.Controls.Add(this.detailButton);
            this.Controls.Add(this.dropButton);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.objectNameTextBox);
            this.Controls.Add(this.dataGridView2);
            this.Controls.Add(this.bt_createrole);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.bt_createuser);
            this.Controls.Add(this.lbl_username);
            this.Controls.Add(this.bt_createtable);
            this.Controls.Add(this.txt_name);
            this.Controls.Add(this.lbl_tablename);
            this.Controls.Add(this.createNewButton);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.filterBox);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.pictureBox1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Text = "DATABASE OBJECT";
            this.Load += new System.EventHandler(this.Form2_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.ComboBox filterBox;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button createNewButton;
        private System.Windows.Forms.Label lbl_tablename;
        private System.Windows.Forms.TextBox txt_name;
        private System.Windows.Forms.Button bt_createtable;
        private System.Windows.Forms.Label lbl_username;
        private System.Windows.Forms.Button bt_createuser;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button bt_createrole;
        private System.Windows.Forms.DataGridView dataGridView2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Name;
        private System.Windows.Forms.DataGridViewComboBoxColumn DataType;
        private System.Windows.Forms.DataGridViewCheckBoxColumn PrimaryKey;
        private System.Windows.Forms.TextBox objectNameTextBox;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button dropButton;
        private System.Windows.Forms.Button detailButton;
    }
}
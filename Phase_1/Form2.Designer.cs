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
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.button3 = new System.Windows.Forms.Button();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.button1 = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.button2 = new System.Windows.Forms.Button();
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
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).BeginInit();
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
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::Phase_1.Properties.Resources.ObjectDatabase;
            this.pictureBox1.Location = new System.Drawing.Point(28, 14);
            this.pictureBox1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(1482, 923);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            this.pictureBox1.Click += new System.EventHandler(this.pictureBox1_Click);
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
            // comboBox1
            // 
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Items.AddRange(new object[] {
            "Table",
            "View",
            "User",
            "Role"});
            this.comboBox1.Location = new System.Drawing.Point(482, 177);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(406, 28);
            this.comboBox1.TabIndex = 5;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(939, 175);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(98, 31);
            this.button1.TabIndex = 6;
            this.button1.Text = "Xem";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(369, 180);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(55, 20);
            this.label1.TabIndex = 7;
            this.label1.Text = "Object";
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(1075, 172);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(86, 34);
            this.button2.TabIndex = 8;
            this.button2.Text = "Tạo mới";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // lbl_tablename
            // 
            this.lbl_tablename.AutoSize = true;
            this.lbl_tablename.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.lbl_tablename.Location = new System.Drawing.Point(294, 255);
            this.lbl_tablename.Name = "lbl_tablename";
            this.lbl_tablename.Size = new System.Drawing.Size(130, 25);
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
            this.lbl_username.Location = new System.Drawing.Point(326, 255);
            this.lbl_username.Name = "lbl_username";
            this.lbl_username.Size = new System.Drawing.Size(98, 20);
            this.lbl_username.TabIndex = 13;
            this.lbl_username.Text = "User\'s name";
            // 
            // bt_createuser
            // 
            this.bt_createuser.Location = new System.Drawing.Point(972, 252);
            this.bt_createuser.Name = "bt_createuser";
            this.bt_createuser.Size = new System.Drawing.Size(135, 34);
            this.bt_createuser.TabIndex = 14;
            this.bt_createuser.Text = "Create user";
            this.bt_createuser.UseVisualStyleBackColor = true;
            this.bt_createuser.Click += new System.EventHandler(this.button4_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(327, 260);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(97, 20);
            this.label2.TabIndex = 15;
            this.label2.Text = "Role\'s name";
            // 
            // bt_createrole
            // 
            this.bt_createrole.Location = new System.Drawing.Point(986, 251);
            this.bt_createrole.Name = "bt_createrole";
            this.bt_createrole.Size = new System.Drawing.Size(106, 37);
            this.bt_createrole.TabIndex = 16;
            this.bt_createrole.Text = "Create role";
            this.bt_createrole.UseVisualStyleBackColor = true;
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
            // Form2
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1476, 863);
            this.Controls.Add(this.dataGridView2);
            this.Controls.Add(this.bt_createrole);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.bt_createuser);
            this.Controls.Add(this.lbl_username);
            this.Controls.Add(this.bt_createtable);
            this.Controls.Add(this.txt_name);
            this.Controls.Add(this.lbl_tablename);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.comboBox1);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.pictureBox1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Text = "DATABASE OBJECT";
            this.Load += new System.EventHandler(this.Form2_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button button2;
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
    }
}
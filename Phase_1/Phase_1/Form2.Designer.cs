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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
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
            this.label2 = new System.Windows.Forms.Label();
            this.bt_createrole = new System.Windows.Forms.Button();
            this.dataGridView2 = new System.Windows.Forms.DataGridView();
            this.Name = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DataType = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.PrimaryKey = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.objectNameTextBox = new System.Windows.Forms.TextBox();
            this.objectLabel = new System.Windows.Forms.Label();
            this.dropButton = new System.Windows.Forms.Button();
            this.detailButton = new System.Windows.Forms.Button();
            this.pwTextBox = new System.Windows.Forms.TextBox();
            this.pwLabel = new System.Windows.Forms.Label();
            this.pwCheckBox = new System.Windows.Forms.CheckBox();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.BackgroundColor = System.Drawing.Color.WhiteSmoke;
            this.dataGridView1.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dataGridView1.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(44)))), ((int)(((byte)(62)))), ((int)(((byte)(80)))));
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Segoe UI", 10F, System.Drawing.FontStyle.Bold);
            dataGridViewCellStyle1.ForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridView1.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.Color.Black;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dataGridView1.DefaultCellStyle = dataGridViewCellStyle2;
            this.dataGridView1.EnableHeadersVisualStyles = false;
            this.dataGridView1.Location = new System.Drawing.Point(410, 483);
            this.dataGridView1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.dataGridView1.MultiSelect = false;
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
            this.dataGridView1.RowHeadersWidth = 62;
            this.dataGridView1.RowTemplate.Height = 35;
            this.dataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView1.Size = new System.Drawing.Size(754, 380);
            this.dataGridView1.TabIndex = 1;
            this.dataGridView1.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            this.dataGridView1.CellMouseClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.dataGridView1_CellMouseClick);
            // 
            // button3
            // 
            this.button3.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.button3.FlatAppearance.BorderColor = System.Drawing.Color.White;
            this.button3.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button3.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button3.ForeColor = System.Drawing.Color.SteelBlue;
            this.button3.Location = new System.Drawing.Point(1028, 888);
            this.button3.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(136, 51);
            this.button3.TabIndex = 4;
            this.button3.Text = "Back";
            this.button3.UseVisualStyleBackColor = false;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // filterBox
            // 
            this.filterBox.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.filterBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.filterBox.FormattingEnabled = true;
            this.filterBox.Items.AddRange(new object[] {
            "Table",
            "View",
            "User",
            "Role"});
            this.filterBox.Location = new System.Drawing.Point(519, 249);
            this.filterBox.Name = "filterBox";
            this.filterBox.Size = new System.Drawing.Size(406, 33);
            this.filterBox.TabIndex = 5;
            this.filterBox.SelectedIndexChanged += new System.EventHandler(this.filterBox_SelectedIndexChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.label1.Location = new System.Drawing.Point(322, 254);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(84, 29);
            this.label1.TabIndex = 7;
            this.label1.Text = "Filter";
            // 
            // createNewButton
            // 
            this.createNewButton.BackColor = System.Drawing.Color.SteelBlue;
            this.createNewButton.DialogResult = System.Windows.Forms.DialogResult.No;
            this.createNewButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.createNewButton.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.createNewButton.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.createNewButton.Location = new System.Drawing.Point(960, 242);
            this.createNewButton.Name = "createNewButton";
            this.createNewButton.Size = new System.Drawing.Size(302, 46);
            this.createNewButton.TabIndex = 8;
            this.createNewButton.Text = "Create new";
            this.createNewButton.UseVisualStyleBackColor = false;
            this.createNewButton.Click += new System.EventHandler(this.button2_Click);
            // 
            // lbl_tablename
            // 
            this.lbl_tablename.AutoSize = true;
            this.lbl_tablename.BackColor = System.Drawing.Color.Transparent;
            this.lbl_tablename.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_tablename.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.lbl_tablename.Location = new System.Drawing.Point(322, 311);
            this.lbl_tablename.Name = "lbl_tablename";
            this.lbl_tablename.Size = new System.Drawing.Size(170, 29);
            this.lbl_tablename.TabIndex = 9;
            this.lbl_tablename.Text = "Table\'s name";
            this.lbl_tablename.Click += new System.EventHandler(this.label2_Click);
            // 
            // txt_name
            // 
            this.txt_name.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.txt_name.Font = new System.Drawing.Font("Verdana", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_name.Location = new System.Drawing.Point(519, 311);
            this.txt_name.Name = "txt_name";
            this.txt_name.Size = new System.Drawing.Size(406, 31);
            this.txt_name.TabIndex = 10;
            // 
            // bt_createtable
            // 
            this.bt_createtable.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.bt_createtable.FlatAppearance.BorderColor = System.Drawing.Color.White;
            this.bt_createtable.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.bt_createtable.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bt_createtable.ForeColor = System.Drawing.Color.SteelBlue;
            this.bt_createtable.Location = new System.Drawing.Point(184, 562);
            this.bt_createtable.Name = "bt_createtable";
            this.bt_createtable.Size = new System.Drawing.Size(136, 51);
            this.bt_createtable.TabIndex = 12;
            this.bt_createtable.Text = "Create";
            this.bt_createtable.UseVisualStyleBackColor = false;
            this.bt_createtable.Click += new System.EventHandler(this.bt_createtable_Click);
            // 
            // lbl_username
            // 
            this.lbl_username.AutoSize = true;
            this.lbl_username.BackColor = System.Drawing.Color.Transparent;
            this.lbl_username.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_username.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.lbl_username.Location = new System.Drawing.Point(322, 312);
            this.lbl_username.Name = "lbl_username";
            this.lbl_username.Size = new System.Drawing.Size(157, 29);
            this.lbl_username.TabIndex = 13;
            this.lbl_username.Text = "User\'s name";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.label2.Location = new System.Drawing.Point(322, 318);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(176, 29);
            this.label2.TabIndex = 15;
            this.label2.Text = "Role\'s name";
            this.label2.Click += new System.EventHandler(this.label2_Click_1);
            // 
            // bt_createrole
            // 
            this.bt_createrole.BackColor = System.Drawing.Color.SteelBlue;
            this.bt_createrole.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.bt_createrole.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bt_createrole.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.bt_createrole.Location = new System.Drawing.Point(962, 365);
            this.bt_createrole.Name = "bt_createrole";
            this.bt_createrole.Size = new System.Drawing.Size(302, 51);
            this.bt_createrole.TabIndex = 16;
            this.bt_createrole.Text = "Create it";
            this.bt_createrole.UseVisualStyleBackColor = false;
            this.bt_createrole.Click += new System.EventHandler(this.bt_createrole_Click);
            // 
            // dataGridView2
            // 
            this.dataGridView2.BackgroundColor = System.Drawing.SystemColors.ActiveCaption;
            this.dataGridView2.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.dataGridView2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView2.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Name,
            this.DataType,
            this.PrimaryKey});
            this.dataGridView2.GridColor = System.Drawing.SystemColors.ControlLightLight;
            this.dataGridView2.Location = new System.Drawing.Point(421, 481);
            this.dataGridView2.Name = "dataGridView2";
            this.dataGridView2.RowHeadersWidth = 62;
            this.dataGridView2.RowTemplate.Height = 28;
            this.dataGridView2.Size = new System.Drawing.Size(765, 380);
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
            this.objectNameTextBox.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.objectNameTextBox.Font = new System.Drawing.Font("Verdana", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.objectNameTextBox.Location = new System.Drawing.Point(519, 311);
            this.objectNameTextBox.Name = "objectNameTextBox";
            this.objectNameTextBox.ReadOnly = true;
            this.objectNameTextBox.Size = new System.Drawing.Size(406, 31);
            this.objectNameTextBox.TabIndex = 18;
            // 
            // objectLabel
            // 
            this.objectLabel.AutoSize = true;
            this.objectLabel.BackColor = System.Drawing.Color.Transparent;
            this.objectLabel.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.objectLabel.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.objectLabel.Location = new System.Drawing.Point(322, 318);
            this.objectLabel.Name = "objectLabel";
            this.objectLabel.Size = new System.Drawing.Size(101, 29);
            this.objectLabel.TabIndex = 19;
            this.objectLabel.Text = "Object";
            // 
            // dropButton
            // 
            this.dropButton.BackColor = System.Drawing.Color.Tomato;
            this.dropButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.dropButton.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dropButton.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.dropButton.Location = new System.Drawing.Point(962, 302);
            this.dropButton.Name = "dropButton";
            this.dropButton.Size = new System.Drawing.Size(112, 49);
            this.dropButton.TabIndex = 20;
            this.dropButton.Text = "Drop";
            this.dropButton.UseVisualStyleBackColor = false;
            this.dropButton.Click += new System.EventHandler(this.dropButton_Click);
            // 
            // detailButton
            // 
            this.detailButton.BackColor = System.Drawing.Color.SteelBlue;
            this.detailButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.detailButton.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.detailButton.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.detailButton.Location = new System.Drawing.Point(1078, 303);
            this.detailButton.Name = "detailButton";
            this.detailButton.Size = new System.Drawing.Size(183, 46);
            this.detailButton.TabIndex = 21;
            this.detailButton.Text = "View Detail";
            this.detailButton.UseVisualStyleBackColor = false;
            this.detailButton.Click += new System.EventHandler(this.detailButton_Click);
            // 
            // pwTextBox
            // 
            this.pwTextBox.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.pwTextBox.Font = new System.Drawing.Font("Verdana", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.pwTextBox.Location = new System.Drawing.Point(519, 374);
            this.pwTextBox.Name = "pwTextBox";
            this.pwTextBox.Size = new System.Drawing.Size(406, 31);
            this.pwTextBox.TabIndex = 22;
            this.pwTextBox.TextChanged += new System.EventHandler(this.pwTextBox_TextChanged);
            // 
            // pwLabel
            // 
            this.pwLabel.AutoSize = true;
            this.pwLabel.BackColor = System.Drawing.Color.Transparent;
            this.pwLabel.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.pwLabel.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.pwLabel.Location = new System.Drawing.Point(324, 382);
            this.pwLabel.Name = "pwLabel";
            this.pwLabel.Size = new System.Drawing.Size(144, 29);
            this.pwLabel.TabIndex = 23;
            this.pwLabel.Text = "Password";
            // 
            // pwCheckBox
            // 
            this.pwCheckBox.AutoSize = true;
            this.pwCheckBox.BackColor = System.Drawing.Color.Transparent;
            this.pwCheckBox.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.pwCheckBox.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.pwCheckBox.Location = new System.Drawing.Point(519, 442);
            this.pwCheckBox.Name = "pwCheckBox";
            this.pwCheckBox.Size = new System.Drawing.Size(226, 33);
            this.pwCheckBox.TabIndex = 24;
            this.pwCheckBox.Text = "Use password";
            this.pwCheckBox.UseVisualStyleBackColor = false;
            this.pwCheckBox.CheckedChanged += new System.EventHandler(this.pwCheckBox_CheckedChanged);
            // 
            // Form2
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::Phase_1.Properties.Resources.ObjectDatabase;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(1476, 992);
            this.Controls.Add(this.pwCheckBox);
            this.Controls.Add(this.pwLabel);
            this.Controls.Add(this.pwTextBox);
            this.Controls.Add(this.detailButton);
            this.Controls.Add(this.dropButton);
            this.Controls.Add(this.objectLabel);
            this.Controls.Add(this.objectNameTextBox);
            this.Controls.Add(this.dataGridView2);
            this.Controls.Add(this.bt_createrole);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.lbl_username);
            this.Controls.Add(this.bt_createtable);
            this.Controls.Add(this.txt_name);
            this.Controls.Add(this.lbl_tablename);
            this.Controls.Add(this.createNewButton);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.filterBox);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.dataGridView1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Text = "DATABASE OBJECT";
            this.Load += new System.EventHandler(this.Form2_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.ComboBox filterBox;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button createNewButton;
        private System.Windows.Forms.Label lbl_tablename;
        private System.Windows.Forms.TextBox txt_name;
        private System.Windows.Forms.Button bt_createtable;
        private System.Windows.Forms.Label lbl_username;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button bt_createrole;
        private System.Windows.Forms.DataGridView dataGridView2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Name;
        private System.Windows.Forms.DataGridViewComboBoxColumn DataType;
        private System.Windows.Forms.DataGridViewCheckBoxColumn PrimaryKey;
        private System.Windows.Forms.TextBox objectNameTextBox;
        private System.Windows.Forms.Label objectLabel;
        private System.Windows.Forms.Button dropButton;
        private System.Windows.Forms.Button detailButton;
        private System.Windows.Forms.TextBox pwTextBox;
        private System.Windows.Forms.Label pwLabel;
        private System.Windows.Forms.CheckBox pwCheckBox;
    }
}
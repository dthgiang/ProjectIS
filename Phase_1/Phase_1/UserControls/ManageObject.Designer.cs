namespace Phase_1
{
    partial class ManageObject
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            this.pwCheckBox = new System.Windows.Forms.CheckBox();
            this.pwTextBox = new System.Windows.Forms.TextBox();
            this.detailButton = new System.Windows.Forms.Button();
            this.dropButton = new System.Windows.Forms.Button();
            this.objectLabel = new System.Windows.Forms.Label();
            this.objectNameTextBox = new System.Windows.Forms.TextBox();
            this.PrimaryKey = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.DataType = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.Name = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pwLabel = new System.Windows.Forms.Label();
            this.dataGridView2 = new System.Windows.Forms.DataGridView();
            this.bt_createrole = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.lbl_username = new System.Windows.Forms.Label();
            this.bt_createtable = new System.Windows.Forms.Button();
            this.txt_name = new System.Windows.Forms.TextBox();
            this.lbl_tablename = new System.Windows.Forms.Label();
            this.createNewButton = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.filterBox = new System.Windows.Forms.ComboBox();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel2 = new System.Windows.Forms.Panel();
            this.label3 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // pwCheckBox
            // 
            this.pwCheckBox.AutoSize = true;
            this.pwCheckBox.BackColor = System.Drawing.Color.Transparent;
            this.pwCheckBox.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.pwCheckBox.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(16)))), ((int)(((byte)(162)))), ((int)(((byte)(126)))));
            this.pwCheckBox.Location = new System.Drawing.Point(431, 423);
            this.pwCheckBox.Name = "pwCheckBox";
            this.pwCheckBox.Size = new System.Drawing.Size(250, 33);
            this.pwCheckBox.TabIndex = 43;
            this.pwCheckBox.Text = "   Use password";
            this.pwCheckBox.UseVisualStyleBackColor = false;
            // 
            // pwTextBox
            // 
            this.pwTextBox.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.pwTextBox.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.pwTextBox.Font = new System.Drawing.Font("Verdana", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.pwTextBox.Location = new System.Drawing.Point(431, 370);
            this.pwTextBox.Name = "pwTextBox";
            this.pwTextBox.PasswordChar = '*';
            this.pwTextBox.Size = new System.Drawing.Size(456, 24);
            this.pwTextBox.TabIndex = 41;
            // 
            // detailButton
            // 
            this.detailButton.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(16)))), ((int)(((byte)(162)))), ((int)(((byte)(126)))));
            this.detailButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.detailButton.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.detailButton.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.detailButton.Location = new System.Drawing.Point(1074, 290);
            this.detailButton.Name = "detailButton";
            this.detailButton.Size = new System.Drawing.Size(183, 46);
            this.detailButton.TabIndex = 40;
            this.detailButton.Text = "View Detail";
            this.detailButton.UseVisualStyleBackColor = false;
            this.detailButton.Click += new System.EventHandler(this.detailButton_Click);
            // 
            // dropButton
            // 
            this.dropButton.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(16)))), ((int)(((byte)(162)))), ((int)(((byte)(126)))));
            this.dropButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.dropButton.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dropButton.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.dropButton.Location = new System.Drawing.Point(958, 289);
            this.dropButton.Name = "dropButton";
            this.dropButton.Size = new System.Drawing.Size(112, 49);
            this.dropButton.TabIndex = 39;
            this.dropButton.Text = "Drop";
            this.dropButton.UseVisualStyleBackColor = false;
            this.dropButton.Click += new System.EventHandler(this.dropButton_Click);
            // 
            // objectLabel
            // 
            this.objectLabel.AutoSize = true;
            this.objectLabel.BackColor = System.Drawing.Color.Transparent;
            this.objectLabel.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.objectLabel.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(16)))), ((int)(((byte)(162)))), ((int)(((byte)(126)))));
            this.objectLabel.Location = new System.Drawing.Point(174, 302);
            this.objectLabel.Name = "objectLabel";
            this.objectLabel.Size = new System.Drawing.Size(101, 29);
            this.objectLabel.TabIndex = 38;
            this.objectLabel.Text = "Object";
            // 
            // objectNameTextBox
            // 
            this.objectNameTextBox.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.objectNameTextBox.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.objectNameTextBox.Font = new System.Drawing.Font("Verdana", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.objectNameTextBox.Location = new System.Drawing.Point(431, 302);
            this.objectNameTextBox.Name = "objectNameTextBox";
            this.objectNameTextBox.ReadOnly = true;
            this.objectNameTextBox.Size = new System.Drawing.Size(456, 24);
            this.objectNameTextBox.TabIndex = 37;
            // 
            // PrimaryKey
            // 
            this.PrimaryKey.HeaderText = "Primary Key";
            this.PrimaryKey.MinimumWidth = 8;
            this.PrimaryKey.Name = "PrimaryKey";
            this.PrimaryKey.Width = 150;
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
            // Name
            // 
            this.Name.HeaderText = "Name";
            this.Name.MinimumWidth = 8;
            this.Name.Name = "Name";
            this.Name.Width = 150;
            // 
            // pwLabel
            // 
            this.pwLabel.AutoSize = true;
            this.pwLabel.BackColor = System.Drawing.Color.Transparent;
            this.pwLabel.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.pwLabel.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(16)))), ((int)(((byte)(162)))), ((int)(((byte)(126)))));
            this.pwLabel.Location = new System.Drawing.Point(174, 370);
            this.pwLabel.Name = "pwLabel";
            this.pwLabel.Size = new System.Drawing.Size(144, 29);
            this.pwLabel.TabIndex = 42;
            this.pwLabel.Text = "Password";
            // 
            // dataGridView2
            // 
            this.dataGridView2.BackgroundColor = System.Drawing.Color.White;
            this.dataGridView2.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.dataGridView2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView2.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Name,
            this.DataType,
            this.PrimaryKey});
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.White;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.Color.Black;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dataGridView2.DefaultCellStyle = dataGridViewCellStyle1;
            this.dataGridView2.GridColor = System.Drawing.SystemColors.ControlLightLight;
            this.dataGridView2.Location = new System.Drawing.Point(470, 481);
            this.dataGridView2.Name = "dataGridView2";
            this.dataGridView2.RowHeadersWidth = 62;
            dataGridViewCellStyle2.BackColor = System.Drawing.Color.White;
            this.dataGridView2.RowsDefaultCellStyle = dataGridViewCellStyle2;
            this.dataGridView2.RowTemplate.Height = 28;
            this.dataGridView2.Size = new System.Drawing.Size(517, 380);
            this.dataGridView2.TabIndex = 36;
            this.dataGridView2.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView2_CellContentClick);
            // 
            // bt_createrole
            // 
            this.bt_createrole.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(16)))), ((int)(((byte)(162)))), ((int)(((byte)(126)))));
            this.bt_createrole.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.bt_createrole.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bt_createrole.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.bt_createrole.Location = new System.Drawing.Point(958, 352);
            this.bt_createrole.Name = "bt_createrole";
            this.bt_createrole.Size = new System.Drawing.Size(302, 51);
            this.bt_createrole.TabIndex = 35;
            this.bt_createrole.Text = "Create it";
            this.bt_createrole.UseVisualStyleBackColor = false;
            this.bt_createrole.Click += new System.EventHandler(this.bt_createrole_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(16)))), ((int)(((byte)(162)))), ((int)(((byte)(126)))));
            this.label2.Location = new System.Drawing.Point(174, 302);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(176, 29);
            this.label2.TabIndex = 34;
            this.label2.Text = "Role\'s name";
            // 
            // lbl_username
            // 
            this.lbl_username.AutoSize = true;
            this.lbl_username.BackColor = System.Drawing.Color.Transparent;
            this.lbl_username.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold);
            this.lbl_username.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(16)))), ((int)(((byte)(162)))), ((int)(((byte)(126)))));
            this.lbl_username.Location = new System.Drawing.Point(172, 300);
            this.lbl_username.Name = "lbl_username";
            this.lbl_username.Size = new System.Drawing.Size(178, 29);
            this.lbl_username.TabIndex = 33;
            this.lbl_username.Text = "User\'s name";
            // 
            // bt_createtable
            // 
            this.bt_createtable.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.bt_createtable.FlatAppearance.BorderColor = System.Drawing.Color.White;
            this.bt_createtable.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.bt_createtable.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bt_createtable.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(16)))), ((int)(((byte)(162)))), ((int)(((byte)(126)))));
            this.bt_createtable.Location = new System.Drawing.Point(785, 884);
            this.bt_createtable.Name = "bt_createtable";
            this.bt_createtable.Size = new System.Drawing.Size(136, 51);
            this.bt_createtable.TabIndex = 32;
            this.bt_createtable.Text = "Create";
            this.bt_createtable.UseVisualStyleBackColor = false;
            this.bt_createtable.Click += new System.EventHandler(this.bt_createtable_Click);
            // 
            // txt_name
            // 
            this.txt_name.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.txt_name.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.txt_name.Font = new System.Drawing.Font("Verdana", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_name.Location = new System.Drawing.Point(431, 300);
            this.txt_name.Name = "txt_name";
            this.txt_name.Size = new System.Drawing.Size(456, 24);
            this.txt_name.TabIndex = 31;
            // 
            // lbl_tablename
            // 
            this.lbl_tablename.AutoSize = true;
            this.lbl_tablename.BackColor = System.Drawing.Color.Transparent;
            this.lbl_tablename.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_tablename.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.lbl_tablename.Location = new System.Drawing.Point(172, 299);
            this.lbl_tablename.Name = "lbl_tablename";
            this.lbl_tablename.Size = new System.Drawing.Size(170, 29);
            this.lbl_tablename.TabIndex = 30;
            this.lbl_tablename.Text = "Table\'s name";
            // 
            // createNewButton
            // 
            this.createNewButton.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(16)))), ((int)(((byte)(162)))), ((int)(((byte)(126)))));
            this.createNewButton.DialogResult = System.Windows.Forms.DialogResult.No;
            this.createNewButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.createNewButton.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.createNewButton.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.createNewButton.Location = new System.Drawing.Point(955, 225);
            this.createNewButton.Name = "createNewButton";
            this.createNewButton.Size = new System.Drawing.Size(302, 46);
            this.createNewButton.TabIndex = 29;
            this.createNewButton.Text = "Create new";
            this.createNewButton.UseVisualStyleBackColor = false;
            this.createNewButton.Click += new System.EventHandler(this.button2_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(16)))), ((int)(((byte)(162)))), ((int)(((byte)(126)))));
            this.label1.Location = new System.Drawing.Point(172, 242);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(84, 29);
            this.label1.TabIndex = 28;
            this.label1.Text = "Filter";
            // 
            // filterBox
            // 
            this.filterBox.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.filterBox.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.filterBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.filterBox.FormattingEnabled = true;
            this.filterBox.Items.AddRange(new object[] {
            "Table",
            "View",
            "User",
            "Role"});
            this.filterBox.Location = new System.Drawing.Point(431, 238);
            this.filterBox.Name = "filterBox";
            this.filterBox.Size = new System.Drawing.Size(456, 37);
            this.filterBox.TabIndex = 27;
            this.filterBox.SelectedIndexChanged += new System.EventHandler(this.filterBox_SelectedIndexChanged);
            // 
            // dataGridView1
            // 
            this.dataGridView1.BackgroundColor = System.Drawing.Color.WhiteSmoke;
            this.dataGridView1.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dataGridView1.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(44)))), ((int)(((byte)(62)))), ((int)(((byte)(80)))));
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold);
            dataGridViewCellStyle3.ForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridView1.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle3;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle4.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle4.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle4.ForeColor = System.Drawing.Color.Black;
            dataGridViewCellStyle4.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle4.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle4.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dataGridView1.DefaultCellStyle = dataGridViewCellStyle4;
            this.dataGridView1.EnableHeadersVisualStyles = false;
            this.dataGridView1.Location = new System.Drawing.Point(402, 481);
            this.dataGridView1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.dataGridView1.MultiSelect = false;
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
            this.dataGridView1.RowHeadersWidth = 62;
            this.dataGridView1.RowTemplate.Height = 35;
            this.dataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView1.Size = new System.Drawing.Size(519, 380);
            this.dataGridView1.TabIndex = 25;
            this.dataGridView1.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            this.dataGridView1.CellMouseClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.dataGridView1_CellMouseClick);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(16)))), ((int)(((byte)(162)))), ((int)(((byte)(126)))));
            this.panel1.Location = new System.Drawing.Point(431, 336);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(456, 2);
            this.panel1.TabIndex = 44;
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(16)))), ((int)(((byte)(162)))), ((int)(((byte)(126)))));
            this.panel2.Location = new System.Drawing.Point(431, 401);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(456, 2);
            this.panel2.TabIndex = 44;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Lucida Console", 44F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(16)))), ((int)(((byte)(162)))), ((int)(((byte)(126)))));
            this.label3.Location = new System.Drawing.Point(288, 10);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(847, 88);
            this.label3.TabIndex = 45;
            this.label3.Text = "DATABASE OBJECT";
            // 
            // ManageObject
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.label3);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.pwCheckBox);
            this.Controls.Add(this.detailButton);
            this.Controls.Add(this.dropButton);
            this.Controls.Add(this.objectLabel);
            this.Controls.Add(this.objectNameTextBox);
            this.Controls.Add(this.pwLabel);
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
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.pwTextBox);
            this.Size = new System.Drawing.Size(1416, 1032);
            this.Load += new System.EventHandler(this.ManageObject_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.CheckBox pwCheckBox;
        private System.Windows.Forms.TextBox pwTextBox;
        private System.Windows.Forms.Button detailButton;
        private System.Windows.Forms.Button dropButton;
        private System.Windows.Forms.Label objectLabel;
        private System.Windows.Forms.TextBox objectNameTextBox;
        private System.Windows.Forms.DataGridViewCheckBoxColumn PrimaryKey;
        private System.Windows.Forms.DataGridViewComboBoxColumn DataType;
        private System.Windows.Forms.DataGridViewTextBoxColumn Name;
        private System.Windows.Forms.Label pwLabel;
        private System.Windows.Forms.DataGridView dataGridView2;
        private System.Windows.Forms.Button bt_createrole;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label lbl_username;
        private System.Windows.Forms.Button bt_createtable;
        private System.Windows.Forms.TextBox txt_name;
        private System.Windows.Forms.Label lbl_tablename;
        private System.Windows.Forms.Button createNewButton;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox filterBox;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Label label3;
    }
}

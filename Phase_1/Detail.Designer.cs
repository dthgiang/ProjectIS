
namespace Phase_1
{
    partial class Detail
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Detail));
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.grantButton = new System.Windows.Forms.Button();
            this.privLabel = new System.Windows.Forms.Label();
            this.privComboBox = new System.Windows.Forms.ComboBox();
            this.objectComboBox = new System.Windows.Forms.ComboBox();
            this.objectLabel = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.backButton = new System.Windows.Forms.Button();
            this.attributeComboBox = new System.Windows.Forms.ComboBox();
            this.attributeLabel = new System.Windows.Forms.Label();
            this.privilegeTextBox = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.revokeButton = new System.Windows.Forms.Button();
            this.objectTextBox = new System.Windows.Forms.TextBox();
            this.searchButton = new System.Windows.Forms.Button();
            this.label6 = new System.Windows.Forms.Label();
            this.searchTextBox = new System.Windows.Forms.TextBox();
            this.optionComboBox = new System.Windows.Forms.ComboBox();
            this.optionLabel = new System.Windows.Forms.Label();
            this.roleCheckBox = new System.Windows.Forms.CheckBox();
            this.privCheckBox = new System.Windows.Forms.CheckBox();
            this.label8 = new System.Windows.Forms.Label();
            this.roleLabel = new System.Windows.Forms.Label();
            this.rowComboBox = new System.Windows.Forms.ComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(57, 243);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 62;
            this.dataGridView1.RowTemplate.Height = 28;
            this.dataGridView1.Size = new System.Drawing.Size(804, 437);
            this.dataGridView1.TabIndex = 1;
            this.dataGridView1.CellMouseClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.dataGridView1_CellMouseClick);
            // 
            // grantButton
            // 
            this.grantButton.BackColor = System.Drawing.Color.MediumSpringGreen;
            this.grantButton.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Aqua;
            this.grantButton.FlatAppearance.MouseOverBackColor = System.Drawing.Color.LimeGreen;
            this.grantButton.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.grantButton.Location = new System.Drawing.Point(1076, 470);
            this.grantButton.Name = "grantButton";
            this.grantButton.Size = new System.Drawing.Size(98, 37);
            this.grantButton.TabIndex = 2;
            this.grantButton.Text = "Grant";
            this.grantButton.UseVisualStyleBackColor = false;
            this.grantButton.Click += new System.EventHandler(this.grantButton_Click);
            // 
            // privLabel
            // 
            this.privLabel.AutoSize = true;
            this.privLabel.BackColor = System.Drawing.Color.MediumAquamarine;
            this.privLabel.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.privLabel.Location = new System.Drawing.Point(873, 261);
            this.privLabel.Name = "privLabel";
            this.privLabel.Size = new System.Drawing.Size(105, 28);
            this.privLabel.TabIndex = 3;
            this.privLabel.Text = "Privilege";
            // 
            // privComboBox
            // 
            this.privComboBox.FormattingEnabled = true;
            this.privComboBox.Items.AddRange(new object[] {
            "Select",
            "Insert",
            "Update",
            "Delete"});
            this.privComboBox.Location = new System.Drawing.Point(979, 261);
            this.privComboBox.Name = "privComboBox";
            this.privComboBox.Size = new System.Drawing.Size(195, 28);
            this.privComboBox.TabIndex = 4;
            this.privComboBox.SelectedIndexChanged += new System.EventHandler(this.privComboBox_SelectedIndexChanged);
            // 
            // objectComboBox
            // 
            this.objectComboBox.FormattingEnabled = true;
            this.objectComboBox.Location = new System.Drawing.Point(946, 309);
            this.objectComboBox.Name = "objectComboBox";
            this.objectComboBox.Size = new System.Drawing.Size(228, 28);
            this.objectComboBox.TabIndex = 6;
            this.objectComboBox.SelectedIndexChanged += new System.EventHandler(this.objectComboBox_SelectedIndexChanged);
            // 
            // objectLabel
            // 
            this.objectLabel.AutoSize = true;
            this.objectLabel.BackColor = System.Drawing.Color.MediumAquamarine;
            this.objectLabel.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.objectLabel.Location = new System.Drawing.Point(873, 308);
            this.objectLabel.Name = "objectLabel";
            this.objectLabel.Size = new System.Drawing.Size(78, 28);
            this.objectLabel.TabIndex = 5;
            this.objectLabel.Text = "Object";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.MediumAquamarine;
            this.label3.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(873, 388);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(37, 28);
            this.label3.TabIndex = 7;
            this.label3.Text = "To";
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(0, -14);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(1305, 918);
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            // 
            // backButton
            // 
            this.backButton.BackColor = System.Drawing.Color.Turquoise;
            this.backButton.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Aqua;
            this.backButton.FlatAppearance.MouseOverBackColor = System.Drawing.Color.LimeGreen;
            this.backButton.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.backButton.Location = new System.Drawing.Point(1076, 634);
            this.backButton.Name = "backButton";
            this.backButton.Size = new System.Drawing.Size(98, 37);
            this.backButton.TabIndex = 9;
            this.backButton.Text = "Back";
            this.backButton.UseVisualStyleBackColor = false;
            this.backButton.Click += new System.EventHandler(this.backButton_Click);
            // 
            // attributeComboBox
            // 
            this.attributeComboBox.FormattingEnabled = true;
            this.attributeComboBox.Location = new System.Drawing.Point(979, 351);
            this.attributeComboBox.Name = "attributeComboBox";
            this.attributeComboBox.Size = new System.Drawing.Size(195, 28);
            this.attributeComboBox.TabIndex = 11;
            // 
            // attributeLabel
            // 
            this.attributeLabel.AutoSize = true;
            this.attributeLabel.BackColor = System.Drawing.Color.MediumAquamarine;
            this.attributeLabel.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.attributeLabel.Location = new System.Drawing.Point(873, 351);
            this.attributeLabel.Name = "attributeLabel";
            this.attributeLabel.Size = new System.Drawing.Size(106, 28);
            this.attributeLabel.TabIndex = 10;
            this.attributeLabel.Text = "Attribute";
            // 
            // privilegeTextBox
            // 
            this.privilegeTextBox.Location = new System.Drawing.Point(347, 201);
            this.privilegeTextBox.Name = "privilegeTextBox";
            this.privilegeTextBox.ReadOnly = true;
            this.privilegeTextBox.Size = new System.Drawing.Size(331, 26);
            this.privilegeTextBox.TabIndex = 12;
            this.privilegeTextBox.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.BackColor = System.Drawing.Color.MediumAquamarine;
            this.label5.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(161, 200);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(185, 28);
            this.label5.TabIndex = 13;
            this.label5.Text = "Privilege Choose";
            // 
            // revokeButton
            // 
            this.revokeButton.BackColor = System.Drawing.Color.Tomato;
            this.revokeButton.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Aqua;
            this.revokeButton.FlatAppearance.MouseOverBackColor = System.Drawing.Color.LimeGreen;
            this.revokeButton.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.revokeButton.Location = new System.Drawing.Point(715, 191);
            this.revokeButton.Name = "revokeButton";
            this.revokeButton.Size = new System.Drawing.Size(98, 37);
            this.revokeButton.TabIndex = 14;
            this.revokeButton.Text = "Revoke";
            this.revokeButton.UseVisualStyleBackColor = false;
            this.revokeButton.Click += new System.EventHandler(this.revokeButton_Click);
            // 
            // objectTextBox
            // 
            this.objectTextBox.Location = new System.Drawing.Point(916, 388);
            this.objectTextBox.Name = "objectTextBox";
            this.objectTextBox.ReadOnly = true;
            this.objectTextBox.Size = new System.Drawing.Size(258, 26);
            this.objectTextBox.TabIndex = 15;
            // 
            // searchButton
            // 
            this.searchButton.BackColor = System.Drawing.Color.DarkTurquoise;
            this.searchButton.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Aqua;
            this.searchButton.FlatAppearance.MouseOverBackColor = System.Drawing.Color.LimeGreen;
            this.searchButton.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.searchButton.Location = new System.Drawing.Point(715, 130);
            this.searchButton.Name = "searchButton";
            this.searchButton.Size = new System.Drawing.Size(98, 37);
            this.searchButton.TabIndex = 18;
            this.searchButton.Text = "Search";
            this.searchButton.UseVisualStyleBackColor = false;
            this.searchButton.Click += new System.EventHandler(this.searchButton_Click);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.BackColor = System.Drawing.Color.MediumAquamarine;
            this.label6.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(161, 139);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(142, 28);
            this.label6.TabIndex = 17;
            this.label6.Text = "Find grantee";
            // 
            // searchTextBox
            // 
            this.searchTextBox.Location = new System.Drawing.Point(347, 140);
            this.searchTextBox.Name = "searchTextBox";
            this.searchTextBox.Size = new System.Drawing.Size(331, 26);
            this.searchTextBox.TabIndex = 16;
            // 
            // optionComboBox
            // 
            this.optionComboBox.FormattingEnabled = true;
            this.optionComboBox.Items.AddRange(new object[] {
            "Yes",
            "No"});
            this.optionComboBox.Location = new System.Drawing.Point(979, 436);
            this.optionComboBox.Name = "optionComboBox";
            this.optionComboBox.Size = new System.Drawing.Size(195, 28);
            this.optionComboBox.TabIndex = 20;
            // 
            // optionLabel
            // 
            this.optionLabel.AutoSize = true;
            this.optionLabel.BackColor = System.Drawing.Color.MediumAquamarine;
            this.optionLabel.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.optionLabel.Location = new System.Drawing.Point(873, 436);
            this.optionLabel.Name = "optionLabel";
            this.optionLabel.Size = new System.Drawing.Size(82, 28);
            this.optionLabel.TabIndex = 19;
            this.optionLabel.Text = "Option";
            // 
            // roleCheckBox
            // 
            this.roleCheckBox.AutoSize = true;
            this.roleCheckBox.BackColor = System.Drawing.Color.GreenYellow;
            this.roleCheckBox.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.roleCheckBox.Location = new System.Drawing.Point(876, 219);
            this.roleCheckBox.Name = "roleCheckBox";
            this.roleCheckBox.Size = new System.Drawing.Size(88, 32);
            this.roleCheckBox.TabIndex = 21;
            this.roleCheckBox.Text = "Role";
            this.roleCheckBox.UseVisualStyleBackColor = false;
            this.roleCheckBox.CheckedChanged += new System.EventHandler(this.roleCheckBox_CheckedChanged);
            // 
            // privCheckBox
            // 
            this.privCheckBox.AutoSize = true;
            this.privCheckBox.BackColor = System.Drawing.Color.GreenYellow;
            this.privCheckBox.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.privCheckBox.Location = new System.Drawing.Point(1037, 219);
            this.privCheckBox.Name = "privCheckBox";
            this.privCheckBox.Size = new System.Drawing.Size(137, 32);
            this.privCheckBox.TabIndex = 22;
            this.privCheckBox.Text = "Privilege";
            this.privCheckBox.UseVisualStyleBackColor = false;
            this.privCheckBox.CheckedChanged += new System.EventHandler(this.privCheckBox_CheckedChanged);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.BackColor = System.Drawing.Color.PaleGreen;
            this.label8.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(931, 177);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(186, 28);
            this.label8.TabIndex = 23;
            this.label8.Text = "Pick one to grant";
            // 
            // roleLabel
            // 
            this.roleLabel.AutoSize = true;
            this.roleLabel.BackColor = System.Drawing.Color.MediumAquamarine;
            this.roleLabel.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.roleLabel.Location = new System.Drawing.Point(873, 309);
            this.roleLabel.Name = "roleLabel";
            this.roleLabel.Size = new System.Drawing.Size(59, 28);
            this.roleLabel.TabIndex = 24;
            this.roleLabel.Text = "Role";
            // 
            // rowComboBox
            // 
            this.rowComboBox.FormattingEnabled = true;
            this.rowComboBox.Location = new System.Drawing.Point(946, 308);
            this.rowComboBox.Name = "rowComboBox";
            this.rowComboBox.Size = new System.Drawing.Size(228, 28);
            this.rowComboBox.TabIndex = 25;
            // 
            // Detail
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1292, 863);
            this.Controls.Add(this.rowComboBox);
            this.Controls.Add(this.roleLabel);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.privCheckBox);
            this.Controls.Add(this.roleCheckBox);
            this.Controls.Add(this.optionComboBox);
            this.Controls.Add(this.optionLabel);
            this.Controls.Add(this.searchButton);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.searchTextBox);
            this.Controls.Add(this.objectTextBox);
            this.Controls.Add(this.revokeButton);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.privilegeTextBox);
            this.Controls.Add(this.attributeComboBox);
            this.Controls.Add(this.attributeLabel);
            this.Controls.Add(this.backButton);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.objectComboBox);
            this.Controls.Add(this.objectLabel);
            this.Controls.Add(this.privComboBox);
            this.Controls.Add(this.privLabel);
            this.Controls.Add(this.grantButton);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.pictureBox1);
            this.Name = "Detail";
            this.Text = "Detail";
            this.Load += new System.EventHandler(this.Detail_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button grantButton;
        private System.Windows.Forms.Label privLabel;
        private System.Windows.Forms.ComboBox privComboBox;
        private System.Windows.Forms.ComboBox objectComboBox;
        private System.Windows.Forms.Label objectLabel;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button backButton;
        private System.Windows.Forms.ComboBox attributeComboBox;
        private System.Windows.Forms.Label attributeLabel;
        private System.Windows.Forms.TextBox privilegeTextBox;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button revokeButton;
        private System.Windows.Forms.TextBox objectTextBox;
        private System.Windows.Forms.Button searchButton;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox searchTextBox;
        private System.Windows.Forms.ComboBox optionComboBox;
        private System.Windows.Forms.Label optionLabel;
        private System.Windows.Forms.CheckBox roleCheckBox;
        private System.Windows.Forms.CheckBox privCheckBox;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label roleLabel;
        private System.Windows.Forms.ComboBox rowComboBox;
    }
}
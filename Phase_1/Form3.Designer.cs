namespace Phase_1
{
    partial class Form3
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form3));
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.button3 = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.colPrivCheckbox = new System.Windows.Forms.CheckBox();
            this.allPrivCheckbox = new System.Windows.Forms.CheckBox();
            this.moreActionButton = new System.Windows.Forms.Button();
            this.revokeButton = new System.Windows.Forms.Button();
            this.privilegeTextBox = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.objChoosetextBox = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(269, 318);
            this.dataGridView1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 62;
            this.dataGridView1.Size = new System.Drawing.Size(935, 498);
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
            this.button3.Location = new System.Drawing.Point(1212, 748);
            this.button3.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(150, 68);
            this.button3.TabIndex = 5;
            this.button3.Text = "Back";
            this.button3.UseVisualStyleBackColor = false;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::Phase_1.Properties.Resources.Entity_s_rivileges;
            this.pictureBox1.Location = new System.Drawing.Point(-3, -2);
            this.pictureBox1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(1482, 922);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            // 
            // colPrivCheckbox
            // 
            this.colPrivCheckbox.AutoSize = true;
            this.colPrivCheckbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.colPrivCheckbox.Location = new System.Drawing.Point(456, 149);
            this.colPrivCheckbox.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.colPrivCheckbox.Name = "colPrivCheckbox";
            this.colPrivCheckbox.Size = new System.Drawing.Size(239, 33);
            this.colPrivCheckbox.TabIndex = 6;
            this.colPrivCheckbox.Text = "Column Privilege";
            this.colPrivCheckbox.UseVisualStyleBackColor = true;
            this.colPrivCheckbox.CheckedChanged += new System.EventHandler(this.colPrivCheckbox_CheckedChanged);
            // 
            // allPrivCheckbox
            // 
            this.allPrivCheckbox.AutoSize = true;
            this.allPrivCheckbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.allPrivCheckbox.Location = new System.Drawing.Point(815, 149);
            this.allPrivCheckbox.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.allPrivCheckbox.Name = "allPrivCheckbox";
            this.allPrivCheckbox.Size = new System.Drawing.Size(180, 33);
            this.allPrivCheckbox.TabIndex = 7;
            this.allPrivCheckbox.Text = "All Privilege";
            this.allPrivCheckbox.UseVisualStyleBackColor = true;
            this.allPrivCheckbox.CheckedChanged += new System.EventHandler(this.allPrivCheckbox_CheckedChanged);
            // 
            // moreActionButton
            // 
            this.moreActionButton.BackColor = System.Drawing.Color.DarkTurquoise;
            this.moreActionButton.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Aqua;
            this.moreActionButton.FlatAppearance.MouseOverBackColor = System.Drawing.Color.LimeGreen;
            this.moreActionButton.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.moreActionButton.Location = new System.Drawing.Point(853, 265);
            this.moreActionButton.Name = "moreActionButton";
            this.moreActionButton.Size = new System.Drawing.Size(165, 37);
            this.moreActionButton.TabIndex = 30;
            this.moreActionButton.Text = "More Action";
            this.moreActionButton.UseVisualStyleBackColor = false;
            this.moreActionButton.Click += new System.EventHandler(this.moreActionButton_Click);
            // 
            // revokeButton
            // 
            this.revokeButton.BackColor = System.Drawing.Color.Tomato;
            this.revokeButton.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Aqua;
            this.revokeButton.FlatAppearance.MouseOverBackColor = System.Drawing.Color.LimeGreen;
            this.revokeButton.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.revokeButton.Location = new System.Drawing.Point(853, 211);
            this.revokeButton.Name = "revokeButton";
            this.revokeButton.Size = new System.Drawing.Size(114, 37);
            this.revokeButton.TabIndex = 29;
            this.revokeButton.Text = "Revoke";
            this.revokeButton.UseVisualStyleBackColor = false;
            this.revokeButton.Click += new System.EventHandler(this.revokeButton_Click);
            // 
            // privilegeTextBox
            // 
            this.privilegeTextBox.Location = new System.Drawing.Point(485, 221);
            this.privilegeTextBox.Name = "privilegeTextBox";
            this.privilegeTextBox.ReadOnly = true;
            this.privilegeTextBox.Size = new System.Drawing.Size(331, 26);
            this.privilegeTextBox.TabIndex = 27;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.BackColor = System.Drawing.Color.MediumAquamarine;
            this.label5.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(299, 220);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(185, 28);
            this.label5.TabIndex = 28;
            this.label5.Text = "Privilege Choose";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.MediumAquamarine;
            this.label1.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(299, 269);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(158, 28);
            this.label1.TabIndex = 32;
            this.label1.Text = "Object Choose";
            // 
            // objChoosetextBox
            // 
            this.objChoosetextBox.Location = new System.Drawing.Point(485, 270);
            this.objChoosetextBox.Name = "objChoosetextBox";
            this.objChoosetextBox.ReadOnly = true;
            this.objChoosetextBox.Size = new System.Drawing.Size(331, 26);
            this.objChoosetextBox.TabIndex = 31;
            // 
            // Form3
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1476, 862);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.objChoosetextBox);
            this.Controls.Add(this.moreActionButton);
            this.Controls.Add(this.revokeButton);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.privilegeTextBox);
            this.Controls.Add(this.allPrivCheckbox);
            this.Controls.Add(this.colPrivCheckbox);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.pictureBox1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "Form3";
            this.Text = "ENTITY\'S PRIVILEGES";
            this.Load += new System.EventHandler(this.Form3_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.CheckBox colPrivCheckbox;
        private System.Windows.Forms.CheckBox allPrivCheckbox;
        private System.Windows.Forms.Button moreActionButton;
        private System.Windows.Forms.Button revokeButton;
        private System.Windows.Forms.TextBox privilegeTextBox;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox objChoosetextBox;
    }
}
﻿namespace Phase_1
{
    partial class ManagePriviliege
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
            this.allPrivCheckbox = new System.Windows.Forms.CheckBox();
            this.colPrivCheckbox = new System.Windows.Forms.CheckBox();
            this.moreActionButton = new System.Windows.Forms.Button();
            this.label6 = new System.Windows.Forms.Label();
            this.objChoosetextBox = new System.Windows.Forms.TextBox();
            this.revokeButton = new System.Windows.Forms.Button();
            this.label5 = new System.Windows.Forms.Label();
            this.privilegeTextBox = new System.Windows.Forms.TextBox();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel2 = new System.Windows.Forms.Panel();
            this.label3 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // allPrivCheckbox
            // 
            this.allPrivCheckbox.AutoSize = true;
            this.allPrivCheckbox.BackColor = System.Drawing.Color.Transparent;
            this.allPrivCheckbox.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.allPrivCheckbox.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(16)))), ((int)(((byte)(162)))), ((int)(((byte)(126)))));
            this.allPrivCheckbox.Location = new System.Drawing.Point(701, 198);
            this.allPrivCheckbox.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.allPrivCheckbox.Name = "allPrivCheckbox";
            this.allPrivCheckbox.Size = new System.Drawing.Size(170, 29);
            this.allPrivCheckbox.TabIndex = 39;
            this.allPrivCheckbox.Text = "All Privilege";
            this.allPrivCheckbox.UseVisualStyleBackColor = false;
            this.allPrivCheckbox.CheckedChanged += new System.EventHandler(this.allPrivCheckbox_CheckedChanged);
            // 
            // colPrivCheckbox
            // 
            this.colPrivCheckbox.AutoSize = true;
            this.colPrivCheckbox.BackColor = System.Drawing.Color.Transparent;
            this.colPrivCheckbox.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.colPrivCheckbox.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(16)))), ((int)(((byte)(162)))), ((int)(((byte)(126)))));
            this.colPrivCheckbox.Location = new System.Drawing.Point(383, 198);
            this.colPrivCheckbox.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.colPrivCheckbox.Name = "colPrivCheckbox";
            this.colPrivCheckbox.Size = new System.Drawing.Size(224, 29);
            this.colPrivCheckbox.TabIndex = 38;
            this.colPrivCheckbox.Text = "Column Privilege";
            this.colPrivCheckbox.UseVisualStyleBackColor = false;
            // 
            // moreActionButton
            // 
            this.moreActionButton.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(16)))), ((int)(((byte)(162)))), ((int)(((byte)(126)))));
            this.moreActionButton.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Aqua;
            this.moreActionButton.FlatAppearance.MouseOverBackColor = System.Drawing.Color.LimeGreen;
            this.moreActionButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.moreActionButton.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.moreActionButton.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.moreActionButton.Location = new System.Drawing.Point(874, 266);
            this.moreActionButton.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.moreActionButton.Name = "moreActionButton";
            this.moreActionButton.Size = new System.Drawing.Size(136, 34);
            this.moreActionButton.TabIndex = 37;
            this.moreActionButton.Text = "More Action";
            this.moreActionButton.UseVisualStyleBackColor = false;
            this.moreActionButton.Click += new System.EventHandler(this.moreActionButton_Click);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.BackColor = System.Drawing.Color.Transparent;
            this.label6.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(16)))), ((int)(((byte)(162)))), ((int)(((byte)(126)))));
            this.label6.Location = new System.Drawing.Point(74, 266);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(153, 25);
            this.label6.TabIndex = 35;
            this.label6.Text = "Find grantee";
            // 
            // objChoosetextBox
            // 
            this.objChoosetextBox.BackColor = System.Drawing.Color.White;
            this.objChoosetextBox.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.objChoosetextBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.objChoosetextBox.Location = new System.Drawing.Point(435, 272);
            this.objChoosetextBox.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.objChoosetextBox.Name = "objChoosetextBox";
            this.objChoosetextBox.Size = new System.Drawing.Size(405, 19);
            this.objChoosetextBox.TabIndex = 34;
            // 
            // revokeButton
            // 
            this.revokeButton.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(16)))), ((int)(((byte)(162)))), ((int)(((byte)(126)))));
            this.revokeButton.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Aqua;
            this.revokeButton.FlatAppearance.MouseOverBackColor = System.Drawing.Color.LimeGreen;
            this.revokeButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.revokeButton.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.revokeButton.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.revokeButton.Location = new System.Drawing.Point(874, 310);
            this.revokeButton.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.revokeButton.Name = "revokeButton";
            this.revokeButton.Size = new System.Drawing.Size(136, 34);
            this.revokeButton.TabIndex = 33;
            this.revokeButton.Text = "Revoke";
            this.revokeButton.UseVisualStyleBackColor = false;
            this.revokeButton.Click += new System.EventHandler(this.revokeButton_Click);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.BackColor = System.Drawing.Color.Transparent;
            this.label5.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(16)))), ((int)(((byte)(162)))), ((int)(((byte)(126)))));
            this.label5.Location = new System.Drawing.Point(74, 315);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(199, 25);
            this.label5.TabIndex = 32;
            this.label5.Text = "Privilege Choose";
            // 
            // privilegeTextBox
            // 
            this.privilegeTextBox.BackColor = System.Drawing.Color.White;
            this.privilegeTextBox.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.privilegeTextBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.privilegeTextBox.Location = new System.Drawing.Point(435, 319);
            this.privilegeTextBox.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.privilegeTextBox.Name = "privilegeTextBox";
            this.privilegeTextBox.ReadOnly = true;
            this.privilegeTextBox.Size = new System.Drawing.Size(405, 19);
            this.privilegeTextBox.TabIndex = 31;
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(151, 388);
            this.dataGridView1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 62;
            this.dataGridView1.RowTemplate.Height = 28;
            this.dataGridView1.Size = new System.Drawing.Size(906, 350);
            this.dataGridView1.TabIndex = 29;
            this.dataGridView1.CellMouseClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.dataGridView1_CellMouseClick);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(16)))), ((int)(((byte)(162)))), ((int)(((byte)(126)))));
            this.panel1.Location = new System.Drawing.Point(435, 295);
            this.panel1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(405, 2);
            this.panel1.TabIndex = 45;
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(16)))), ((int)(((byte)(162)))), ((int)(((byte)(126)))));
            this.panel2.Location = new System.Drawing.Point(435, 342);
            this.panel2.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(405, 2);
            this.panel2.TabIndex = 45;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Lucida Console", 44F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(16)))), ((int)(((byte)(162)))), ((int)(((byte)(126)))));
            this.label3.Location = new System.Drawing.Point(382, 17);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(492, 74);
            this.label3.TabIndex = 46;
            this.label3.Text = "PRIVILEGES";
            // 
            // ManagePriviliege
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.label3);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.allPrivCheckbox);
            this.Controls.Add(this.colPrivCheckbox);
            this.Controls.Add(this.moreActionButton);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.objChoosetextBox);
            this.Controls.Add(this.revokeButton);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.privilegeTextBox);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.panel2);
            this.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Name = "ManagePriviliege";
            this.Size = new System.Drawing.Size(1259, 826);
            this.Load += new System.EventHandler(this.ManagePriviliege_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.CheckBox allPrivCheckbox;
        private System.Windows.Forms.CheckBox colPrivCheckbox;
        private System.Windows.Forms.Button moreActionButton;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox objChoosetextBox;
        private System.Windows.Forms.Button revokeButton;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox privilegeTextBox;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Label label3;
    }
}

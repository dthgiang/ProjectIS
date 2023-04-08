﻿namespace Phase_1
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
            this.colPrivCheckbox = new System.Windows.Forms.CheckBox();
            this.allPrivCheckbox = new System.Windows.Forms.CheckBox();
            this.moreActionButton = new System.Windows.Forms.Button();
            this.revokeButton = new System.Windows.Forms.Button();
            this.privilegeTextBox = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.objChoosetextBox = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(179, 261);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 62;
            this.dataGridView1.Size = new System.Drawing.Size(623, 292);
            this.dataGridView1.TabIndex = 1;
            this.dataGridView1.CellMouseClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.dataGridView1_CellMouseClick);
            // Đặt màu nền cho DataGridView
            this.dataGridView1.BackgroundColor = System.Drawing.Color.WhiteSmoke;

            // Đặt font cho DataGridView
            this.dataGridView1.DefaultCellStyle.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));

            // Đặt màu chữ cho DataGridView
            this.dataGridView1.DefaultCellStyle.ForeColor = System.Drawing.Color.Black;

            // Đặt màu nền cho các header của DataGridView
            this.dataGridView1.ColumnHeadersDefaultCellStyle.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(44)))), ((int)(((byte)(62)))), ((int)(((byte)(80)))));

            // Đặt màu chữ cho các header của DataGridView
            this.dataGridView1.ColumnHeadersDefaultCellStyle.ForeColor = System.Drawing.Color.White;

            // Đặt kiểu Border cho DataGridView
            this.dataGridView1.BorderStyle = System.Windows.Forms.BorderStyle.None;

            // Đặt kiểu Border cho các header của DataGridView
            this.dataGridView1.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;

            // Đặt kiểu Border cho các cell của DataGridView
            this.dataGridView1.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.Single;

            // Đặt kiểu Border cho các cell được chọn của DataGridView
            //dataGridView1.SelectionBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;

            // Đặt kiểu Border cho các header được chọn của DataGridView
            this.dataGridView1.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;

            // Đặt chiều cao của header DataGridView
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.ColumnHeadersHeight = 40;

            // Đặt chiều cao của các row DataGridView
            this.dataGridView1.RowTemplate.Height = 35;

            // Cho phép người dùng chỉnh sửa dữ liệu trực tiếp trên DataGridView
            this.dataGridView1.ReadOnly = false;

            // Đặt thuộc tính SelectionMode cho DataGridView
            this.dataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;

            // Đặt thuộc tính MultiSelect cho DataGridView
            this.dataGridView1.MultiSelect = false;

            // Hiển thị các header của DataGridView theo dạng đa ngôn ngữ
            this.dataGridView1.EnableHeadersVisualStyles = false;
            this.dataGridView1.ColumnHeadersDefaultCellStyle.Font = new System.Drawing.Font("Segoe UI", 10F, System.Drawing.FontStyle.Bold);

            // 
            // button3
            // 
            this.button3.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.button3.FlatAppearance.BorderColor = System.Drawing.Color.White;
            this.button3.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button3.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button3.ForeColor = System.Drawing.Color.SteelBlue;
            this.button3.Location = new System.Drawing.Point(838, 541);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(100, 44);
            this.button3.TabIndex = 5;
            this.button3.Text = "Back";
            this.button3.UseVisualStyleBackColor = false;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // colPrivCheckbox
            // 
            this.colPrivCheckbox.AutoSize = true;
            this.colPrivCheckbox.BackColor = System.Drawing.Color.Transparent;
            this.colPrivCheckbox.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.colPrivCheckbox.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.colPrivCheckbox.Location = new System.Drawing.Point(293, 129);
            this.colPrivCheckbox.Margin = new System.Windows.Forms.Padding(2, 3, 2, 3);
            this.colPrivCheckbox.Name = "colPrivCheckbox";
            this.colPrivCheckbox.Size = new System.Drawing.Size(172, 22);
            this.colPrivCheckbox.TabIndex = 6;
            this.colPrivCheckbox.Text = "Column Privilege";
            this.colPrivCheckbox.UseVisualStyleBackColor = false;
            this.colPrivCheckbox.CheckedChanged += new System.EventHandler(this.colPrivCheckbox_CheckedChanged);
            // 
            // allPrivCheckbox
            // 
            this.allPrivCheckbox.AutoSize = true;
            this.allPrivCheckbox.BackColor = System.Drawing.Color.Transparent;
            this.allPrivCheckbox.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.allPrivCheckbox.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.allPrivCheckbox.Location = new System.Drawing.Point(532, 129);
            this.allPrivCheckbox.Margin = new System.Windows.Forms.Padding(2, 3, 2, 3);
            this.allPrivCheckbox.Name = "allPrivCheckbox";
            this.allPrivCheckbox.Size = new System.Drawing.Size(127, 22);
            this.allPrivCheckbox.TabIndex = 7;
            this.allPrivCheckbox.Text = "All Privilege";
            this.allPrivCheckbox.UseVisualStyleBackColor = false;
            this.allPrivCheckbox.CheckedChanged += new System.EventHandler(this.allPrivCheckbox_CheckedChanged);
            // 
            // moreActionButton
            // 
            this.moreActionButton.BackColor = System.Drawing.Color.SteelBlue;
            this.moreActionButton.FlatAppearance.BorderColor = System.Drawing.Color.White;
            this.moreActionButton.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Aqua;
            this.moreActionButton.FlatAppearance.MouseOverBackColor = System.Drawing.Color.LimeGreen;
            this.moreActionButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.moreActionButton.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.moreActionButton.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.moreActionButton.Location = new System.Drawing.Point(656, 213);
            this.moreActionButton.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.moreActionButton.Name = "moreActionButton";
            this.moreActionButton.Size = new System.Drawing.Size(88, 31);
            this.moreActionButton.TabIndex = 30;
            this.moreActionButton.Text = "More Action";
            this.moreActionButton.UseVisualStyleBackColor = false;
            this.moreActionButton.Click += new System.EventHandler(this.moreActionButton_Click);
            // 
            // revokeButton
            // 
            this.revokeButton.BackColor = System.Drawing.Color.Tomato;
            this.revokeButton.FlatAppearance.BorderColor = System.Drawing.Color.White;
            this.revokeButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.revokeButton.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.revokeButton.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.revokeButton.Location = new System.Drawing.Point(656, 169);
            this.revokeButton.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.revokeButton.Name = "revokeButton";
            this.revokeButton.Size = new System.Drawing.Size(88, 31);
            this.revokeButton.TabIndex = 29;
            this.revokeButton.Text = "Revoke";
            this.revokeButton.UseVisualStyleBackColor = false;
            this.revokeButton.Click += new System.EventHandler(this.revokeButton_Click);
            // 
            // privilegeTextBox
            // 
            this.privilegeTextBox.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.privilegeTextBox.Font = new System.Drawing.Font("Verdana", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.privilegeTextBox.Location = new System.Drawing.Point(410, 176);
            this.privilegeTextBox.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.privilegeTextBox.Name = "privilegeTextBox";
            this.privilegeTextBox.ReadOnly = true;
            this.privilegeTextBox.Size = new System.Drawing.Size(222, 23);
            this.privilegeTextBox.TabIndex = 27;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.BackColor = System.Drawing.Color.Transparent;
            this.label5.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.label5.Location = new System.Drawing.Point(232, 176);
            this.label5.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(153, 18);
            this.label5.TabIndex = 28;
            this.label5.Text = "Privilege Choose";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.label1.Location = new System.Drawing.Point(232, 216);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(136, 18);
            this.label1.TabIndex = 32;
            this.label1.Text = "Object Choose";
            // 
            // objChoosetextBox
            // 
            this.objChoosetextBox.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.objChoosetextBox.Font = new System.Drawing.Font("Verdana", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.objChoosetextBox.Location = new System.Drawing.Point(410, 216);
            this.objChoosetextBox.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.objChoosetextBox.Name = "objChoosetextBox";
            this.objChoosetextBox.ReadOnly = true;
            this.objChoosetextBox.Size = new System.Drawing.Size(222, 23);
            this.objChoosetextBox.TabIndex = 31;
            // 
            // Form3
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::Phase_1.Properties.Resources.Entity_s_rivileges;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(984, 607);
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
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Form3";
            this.Text = "ENTITY\'S PRIVILEGES";
            this.Load += new System.EventHandler(this.Form3_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
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
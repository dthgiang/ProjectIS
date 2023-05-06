using System.Drawing;
using System.Windows.Forms;

namespace Phase_1.Phase_2.UserControls
{
    partial class CustomDialog
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(CustomDialog));
            this.okButton = new System.Windows.Forms.Button();
            this.textBox = new System.Windows.Forms.TextBox();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.panel1 = new System.Windows.Forms.Panel();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // okButton
            // 
            this.okButton.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(59)))), ((int)(((byte)(52)))), ((int)(((byte)(118)))));
            this.okButton.FlatAppearance.BorderSize = 0;
            this.okButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.okButton.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.okButton.ForeColor = System.Drawing.Color.White;
            this.okButton.Location = new System.Drawing.Point(235, 144);
            this.okButton.Name = "okButton";
            this.okButton.Size = new System.Drawing.Size(103, 34);
            this.okButton.TabIndex = 2;
            this.okButton.Text = "OK";
            this.okButton.UseVisualStyleBackColor = false;
            this.okButton.Click += new System.EventHandler(this.okButton_Click);
            // 
            // textBox
            // 
            this.textBox.BackColor = System.Drawing.Color.White;
            this.textBox.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.textBox.Font = new System.Drawing.Font("Segoe UI Black", 11.25F, System.Drawing.FontStyle.Bold);
            this.textBox.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(59)))), ((int)(((byte)(52)))), ((int)(((byte)(118)))));
            this.textBox.Location = new System.Drawing.Point(91, 82);
            this.textBox.Name = "textBox";
            this.textBox.Size = new System.Drawing.Size(247, 21);
            this.textBox.TabIndex = 6;
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::Phase_1.Properties.Resources.icons8_key_30;
            this.pictureBox1.Location = new System.Drawing.Point(45, 73);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(30, 30);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.AutoSize;
            this.pictureBox1.TabIndex = 7;
            this.pictureBox1.TabStop = false;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(59)))), ((int)(((byte)(52)))), ((int)(((byte)(118)))));
            this.panel1.Location = new System.Drawing.Point(45, 111);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(293, 2);
            this.panel1.TabIndex = 8;
            // 
            // CustomDialog
            // 
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(398, 210);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.textBox);
            this.Controls.Add(this.okButton);
            this.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(59)))), ((int)(((byte)(52)))), ((int)(((byte)(118)))));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "CustomDialog";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "PLEASE ENTER YOUR KEY";
            this.Load += new System.EventHandler(this.CustomDialog_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private TextBox textBox;
        private PictureBox pictureBox1;
        private Panel panel1;
    }
}
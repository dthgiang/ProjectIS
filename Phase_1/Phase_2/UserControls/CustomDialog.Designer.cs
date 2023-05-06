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
            this.label = new System.Windows.Forms.Label();
            this.textBox = new System.Windows.Forms.TextBox();
            this.okButton = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label
            // 
            this.label.Location = new System.Drawing.Point(10, 10);
            this.label.Name = "label";
            this.label.Size = new System.Drawing.Size(200, 20);
            this.label.TabIndex = 0;
            this.label.Text = "Please enter your key:";
            // 
            // textBox
            // 
            this.textBox.Location = new System.Drawing.Point(10, 40);
            this.textBox.Name = "textBox";
            this.textBox.Size = new System.Drawing.Size(200, 26);
            this.textBox.TabIndex = 1;
            // 
            // okButton
            // 
            this.okButton.Location = new System.Drawing.Point(10, 70);
            this.okButton.Name = "okButton";
            this.okButton.Size = new System.Drawing.Size(122, 42);
            this.okButton.TabIndex = 2;
            this.okButton.Text = "OK";
            this.okButton.Click += new System.EventHandler(this.okButton_Click);
            // 
            // CustomDialog
            // 
            this.ClientSize = new System.Drawing.Size(398, 210);
            this.Controls.Add(this.label);
            this.Controls.Add(this.textBox);
            this.Controls.Add(this.okButton);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Name = "CustomDialog";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Load += new System.EventHandler(this.CustomDialog_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
    }
}
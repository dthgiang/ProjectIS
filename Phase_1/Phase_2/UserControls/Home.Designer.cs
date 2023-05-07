namespace Phase_1.UserControls
{
    partial class Home
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
            this.panelThongTin = new System.Windows.Forms.Panel();
            this.button25 = new System.Windows.Forms.Button();
            this.button23 = new System.Windows.Forms.Button();
            this.panelThongTin.SuspendLayout();
            this.SuspendLayout();
            // 
            // panelThongTin
            // 
            this.panelThongTin.BackColor = System.Drawing.Color.WhiteSmoke;
            this.panelThongTin.Controls.Add(this.button25);
            this.panelThongTin.Controls.Add(this.button23);
            this.panelThongTin.Location = new System.Drawing.Point(538, 25);
            this.panelThongTin.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.panelThongTin.MaximumSize = new System.Drawing.Size(208, 152);
            this.panelThongTin.MinimumSize = new System.Drawing.Size(208, 0);
            this.panelThongTin.Name = "panelThongTin";
            this.panelThongTin.Size = new System.Drawing.Size(208, 105);
            this.panelThongTin.TabIndex = 1;
            // 
            // button25
            // 
            this.button25.FlatAppearance.BorderSize = 0;
            this.button25.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button25.Font = new System.Drawing.Font("Segoe UI Semibold", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button25.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(59)))), ((int)(((byte)(52)))), ((int)(((byte)(118)))));
            this.button25.Location = new System.Drawing.Point(0, 44);
            this.button25.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.button25.Name = "button25";
            this.button25.Padding = new System.Windows.Forms.Padding(30, 0, 0, 0);
            this.button25.Size = new System.Drawing.Size(328, 48);
            this.button25.TabIndex = 1;
            this.button25.Text = "Sign out";
            this.button25.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.button25.UseVisualStyleBackColor = true;
            this.button25.Click += new System.EventHandler(this.button25_Click);
            // 
            // button23
            // 
            this.button23.FlatAppearance.BorderSize = 0;
            this.button23.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button23.Font = new System.Drawing.Font("Segoe UI Semibold", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button23.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(59)))), ((int)(((byte)(52)))), ((int)(((byte)(118)))));
            this.button23.Location = new System.Drawing.Point(0, -4);
            this.button23.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.button23.Name = "button23";
            this.button23.Padding = new System.Windows.Forms.Padding(30, 0, 0, 0);
            this.button23.Size = new System.Drawing.Size(328, 48);
            this.button23.TabIndex = 1;
            this.button23.Text = "Your profile";
            this.button23.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.button23.UseVisualStyleBackColor = true;
            this.button23.Click += new System.EventHandler(this.button23_Click);
            // 
            // Home
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.panelThongTin);
            this.Name = "Home";
            this.Size = new System.Drawing.Size(977, 409);
            this.panelThongTin.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panelThongTin;
        private System.Windows.Forms.Button button25;
        private System.Windows.Forms.Button button23;
    }
}

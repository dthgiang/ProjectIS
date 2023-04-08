namespace Phase_1
{
    partial class Form4
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form4));
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.EXIT = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.label1.Location = new System.Drawing.Point(324, 340);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(109, 18);
            this.label1.TabIndex = 1;
            this.label1.Text = "User name:";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.label2.Location = new System.Drawing.Point(324, 380);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(101, 18);
            this.label2.TabIndex = 2;
            this.label2.Text = "Password:";
            // 
            // textBox1
            // 
            this.textBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.textBox1.Location = new System.Drawing.Point(444, 336);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(237, 26);
            this.textBox1.TabIndex = 3;
            // 
            // textBox2
            // 
            this.textBox2.BackColor = System.Drawing.SystemColors.InactiveBorder;
            this.textBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.textBox2.Location = new System.Drawing.Point(444, 374);
            this.textBox2.Name = "textBox2";
            this.textBox2.PasswordChar = '';
            this.textBox2.Size = new System.Drawing.Size(237, 26);
            this.textBox2.TabIndex = 4;
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.Color.SteelBlue;
            this.button1.FlatAppearance.BorderColor = System.Drawing.Color.White;
            this.button1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button1.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.button1.Location = new System.Drawing.Point(327, 418);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(354, 37);
            this.button1.TabIndex = 5;
            this.button1.Text = "LOG IN";
            this.button1.UseVisualStyleBackColor = false;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // EXIT
            // 
            this.EXIT.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.EXIT.FlatAppearance.BorderColor = System.Drawing.Color.White;
            this.EXIT.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.EXIT.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.EXIT.ForeColor = System.Drawing.Color.Crimson;
            this.EXIT.Location = new System.Drawing.Point(860, 549);
            this.EXIT.Name = "EXIT";
            this.EXIT.Size = new System.Drawing.Size(77, 37);
            this.EXIT.TabIndex = 6;
            this.EXIT.Text = "Exit";
            this.EXIT.UseVisualStyleBackColor = false;
            this.EXIT.Click += new System.EventHandler(this.EXIT_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.label3.ForeColor = System.Drawing.SystemColors.AppWorkspace;
            this.label3.Location = new System.Drawing.Point(169, 549);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(655, 26);
            this.label3.TabIndex = 7;
            this.label3.Text = resources.GetString("label3.Text");
            this.label3.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // Form4
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::Phase_1.Properties.Resources.LogIn;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(972, 599);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.EXIT);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.textBox2);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.label2);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Form4";
            this.Text = "WELCOME BACK TO WORK!";
            this.Load += new System.EventHandler(this.Form4_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button EXIT;
        private System.Windows.Forms.Label label3;
    }
}
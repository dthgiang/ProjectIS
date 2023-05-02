
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
            this.backButton = new System.Windows.Forms.Button();
            this.privilegeTextBox = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.revokeButton = new System.Windows.Forms.Button();
            this.searchButton = new System.Windows.Forms.Button();
            this.label6 = new System.Windows.Forms.Label();
            this.searchTextBox = new System.Windows.Forms.TextBox();
            this.moreActionButton = new System.Windows.Forms.Button();
            this.allPrivCheckbox = new System.Windows.Forms.CheckBox();
            this.colPrivCheckbox = new System.Windows.Forms.CheckBox();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(228, 276);
            this.dataGridView1.Margin = new System.Windows.Forms.Padding(2);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 62;
            this.dataGridView1.RowTemplate.Height = 28;
            this.dataGridView1.Size = new System.Drawing.Size(536, 284);
            this.dataGridView1.TabIndex = 1;
            this.dataGridView1.CellMouseClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.dataGridView1_CellMouseClick);
            // 
            // backButton
            // 
            this.backButton.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.backButton.FlatAppearance.BorderColor = System.Drawing.SystemColors.ControlLightLight;
            this.backButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.backButton.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.backButton.ForeColor = System.Drawing.Color.SteelBlue;
            this.backButton.Location = new System.Drawing.Point(805, 538);
            this.backButton.Margin = new System.Windows.Forms.Padding(2);
            this.backButton.Name = "backButton";
            this.backButton.Size = new System.Drawing.Size(88, 34);
            this.backButton.TabIndex = 9;
            this.backButton.Text = "Back";
            this.backButton.UseVisualStyleBackColor = false;
            this.backButton.Click += new System.EventHandler(this.backButton_Click);
            // 
            // privilegeTextBox
            // 
            this.privilegeTextBox.Location = new System.Drawing.Point(366, 228);
            this.privilegeTextBox.Margin = new System.Windows.Forms.Padding(2);
            this.privilegeTextBox.Name = "privilegeTextBox";
            this.privilegeTextBox.ReadOnly = true;
            this.privilegeTextBox.Size = new System.Drawing.Size(222, 20);
            this.privilegeTextBox.TabIndex = 12;
            this.privilegeTextBox.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.BackColor = System.Drawing.Color.Transparent;
            this.label5.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.label5.Location = new System.Drawing.Point(202, 228);
            this.label5.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(153, 18);
            this.label5.TabIndex = 13;
            this.label5.Text = "Privilege Choose";
            this.label5.Click += new System.EventHandler(this.label5_Click);
            // 
            // revokeButton
            // 
            this.revokeButton.BackColor = System.Drawing.Color.Tomato;
            this.revokeButton.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Aqua;
            this.revokeButton.FlatAppearance.MouseOverBackColor = System.Drawing.Color.LimeGreen;
            this.revokeButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.revokeButton.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.revokeButton.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.revokeButton.Location = new System.Drawing.Point(612, 221);
            this.revokeButton.Margin = new System.Windows.Forms.Padding(2);
            this.revokeButton.Name = "revokeButton";
            this.revokeButton.Size = new System.Drawing.Size(202, 27);
            this.revokeButton.TabIndex = 14;
            this.revokeButton.Text = "Revoke";
            this.revokeButton.UseVisualStyleBackColor = false;
            this.revokeButton.Click += new System.EventHandler(this.revokeButton_Click);
            // 
            // searchButton
            // 
            this.searchButton.BackColor = System.Drawing.Color.SteelBlue;
            this.searchButton.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Aqua;
            this.searchButton.FlatAppearance.MouseOverBackColor = System.Drawing.Color.LimeGreen;
            this.searchButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.searchButton.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.searchButton.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.searchButton.Location = new System.Drawing.Point(612, 181);
            this.searchButton.Margin = new System.Windows.Forms.Padding(2);
            this.searchButton.Name = "searchButton";
            this.searchButton.Size = new System.Drawing.Size(97, 27);
            this.searchButton.TabIndex = 18;
            this.searchButton.Text = "Search";
            this.searchButton.UseVisualStyleBackColor = false;
            this.searchButton.Click += new System.EventHandler(this.searchButton_Click);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.BackColor = System.Drawing.Color.Transparent;
            this.label6.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.label6.Location = new System.Drawing.Point(202, 188);
            this.label6.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(119, 18);
            this.label6.TabIndex = 17;
            this.label6.Text = "Find grantee";
            // 
            // searchTextBox
            // 
            this.searchTextBox.Location = new System.Drawing.Point(366, 188);
            this.searchTextBox.Margin = new System.Windows.Forms.Padding(2);
            this.searchTextBox.Name = "searchTextBox";
            this.searchTextBox.Size = new System.Drawing.Size(222, 20);
            this.searchTextBox.TabIndex = 16;
            // 
            // moreActionButton
            // 
            this.moreActionButton.BackColor = System.Drawing.Color.SteelBlue;
            this.moreActionButton.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Aqua;
            this.moreActionButton.FlatAppearance.MouseOverBackColor = System.Drawing.Color.LimeGreen;
            this.moreActionButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.moreActionButton.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.moreActionButton.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.moreActionButton.Location = new System.Drawing.Point(713, 181);
            this.moreActionButton.Margin = new System.Windows.Forms.Padding(2);
            this.moreActionButton.Name = "moreActionButton";
            this.moreActionButton.Size = new System.Drawing.Size(101, 27);
            this.moreActionButton.TabIndex = 26;
            this.moreActionButton.Text = "More Action";
            this.moreActionButton.UseVisualStyleBackColor = false;
            this.moreActionButton.Click += new System.EventHandler(this.moreActionButton_Click);
            // 
            // allPrivCheckbox
            // 
            this.allPrivCheckbox.AutoSize = true;
            this.allPrivCheckbox.BackColor = System.Drawing.Color.Transparent;
            this.allPrivCheckbox.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.allPrivCheckbox.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.allPrivCheckbox.Location = new System.Drawing.Point(539, 134);
            this.allPrivCheckbox.Margin = new System.Windows.Forms.Padding(2, 3, 2, 3);
            this.allPrivCheckbox.Name = "allPrivCheckbox";
            this.allPrivCheckbox.Size = new System.Drawing.Size(127, 22);
            this.allPrivCheckbox.TabIndex = 28;
            this.allPrivCheckbox.Text = "All Privilege";
            this.allPrivCheckbox.UseVisualStyleBackColor = false;
            this.allPrivCheckbox.CheckedChanged += new System.EventHandler(this.allPrivCheckbox_CheckedChanged);
            // 
            // colPrivCheckbox
            // 
            this.colPrivCheckbox.AutoSize = true;
            this.colPrivCheckbox.BackColor = System.Drawing.Color.Transparent;
            this.colPrivCheckbox.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.colPrivCheckbox.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.colPrivCheckbox.Location = new System.Drawing.Point(300, 134);
            this.colPrivCheckbox.Margin = new System.Windows.Forms.Padding(2, 3, 2, 3);
            this.colPrivCheckbox.Name = "colPrivCheckbox";
            this.colPrivCheckbox.Size = new System.Drawing.Size(172, 22);
            this.colPrivCheckbox.TabIndex = 27;
            this.colPrivCheckbox.Text = "Column Privilege";
            this.colPrivCheckbox.UseVisualStyleBackColor = false;
            this.colPrivCheckbox.CheckedChanged += new System.EventHandler(this.colPrivCheckbox_CheckedChanged);
            // 
            // Detail
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::Phase_1.Properties.Resources.Details;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(984, 645);
            this.Controls.Add(this.allPrivCheckbox);
            this.Controls.Add(this.colPrivCheckbox);
            this.Controls.Add(this.moreActionButton);
            this.Controls.Add(this.searchButton);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.searchTextBox);
            this.Controls.Add(this.revokeButton);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.privilegeTextBox);
            this.Controls.Add(this.backButton);
            this.Controls.Add(this.dataGridView1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "Detail";
            this.Text = "DETAILS";
            this.Load += new System.EventHandler(this.Detail_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button backButton;
        private System.Windows.Forms.TextBox privilegeTextBox;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button revokeButton;
        private System.Windows.Forms.Button searchButton;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox searchTextBox;
        private System.Windows.Forms.Button moreActionButton;
        private System.Windows.Forms.CheckBox allPrivCheckbox;
        private System.Windows.Forms.CheckBox colPrivCheckbox;
    }
}
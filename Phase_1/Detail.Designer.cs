
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
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.grantButton = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.privComboBox = new System.Windows.Forms.ComboBox();
            this.objectComboBox = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.granteeComboBox = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(272, 258);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 62;
            this.dataGridView1.RowTemplate.Height = 28;
            this.dataGridView1.Size = new System.Drawing.Size(804, 437);
            this.dataGridView1.TabIndex = 1;
            this.dataGridView1.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(12, -2);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(1498, 919);
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            // 
            // grantButton
            // 
            this.grantButton.BackColor = System.Drawing.Color.MediumSpringGreen;
            this.grantButton.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Aqua;
            this.grantButton.FlatAppearance.MouseOverBackColor = System.Drawing.Color.LimeGreen;
            this.grantButton.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.grantButton.Location = new System.Drawing.Point(995, 186);
            this.grantButton.Name = "grantButton";
            this.grantButton.Size = new System.Drawing.Size(98, 37);
            this.grantButton.TabIndex = 2;
            this.grantButton.Text = "Grant";
            this.grantButton.UseVisualStyleBackColor = false;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.MediumAquamarine;
            this.label1.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(274, 194);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(105, 28);
            this.label1.TabIndex = 3;
            this.label1.Text = "Privilege";
            // 
            // privComboBox
            // 
            this.privComboBox.FormattingEnabled = true;
            this.privComboBox.Items.AddRange(new object[] {
            "Select",
            "Insert",
            "Update",
            "Delete"});
            this.privComboBox.Location = new System.Drawing.Point(379, 194);
            this.privComboBox.Name = "privComboBox";
            this.privComboBox.Size = new System.Drawing.Size(139, 28);
            this.privComboBox.TabIndex = 4;
            // 
            // objectComboBox
            // 
            this.objectComboBox.FormattingEnabled = true;
            this.objectComboBox.Location = new System.Drawing.Point(638, 194);
            this.objectComboBox.Name = "objectComboBox";
            this.objectComboBox.Size = new System.Drawing.Size(139, 28);
            this.objectComboBox.TabIndex = 6;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.MediumAquamarine;
            this.label2.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(560, 194);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(78, 28);
            this.label2.TabIndex = 5;
            this.label2.Text = "Object";
            // 
            // granteeComboBox
            // 
            this.granteeComboBox.FormattingEnabled = true;
            this.granteeComboBox.Location = new System.Drawing.Point(838, 194);
            this.granteeComboBox.Name = "granteeComboBox";
            this.granteeComboBox.Size = new System.Drawing.Size(139, 28);
            this.granteeComboBox.TabIndex = 8;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.MediumAquamarine;
            this.label3.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(801, 194);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(37, 28);
            this.label3.TabIndex = 7;
            this.label3.Text = "To";
            // 
            // Detail
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1292, 695);
            this.Controls.Add(this.granteeComboBox);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.objectComboBox);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.privComboBox);
            this.Controls.Add(this.label1);
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
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox privComboBox;
        private System.Windows.Forms.ComboBox objectComboBox;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox granteeComboBox;
        private System.Windows.Forms.Label label3;
    }
}
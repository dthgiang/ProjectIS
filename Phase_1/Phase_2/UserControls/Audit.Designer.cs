namespace Phase_1.Phase_2.UserControls
{
    partial class Audit
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
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.viewAuditButton = new System.Windows.Forms.Button();
            this.viewLogButton = new System.Windows.Forms.Button();
            this.auditDataGridView = new System.Windows.Forms.DataGridView();
            this.auditLabel = new System.Windows.Forms.Label();
            this.logDataGridView = new System.Windows.Forms.DataGridView();
            this.richTextBox1 = new System.Windows.Forms.RichTextBox();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.auditDataGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.logDataGridView)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.BackgroundColor = System.Drawing.SystemColors.ButtonHighlight;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dataGridView1.GridColor = System.Drawing.SystemColors.ControlLightLight;
            this.dataGridView1.Location = new System.Drawing.Point(0, 0);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 62;
            this.dataGridView1.RowTemplate.Height = 28;
            this.dataGridView1.Size = new System.Drawing.Size(1049, 677);
            this.dataGridView1.TabIndex = 0;
            // 
            // viewAuditButton
            // 
            this.viewAuditButton.BackColor = System.Drawing.Color.Violet;
            this.viewAuditButton.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.viewAuditButton.Location = new System.Drawing.Point(419, 634);
            this.viewAuditButton.Name = "viewAuditButton";
            this.viewAuditButton.Size = new System.Drawing.Size(178, 43);
            this.viewAuditButton.TabIndex = 16;
            this.viewAuditButton.Text = "View Audit";
            this.viewAuditButton.UseVisualStyleBackColor = false;
            this.viewAuditButton.Click += new System.EventHandler(this.viewAuditButton_Click);
            // 
            // viewLogButton
            // 
            this.viewLogButton.BackColor = System.Drawing.Color.Violet;
            this.viewLogButton.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.viewLogButton.Location = new System.Drawing.Point(419, 634);
            this.viewLogButton.Name = "viewLogButton";
            this.viewLogButton.Size = new System.Drawing.Size(178, 43);
            this.viewLogButton.TabIndex = 17;
            this.viewLogButton.Text = "View Log";
            this.viewLogButton.UseVisualStyleBackColor = false;
            this.viewLogButton.Click += new System.EventHandler(this.viewLogButton_Click);
            // 
            // auditDataGridView
            // 
            this.auditDataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.auditDataGridView.Location = new System.Drawing.Point(51, 71);
            this.auditDataGridView.Name = "auditDataGridView";
            this.auditDataGridView.RowHeadersWidth = 62;
            this.auditDataGridView.RowTemplate.Height = 28;
            this.auditDataGridView.Size = new System.Drawing.Size(916, 518);
            this.auditDataGridView.TabIndex = 18;
            // 
            // auditLabel
            // 
            this.auditLabel.AutoSize = true;
            this.auditLabel.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.auditLabel.Location = new System.Drawing.Point(403, 25);
            this.auditLabel.Name = "auditLabel";
            this.auditLabel.Size = new System.Drawing.Size(211, 28);
            this.auditLabel.TabIndex = 19;
            this.auditLabel.Text = "Audit Information";
            // 
            // logDataGridView
            // 
            this.logDataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.logDataGridView.Location = new System.Drawing.Point(51, 71);
            this.logDataGridView.Name = "logDataGridView";
            this.logDataGridView.RowHeadersWidth = 62;
            this.logDataGridView.RowTemplate.Height = 28;
            this.logDataGridView.Size = new System.Drawing.Size(916, 518);
            this.logDataGridView.TabIndex = 20;
            // 
            // richTextBox1
            // 
            this.richTextBox1.Location = new System.Drawing.Point(301, 192);
            this.richTextBox1.Name = "richTextBox1";
            this.richTextBox1.ReadOnly = true;
            this.richTextBox1.Size = new System.Drawing.Size(369, 241);
            this.richTextBox1.TabIndex = 21;
            this.richTextBox1.Text = "";
            // 
            // Audit
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.richTextBox1);
            this.Controls.Add(this.auditLabel);
            this.Controls.Add(this.auditDataGridView);
            this.Controls.Add(this.viewLogButton);
            this.Controls.Add(this.viewAuditButton);
            this.Controls.Add(this.logDataGridView);
            this.Controls.Add(this.dataGridView1);
            this.Name = "Audit";
            this.Size = new System.Drawing.Size(1049, 677);
            this.Load += new System.EventHandler(this.Audit_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.auditDataGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.logDataGridView)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button viewAuditButton;
        private System.Windows.Forms.Button viewLogButton;
        private System.Windows.Forms.DataGridView auditDataGridView;
        private System.Windows.Forms.Label auditLabel;
        private System.Windows.Forms.DataGridView logDataGridView;
        private System.Windows.Forms.RichTextBox richTextBox1;
    }
}

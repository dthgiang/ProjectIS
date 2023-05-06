
namespace Phase_1.UserControls
{
    partial class AddNotification
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
            this.contentTextBox = new System.Windows.Forms.RichTextBox();
            this.objectComboBox = new System.Windows.Forms.CheckedListBox();
            this.fieldComboBox = new System.Windows.Forms.CheckedListBox();
            this.regionComboBox = new System.Windows.Forms.CheckedListBox();
            this.topLabel = new System.Windows.Forms.Label();
            this.backButton = new System.Windows.Forms.Button();
            this.sendNotificationButton = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.configEmpButton = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.assignButton = new System.Windows.Forms.Button();
            this.objectTextBox = new System.Windows.Forms.TextBox();
            this.assignToLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // contentTextBox
            // 
            this.contentTextBox.Location = new System.Drawing.Point(38, 95);
            this.contentTextBox.Name = "contentTextBox";
            this.contentTextBox.Size = new System.Drawing.Size(573, 366);
            this.contentTextBox.TabIndex = 1;
            this.contentTextBox.Text = "";
            // 
            // objectComboBox
            // 
            this.objectComboBox.Font = new System.Drawing.Font("Cambria", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.objectComboBox.FormattingEnabled = true;
            this.objectComboBox.Location = new System.Drawing.Point(652, 122);
            this.objectComboBox.Name = "objectComboBox";
            this.objectComboBox.Size = new System.Drawing.Size(171, 88);
            this.objectComboBox.TabIndex = 3;
            // 
            // fieldComboBox
            // 
            this.fieldComboBox.Font = new System.Drawing.Font("Cambria", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.fieldComboBox.FormattingEnabled = true;
            this.fieldComboBox.Location = new System.Drawing.Point(652, 244);
            this.fieldComboBox.Name = "fieldComboBox";
            this.fieldComboBox.Size = new System.Drawing.Size(171, 88);
            this.fieldComboBox.TabIndex = 4;
            // 
            // regionComboBox
            // 
            this.regionComboBox.Font = new System.Drawing.Font("Cambria", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.regionComboBox.FormattingEnabled = true;
            this.regionComboBox.Location = new System.Drawing.Point(652, 373);
            this.regionComboBox.Name = "regionComboBox";
            this.regionComboBox.Size = new System.Drawing.Size(171, 88);
            this.regionComboBox.TabIndex = 5;
            // 
            // topLabel
            // 
            this.topLabel.AutoSize = true;
            this.topLabel.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.topLabel.Location = new System.Drawing.Point(33, 54);
            this.topLabel.Name = "topLabel";
            this.topLabel.Size = new System.Drawing.Size(264, 28);
            this.topLabel.TabIndex = 6;
            this.topLabel.Text = "Enter your notification";
            // 
            // backButton
            // 
            this.backButton.BackColor = System.Drawing.SystemColors.ButtonHighlight;
            this.backButton.Font = new System.Drawing.Font("Cambria", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.backButton.Location = new System.Drawing.Point(38, 3);
            this.backButton.Name = "backButton";
            this.backButton.Size = new System.Drawing.Size(75, 36);
            this.backButton.TabIndex = 7;
            this.backButton.Text = "Back";
            this.backButton.UseVisualStyleBackColor = false;
            this.backButton.Click += new System.EventHandler(this.backButton_Click);
            // 
            // sendNotificationButton
            // 
            this.sendNotificationButton.BackColor = System.Drawing.Color.Violet;
            this.sendNotificationButton.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.sendNotificationButton.Location = new System.Drawing.Point(528, 504);
            this.sendNotificationButton.Name = "sendNotificationButton";
            this.sendNotificationButton.Size = new System.Drawing.Size(178, 43);
            this.sendNotificationButton.TabIndex = 8;
            this.sendNotificationButton.Text = "Send";
            this.sendNotificationButton.UseVisualStyleBackColor = false;
            this.sendNotificationButton.Click += new System.EventHandler(this.sendNotificationButton_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(647, 54);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(231, 28);
            this.label2.TabIndex = 9;
            this.label2.Text = "Choose user to send";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(617, 91);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(62, 28);
            this.label3.TabIndex = 10;
            this.label3.Text = "Role";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(617, 213);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(67, 28);
            this.label4.TabIndex = 11;
            this.label4.Text = "Field";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(617, 335);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(89, 28);
            this.label5.TabIndex = 12;
            this.label5.Text = "Region";
            // 
            // configEmpButton
            // 
            this.configEmpButton.BackColor = System.Drawing.Color.MediumPurple;
            this.configEmpButton.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.configEmpButton.Location = new System.Drawing.Point(141, 504);
            this.configEmpButton.Name = "configEmpButton";
            this.configEmpButton.Size = new System.Drawing.Size(217, 43);
            this.configEmpButton.TabIndex = 13;
            this.configEmpButton.Text = "Config Employee";
            this.configEmpButton.UseVisualStyleBackColor = false;
            this.configEmpButton.Click += new System.EventHandler(this.configEmpButton_Click);
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(38, 135);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 62;
            this.dataGridView1.RowTemplate.Height = 28;
            this.dataGridView1.Size = new System.Drawing.Size(573, 326);
            this.dataGridView1.TabIndex = 14;
            this.dataGridView1.CellMouseClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.dataGridView1_CellMouseClick);
            // 
            // assignButton
            // 
            this.assignButton.BackColor = System.Drawing.Color.Violet;
            this.assignButton.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.assignButton.Location = new System.Drawing.Point(528, 504);
            this.assignButton.Name = "assignButton";
            this.assignButton.Size = new System.Drawing.Size(178, 43);
            this.assignButton.TabIndex = 15;
            this.assignButton.Text = "Assign";
            this.assignButton.UseVisualStyleBackColor = false;
            this.assignButton.Click += new System.EventHandler(this.assignButton_Click);
            // 
            // objectTextBox
            // 
            this.objectTextBox.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.objectTextBox.Location = new System.Drawing.Point(165, 95);
            this.objectTextBox.Name = "objectTextBox";
            this.objectTextBox.Size = new System.Drawing.Size(446, 36);
            this.objectTextBox.TabIndex = 16;
            // 
            // assignToLabel
            // 
            this.assignToLabel.AutoSize = true;
            this.assignToLabel.BackColor = System.Drawing.Color.Violet;
            this.assignToLabel.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.assignToLabel.Location = new System.Drawing.Point(43, 101);
            this.assignToLabel.Name = "assignToLabel";
            this.assignToLabel.Size = new System.Drawing.Size(116, 28);
            this.assignToLabel.TabIndex = 18;
            this.assignToLabel.Text = "Assign To";
            // 
            // AddNotification
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.assignToLabel);
            this.Controls.Add(this.objectTextBox);
            this.Controls.Add(this.assignButton);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.configEmpButton);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.sendNotificationButton);
            this.Controls.Add(this.backButton);
            this.Controls.Add(this.topLabel);
            this.Controls.Add(this.regionComboBox);
            this.Controls.Add(this.fieldComboBox);
            this.Controls.Add(this.objectComboBox);
            this.Controls.Add(this.contentTextBox);
            this.Name = "AddNotification";
            this.Size = new System.Drawing.Size(1032, 603);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.RichTextBox contentTextBox;
        private System.Windows.Forms.CheckedListBox objectComboBox;
        private System.Windows.Forms.CheckedListBox fieldComboBox;
        private System.Windows.Forms.CheckedListBox regionComboBox;
        private System.Windows.Forms.Label topLabel;
        private System.Windows.Forms.Button backButton;
        private System.Windows.Forms.Button sendNotificationButton;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button configEmpButton;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button assignButton;
        private System.Windows.Forms.TextBox objectTextBox;
        private System.Windows.Forms.Label assignToLabel;
    }
}

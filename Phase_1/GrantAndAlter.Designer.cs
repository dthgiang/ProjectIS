
namespace Phase_1
{
    partial class GrantAndAlter
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
            this.components = new System.ComponentModel.Container();
            this.grantPrivButton = new System.Windows.Forms.Button();
            this.changePWButton = new System.Windows.Forms.Button();
            this.grantRoleButton = new System.Windows.Forms.Button();
            this.returnButton = new System.Windows.Forms.Button();
            this.welcomeLabel = new System.Windows.Forms.Label();
            this.nameObjsLabel = new System.Windows.Forms.Label();
            this.rowComboBox = new System.Windows.Forms.ComboBox();
            this.roleLabel = new System.Windows.Forms.Label();
            this.optionComboBox = new System.Windows.Forms.ComboBox();
            this.optionLabel = new System.Windows.Forms.Label();
            this.objectTextBox = new System.Windows.Forms.TextBox();
            this.attributeComboBox = new System.Windows.Forms.ComboBox();
            this.attributeLabel = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.privComboBox = new System.Windows.Forms.ComboBox();
            this.privLabel = new System.Windows.Forms.Label();
            this.grantPrivActionButton = new System.Windows.Forms.Button();
            this.grantPrivPanel = new System.Windows.Forms.Panel();
            this.objectComboBox = new System.Windows.Forms.ComboBox();
            this.objectLabel = new System.Windows.Forms.Label();
            this.changePWPanel = new System.Windows.Forms.Panel();
            this.passwordCheckBox = new System.Windows.Forms.CheckBox();
            this.confirmPWTextBox = new System.Windows.Forms.TextBox();
            this.newPWTextBox = new System.Windows.Forms.TextBox();
            this.newPWLabel = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.changePWActionButton = new System.Windows.Forms.Button();
            this.granteeChangePWTextBox = new System.Windows.Forms.TextBox();
            this.confirmPWLabel = new System.Windows.Forms.Label();
            this.grantRolePanel = new System.Windows.Forms.Panel();
            this.label6 = new System.Windows.Forms.Label();
            this.grantRoleActionButton = new System.Windows.Forms.Button();
            this.granteeRoleTextBox = new System.Windows.Forms.TextBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.changeUserButton = new System.Windows.Forms.Button();
            this.searchNameTextBox = new System.Windows.Forms.TextBox();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.grantPrivPanel.SuspendLayout();
            this.changePWPanel.SuspendLayout();
            this.grantRolePanel.SuspendLayout();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            this.SuspendLayout();
            // 
            // grantPrivButton
            // 
            this.grantPrivButton.BackColor = System.Drawing.Color.SteelBlue;
            this.grantPrivButton.DialogResult = System.Windows.Forms.DialogResult.No;
            this.grantPrivButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.grantPrivButton.Font = new System.Drawing.Font("Cambria", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.grantPrivButton.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.grantPrivButton.Location = new System.Drawing.Point(24, 87);
            this.grantPrivButton.Margin = new System.Windows.Forms.Padding(2);
            this.grantPrivButton.Name = "grantPrivButton";
            this.grantPrivButton.Size = new System.Drawing.Size(173, 30);
            this.grantPrivButton.TabIndex = 9;
            this.grantPrivButton.Text = "Grant Privilege";
            this.grantPrivButton.UseVisualStyleBackColor = false;
            this.grantPrivButton.Click += new System.EventHandler(this.grantPrivButton_Click);
            // 
            // changePWButton
            // 
            this.changePWButton.BackColor = System.Drawing.Color.SteelBlue;
            this.changePWButton.DialogResult = System.Windows.Forms.DialogResult.No;
            this.changePWButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.changePWButton.Font = new System.Drawing.Font("Cambria", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.changePWButton.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.changePWButton.Location = new System.Drawing.Point(24, 193);
            this.changePWButton.Margin = new System.Windows.Forms.Padding(2);
            this.changePWButton.Name = "changePWButton";
            this.changePWButton.Size = new System.Drawing.Size(173, 30);
            this.changePWButton.TabIndex = 10;
            this.changePWButton.Text = "Change password";
            this.changePWButton.UseVisualStyleBackColor = false;
            this.changePWButton.Click += new System.EventHandler(this.changePWButton_Click);
            // 
            // grantRoleButton
            // 
            this.grantRoleButton.BackColor = System.Drawing.Color.SteelBlue;
            this.grantRoleButton.DialogResult = System.Windows.Forms.DialogResult.No;
            this.grantRoleButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.grantRoleButton.Font = new System.Drawing.Font("Cambria", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.grantRoleButton.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.grantRoleButton.Location = new System.Drawing.Point(24, 141);
            this.grantRoleButton.Margin = new System.Windows.Forms.Padding(2);
            this.grantRoleButton.Name = "grantRoleButton";
            this.grantRoleButton.Size = new System.Drawing.Size(173, 30);
            this.grantRoleButton.TabIndex = 11;
            this.grantRoleButton.Text = "Grant Role";
            this.grantRoleButton.UseVisualStyleBackColor = false;
            this.grantRoleButton.Click += new System.EventHandler(this.grantRoleButton_Click);
            // 
            // returnButton
            // 
            this.returnButton.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.returnButton.DialogResult = System.Windows.Forms.DialogResult.No;
            this.returnButton.FlatAppearance.BorderColor = System.Drawing.SystemColors.ControlLightLight;
            this.returnButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.returnButton.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.returnButton.ForeColor = System.Drawing.Color.SteelBlue;
            this.returnButton.Location = new System.Drawing.Point(772, 482);
            this.returnButton.Margin = new System.Windows.Forms.Padding(2);
            this.returnButton.Name = "returnButton";
            this.returnButton.Size = new System.Drawing.Size(112, 30);
            this.returnButton.TabIndex = 12;
            this.returnButton.Text = "Back";
            this.returnButton.UseVisualStyleBackColor = false;
            this.returnButton.Click += new System.EventHandler(this.returnButton_Click);
            // 
            // welcomeLabel
            // 
            this.welcomeLabel.AutoSize = true;
            this.welcomeLabel.BackColor = System.Drawing.Color.Transparent;
            this.welcomeLabel.Font = new System.Drawing.Font("Verdana", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.welcomeLabel.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.welcomeLabel.Location = new System.Drawing.Point(21, 20);
            this.welcomeLabel.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.welcomeLabel.Name = "welcomeLabel";
            this.welcomeLabel.Size = new System.Drawing.Size(181, 16);
            this.welcomeLabel.TabIndex = 13;
            this.welcomeLabel.Text = "You are editing on User:";
            // 
            // nameObjsLabel
            // 
            this.nameObjsLabel.AutoSize = true;
            this.nameObjsLabel.BackColor = System.Drawing.Color.Transparent;
            this.nameObjsLabel.Font = new System.Drawing.Font("Verdana", 9.75F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.nameObjsLabel.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.nameObjsLabel.Location = new System.Drawing.Point(70, 44);
            this.nameObjsLabel.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.nameObjsLabel.Name = "nameObjsLabel";
            this.nameObjsLabel.Size = new System.Drawing.Size(81, 16);
            this.nameObjsLabel.TabIndex = 14;
            this.nameObjsLabel.Text = "Username";
            // 
            // rowComboBox
            // 
            this.rowComboBox.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.rowComboBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rowComboBox.FormattingEnabled = true;
            this.rowComboBox.Location = new System.Drawing.Point(140, 46);
            this.rowComboBox.Margin = new System.Windows.Forms.Padding(2);
            this.rowComboBox.Name = "rowComboBox";
            this.rowComboBox.Size = new System.Drawing.Size(153, 24);
            this.rowComboBox.TabIndex = 36;
            // 
            // roleLabel
            // 
            this.roleLabel.AutoSize = true;
            this.roleLabel.BackColor = System.Drawing.Color.Transparent;
            this.roleLabel.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.roleLabel.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.roleLabel.Location = new System.Drawing.Point(52, 48);
            this.roleLabel.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.roleLabel.Name = "roleLabel";
            this.roleLabel.Size = new System.Drawing.Size(47, 18);
            this.roleLabel.TabIndex = 35;
            this.roleLabel.Text = "Role";
            // 
            // optionComboBox
            // 
            this.optionComboBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.optionComboBox.FormattingEnabled = true;
            this.optionComboBox.Items.AddRange(new object[] {
            "Yes",
            "No"});
            this.optionComboBox.Location = new System.Drawing.Point(184, 190);
            this.optionComboBox.Margin = new System.Windows.Forms.Padding(2);
            this.optionComboBox.Name = "optionComboBox";
            this.optionComboBox.Size = new System.Drawing.Size(153, 24);
            this.optionComboBox.TabIndex = 34;
            // 
            // optionLabel
            // 
            this.optionLabel.AutoSize = true;
            this.optionLabel.BackColor = System.Drawing.Color.Transparent;
            this.optionLabel.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.optionLabel.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.optionLabel.Location = new System.Drawing.Point(66, 192);
            this.optionLabel.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.optionLabel.Name = "optionLabel";
            this.optionLabel.Size = new System.Drawing.Size(66, 18);
            this.optionLabel.TabIndex = 33;
            this.optionLabel.Text = "Option";
            // 
            // objectTextBox
            // 
            this.objectTextBox.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.objectTextBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.objectTextBox.Location = new System.Drawing.Point(184, 152);
            this.objectTextBox.Margin = new System.Windows.Forms.Padding(2);
            this.objectTextBox.Name = "objectTextBox";
            this.objectTextBox.ReadOnly = true;
            this.objectTextBox.Size = new System.Drawing.Size(153, 22);
            this.objectTextBox.TabIndex = 32;
            // 
            // attributeComboBox
            // 
            this.attributeComboBox.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.attributeComboBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.attributeComboBox.FormattingEnabled = true;
            this.attributeComboBox.Location = new System.Drawing.Point(184, 112);
            this.attributeComboBox.Margin = new System.Windows.Forms.Padding(2);
            this.attributeComboBox.Name = "attributeComboBox";
            this.attributeComboBox.Size = new System.Drawing.Size(153, 24);
            this.attributeComboBox.TabIndex = 31;
            // 
            // attributeLabel
            // 
            this.attributeLabel.AutoSize = true;
            this.attributeLabel.BackColor = System.Drawing.Color.Transparent;
            this.attributeLabel.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.attributeLabel.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.attributeLabel.Location = new System.Drawing.Point(66, 115);
            this.attributeLabel.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.attributeLabel.Name = "attributeLabel";
            this.attributeLabel.Size = new System.Drawing.Size(86, 18);
            this.attributeLabel.TabIndex = 30;
            this.attributeLabel.Text = "Attribute";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.Transparent;
            this.label3.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.label3.Location = new System.Drawing.Point(66, 151);
            this.label3.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(31, 18);
            this.label3.TabIndex = 29;
            this.label3.Text = "To";
            // 
            // privComboBox
            // 
            this.privComboBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.privComboBox.FormattingEnabled = true;
            this.privComboBox.Items.AddRange(new object[] {
            "Select",
            "Insert",
            "Update",
            "Delete"});
            this.privComboBox.Location = new System.Drawing.Point(184, 35);
            this.privComboBox.Margin = new System.Windows.Forms.Padding(2);
            this.privComboBox.Name = "privComboBox";
            this.privComboBox.Size = new System.Drawing.Size(153, 24);
            this.privComboBox.TabIndex = 28;
            this.privComboBox.SelectedIndexChanged += new System.EventHandler(this.privComboBox_SelectedIndexChanged);
            // 
            // privLabel
            // 
            this.privLabel.AutoSize = true;
            this.privLabel.BackColor = System.Drawing.Color.Transparent;
            this.privLabel.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.privLabel.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.privLabel.Location = new System.Drawing.Point(66, 40);
            this.privLabel.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.privLabel.Name = "privLabel";
            this.privLabel.Size = new System.Drawing.Size(83, 18);
            this.privLabel.TabIndex = 27;
            this.privLabel.Text = "Privilege";
            // 
            // grantPrivActionButton
            // 
            this.grantPrivActionButton.BackColor = System.Drawing.Color.SteelBlue;
            this.grantPrivActionButton.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Aqua;
            this.grantPrivActionButton.FlatAppearance.MouseOverBackColor = System.Drawing.Color.LimeGreen;
            this.grantPrivActionButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.grantPrivActionButton.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.grantPrivActionButton.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.grantPrivActionButton.Location = new System.Drawing.Point(248, 230);
            this.grantPrivActionButton.Margin = new System.Windows.Forms.Padding(2);
            this.grantPrivActionButton.Name = "grantPrivActionButton";
            this.grantPrivActionButton.Size = new System.Drawing.Size(89, 31);
            this.grantPrivActionButton.TabIndex = 26;
            this.grantPrivActionButton.Text = "Grant";
            this.grantPrivActionButton.UseVisualStyleBackColor = false;
            this.grantPrivActionButton.Click += new System.EventHandler(this.grantPrivActionButton_Click);
            // 
            // grantPrivPanel
            // 
            this.grantPrivPanel.BackColor = System.Drawing.Color.Transparent;
            this.grantPrivPanel.Controls.Add(this.objectComboBox);
            this.grantPrivPanel.Controls.Add(this.objectLabel);
            this.grantPrivPanel.Controls.Add(this.optionLabel);
            this.grantPrivPanel.Controls.Add(this.optionComboBox);
            this.grantPrivPanel.Controls.Add(this.label3);
            this.grantPrivPanel.Controls.Add(this.grantPrivActionButton);
            this.grantPrivPanel.Controls.Add(this.privLabel);
            this.grantPrivPanel.Controls.Add(this.privComboBox);
            this.grantPrivPanel.Controls.Add(this.objectTextBox);
            this.grantPrivPanel.Controls.Add(this.attributeComboBox);
            this.grantPrivPanel.Controls.Add(this.attributeLabel);
            this.grantPrivPanel.Location = new System.Drawing.Point(295, 208);
            this.grantPrivPanel.Margin = new System.Windows.Forms.Padding(2);
            this.grantPrivPanel.Name = "grantPrivPanel";
            this.grantPrivPanel.Size = new System.Drawing.Size(399, 290);
            this.grantPrivPanel.TabIndex = 37;
            // 
            // objectComboBox
            // 
            this.objectComboBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.objectComboBox.FormattingEnabled = true;
            this.objectComboBox.Location = new System.Drawing.Point(184, 74);
            this.objectComboBox.Margin = new System.Windows.Forms.Padding(2);
            this.objectComboBox.Name = "objectComboBox";
            this.objectComboBox.Size = new System.Drawing.Size(153, 24);
            this.objectComboBox.TabIndex = 39;
            this.objectComboBox.SelectedIndexChanged += new System.EventHandler(this.objectComboBox_SelectedIndexChanged);
            // 
            // objectLabel
            // 
            this.objectLabel.AutoSize = true;
            this.objectLabel.BackColor = System.Drawing.Color.Transparent;
            this.objectLabel.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.objectLabel.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.objectLabel.Location = new System.Drawing.Point(66, 80);
            this.objectLabel.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.objectLabel.Name = "objectLabel";
            this.objectLabel.Size = new System.Drawing.Size(66, 18);
            this.objectLabel.TabIndex = 38;
            this.objectLabel.Text = "Object";
            // 
            // changePWPanel
            // 
            this.changePWPanel.BackColor = System.Drawing.Color.Transparent;
            this.changePWPanel.Controls.Add(this.passwordCheckBox);
            this.changePWPanel.Controls.Add(this.confirmPWTextBox);
            this.changePWPanel.Controls.Add(this.newPWTextBox);
            this.changePWPanel.Controls.Add(this.newPWLabel);
            this.changePWPanel.Controls.Add(this.label8);
            this.changePWPanel.Controls.Add(this.changePWActionButton);
            this.changePWPanel.Controls.Add(this.granteeChangePWTextBox);
            this.changePWPanel.Controls.Add(this.confirmPWLabel);
            this.changePWPanel.Location = new System.Drawing.Point(283, 208);
            this.changePWPanel.Margin = new System.Windows.Forms.Padding(2);
            this.changePWPanel.Name = "changePWPanel";
            this.changePWPanel.Size = new System.Drawing.Size(432, 246);
            this.changePWPanel.TabIndex = 38;
            // 
            // passwordCheckBox
            // 
            this.passwordCheckBox.AutoSize = true;
            this.passwordCheckBox.BackColor = System.Drawing.Color.Transparent;
            this.passwordCheckBox.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.passwordCheckBox.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.passwordCheckBox.Location = new System.Drawing.Point(127, 26);
            this.passwordCheckBox.Margin = new System.Windows.Forms.Padding(2);
            this.passwordCheckBox.Name = "passwordCheckBox";
            this.passwordCheckBox.Size = new System.Drawing.Size(174, 22);
            this.passwordCheckBox.TabIndex = 41;
            this.passwordCheckBox.Text = "Set no password";
            this.passwordCheckBox.UseVisualStyleBackColor = false;
            this.passwordCheckBox.CheckedChanged += new System.EventHandler(this.passwordCheckBox_CheckedChanged);
            // 
            // confirmPWTextBox
            // 
            this.confirmPWTextBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.confirmPWTextBox.Location = new System.Drawing.Point(213, 116);
            this.confirmPWTextBox.Margin = new System.Windows.Forms.Padding(2);
            this.confirmPWTextBox.Name = "confirmPWTextBox";
            this.confirmPWTextBox.Size = new System.Drawing.Size(155, 22);
            this.confirmPWTextBox.TabIndex = 40;
            // 
            // newPWTextBox
            // 
            this.newPWTextBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.newPWTextBox.Location = new System.Drawing.Point(213, 75);
            this.newPWTextBox.Margin = new System.Windows.Forms.Padding(2);
            this.newPWTextBox.Name = "newPWTextBox";
            this.newPWTextBox.Size = new System.Drawing.Size(155, 22);
            this.newPWTextBox.TabIndex = 39;
            // 
            // newPWLabel
            // 
            this.newPWLabel.AutoSize = true;
            this.newPWLabel.BackColor = System.Drawing.Color.Transparent;
            this.newPWLabel.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.newPWLabel.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.newPWLabel.Location = new System.Drawing.Point(31, 75);
            this.newPWLabel.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.newPWLabel.Name = "newPWLabel";
            this.newPWLabel.Size = new System.Drawing.Size(139, 18);
            this.newPWLabel.TabIndex = 38;
            this.newPWLabel.Text = "New password";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.BackColor = System.Drawing.Color.Transparent;
            this.label8.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.label8.Location = new System.Drawing.Point(31, 156);
            this.label8.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(49, 18);
            this.label8.TabIndex = 29;
            this.label8.Text = "User";
            // 
            // changePWActionButton
            // 
            this.changePWActionButton.BackColor = System.Drawing.Color.SteelBlue;
            this.changePWActionButton.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Aqua;
            this.changePWActionButton.FlatAppearance.MouseOverBackColor = System.Drawing.Color.LimeGreen;
            this.changePWActionButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.changePWActionButton.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.changePWActionButton.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.changePWActionButton.Location = new System.Drawing.Point(272, 190);
            this.changePWActionButton.Margin = new System.Windows.Forms.Padding(2);
            this.changePWActionButton.Name = "changePWActionButton";
            this.changePWActionButton.Size = new System.Drawing.Size(96, 32);
            this.changePWActionButton.TabIndex = 26;
            this.changePWActionButton.Text = "Change";
            this.changePWActionButton.UseVisualStyleBackColor = false;
            this.changePWActionButton.Click += new System.EventHandler(this.changePWActionButton_Click);
            // 
            // granteeChangePWTextBox
            // 
            this.granteeChangePWTextBox.BackColor = System.Drawing.Color.LavenderBlush;
            this.granteeChangePWTextBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.granteeChangePWTextBox.Location = new System.Drawing.Point(213, 154);
            this.granteeChangePWTextBox.Margin = new System.Windows.Forms.Padding(2);
            this.granteeChangePWTextBox.Name = "granteeChangePWTextBox";
            this.granteeChangePWTextBox.ReadOnly = true;
            this.granteeChangePWTextBox.Size = new System.Drawing.Size(155, 22);
            this.granteeChangePWTextBox.TabIndex = 32;
            // 
            // confirmPWLabel
            // 
            this.confirmPWLabel.AutoSize = true;
            this.confirmPWLabel.BackColor = System.Drawing.Color.Transparent;
            this.confirmPWLabel.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.confirmPWLabel.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.confirmPWLabel.Location = new System.Drawing.Point(31, 115);
            this.confirmPWLabel.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.confirmPWLabel.Name = "confirmPWLabel";
            this.confirmPWLabel.Size = new System.Drawing.Size(159, 18);
            this.confirmPWLabel.TabIndex = 30;
            this.confirmPWLabel.Text = "Confirm pasword";
            // 
            // grantRolePanel
            // 
            this.grantRolePanel.BackColor = System.Drawing.Color.Transparent;
            this.grantRolePanel.Controls.Add(this.rowComboBox);
            this.grantRolePanel.Controls.Add(this.label6);
            this.grantRolePanel.Controls.Add(this.roleLabel);
            this.grantRolePanel.Controls.Add(this.grantRoleActionButton);
            this.grantRolePanel.Controls.Add(this.granteeRoleTextBox);
            this.grantRolePanel.Location = new System.Drawing.Point(314, 208);
            this.grantRolePanel.Margin = new System.Windows.Forms.Padding(2);
            this.grantRolePanel.Name = "grantRolePanel";
            this.grantRolePanel.Size = new System.Drawing.Size(348, 173);
            this.grantRolePanel.TabIndex = 40;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.BackColor = System.Drawing.Color.Transparent;
            this.label6.Font = new System.Drawing.Font("Verdana", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.label6.Location = new System.Drawing.Point(52, 86);
            this.label6.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(31, 18);
            this.label6.TabIndex = 29;
            this.label6.Text = "To";
            // 
            // grantRoleActionButton
            // 
            this.grantRoleActionButton.BackColor = System.Drawing.Color.SteelBlue;
            this.grantRoleActionButton.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Aqua;
            this.grantRoleActionButton.FlatAppearance.MouseOverBackColor = System.Drawing.Color.LimeGreen;
            this.grantRoleActionButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.grantRoleActionButton.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.grantRoleActionButton.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.grantRoleActionButton.Location = new System.Drawing.Point(203, 128);
            this.grantRoleActionButton.Margin = new System.Windows.Forms.Padding(2);
            this.grantRoleActionButton.Name = "grantRoleActionButton";
            this.grantRoleActionButton.Size = new System.Drawing.Size(90, 33);
            this.grantRoleActionButton.TabIndex = 26;
            this.grantRoleActionButton.Text = "Grant";
            this.grantRoleActionButton.UseVisualStyleBackColor = false;
            this.grantRoleActionButton.Click += new System.EventHandler(this.grantRoleActionButton_Click);
            // 
            // granteeRoleTextBox
            // 
            this.granteeRoleTextBox.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.granteeRoleTextBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.granteeRoleTextBox.Location = new System.Drawing.Point(140, 89);
            this.granteeRoleTextBox.Margin = new System.Windows.Forms.Padding(2);
            this.granteeRoleTextBox.Name = "granteeRoleTextBox";
            this.granteeRoleTextBox.ReadOnly = true;
            this.granteeRoleTextBox.Size = new System.Drawing.Size(153, 22);
            this.granteeRoleTextBox.TabIndex = 32;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.Transparent;
            this.panel1.Controls.Add(this.changeUserButton);
            this.panel1.Controls.Add(this.searchNameTextBox);
            this.panel1.Location = new System.Drawing.Point(331, 130);
            this.panel1.Margin = new System.Windows.Forms.Padding(2);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(305, 38);
            this.panel1.TabIndex = 42;
            // 
            // changeUserButton
            // 
            this.changeUserButton.BackColor = System.Drawing.Color.SteelBlue;
            this.changeUserButton.DialogResult = System.Windows.Forms.DialogResult.No;
            this.changeUserButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.changeUserButton.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.changeUserButton.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.changeUserButton.Location = new System.Drawing.Point(177, 3);
            this.changeUserButton.Margin = new System.Windows.Forms.Padding(2);
            this.changeUserButton.Name = "changeUserButton";
            this.changeUserButton.Size = new System.Drawing.Size(116, 30);
            this.changeUserButton.TabIndex = 43;
            this.changeUserButton.Text = "Change user";
            this.changeUserButton.UseVisualStyleBackColor = false;
            this.changeUserButton.Click += new System.EventHandler(this.changeUserButton_Click);
            // 
            // searchNameTextBox
            // 
            this.searchNameTextBox.Font = new System.Drawing.Font("Cambria", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.searchNameTextBox.Location = new System.Drawing.Point(11, 8);
            this.searchNameTextBox.Margin = new System.Windows.Forms.Padding(2);
            this.searchNameTextBox.Name = "searchNameTextBox";
            this.searchNameTextBox.Size = new System.Drawing.Size(151, 23);
            this.searchNameTextBox.TabIndex = 0;
            // 
            // GrantAndAlter
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::Phase_1.Properties.Resources.GrantAndAlter;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(984, 645);
            this.Controls.Add(this.changePWPanel);
            this.Controls.Add(this.grantPrivPanel);
            this.Controls.Add(this.grantRolePanel);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.nameObjsLabel);
            this.Controls.Add(this.welcomeLabel);
            this.Controls.Add(this.returnButton);
            this.Controls.Add(this.grantRoleButton);
            this.Controls.Add(this.changePWButton);
            this.Controls.Add(this.grantPrivButton);
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "GrantAndAlter";
            this.Text = "grantAndAlter";
            this.Load += new System.EventHandler(this.GrantAndAlter_Load);
            this.grantPrivPanel.ResumeLayout(false);
            this.grantPrivPanel.PerformLayout();
            this.changePWPanel.ResumeLayout(false);
            this.changePWPanel.PerformLayout();
            this.grantRolePanel.ResumeLayout(false);
            this.grantRolePanel.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.BindingSource bindingSource1;
        private System.Windows.Forms.Button grantPrivButton;
        private System.Windows.Forms.Button changePWButton;
        private System.Windows.Forms.Button grantRoleButton;
        private System.Windows.Forms.Button returnButton;
        private System.Windows.Forms.Label welcomeLabel;
        private System.Windows.Forms.Label nameObjsLabel;
        private System.Windows.Forms.ComboBox rowComboBox;
        private System.Windows.Forms.Label roleLabel;
        private System.Windows.Forms.ComboBox optionComboBox;
        private System.Windows.Forms.Label optionLabel;
        private System.Windows.Forms.TextBox objectTextBox;
        private System.Windows.Forms.ComboBox attributeComboBox;
        private System.Windows.Forms.Label attributeLabel;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox privComboBox;
        private System.Windows.Forms.Label privLabel;
        private System.Windows.Forms.Button grantPrivActionButton;
        private System.Windows.Forms.Panel grantPrivPanel;
        private System.Windows.Forms.ComboBox objectComboBox;
        private System.Windows.Forms.Label objectLabel;
        private System.Windows.Forms.Panel grantRolePanel;
        private System.Windows.Forms.Panel changePWPanel;
        private System.Windows.Forms.CheckBox passwordCheckBox;
        private System.Windows.Forms.TextBox confirmPWTextBox;
        private System.Windows.Forms.TextBox newPWTextBox;
        private System.Windows.Forms.Label newPWLabel;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Button changePWActionButton;
        private System.Windows.Forms.TextBox granteeChangePWTextBox;
        private System.Windows.Forms.Label confirmPWLabel;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button grantRoleActionButton;
        private System.Windows.Forms.TextBox granteeRoleTextBox;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button changeUserButton;
        private System.Windows.Forms.TextBox searchNameTextBox;
    }
}
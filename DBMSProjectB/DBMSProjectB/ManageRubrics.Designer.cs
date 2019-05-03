namespace DBMSProjectB
{
    partial class ManageRubrics
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.richTextBox1 = new System.Windows.Forms.RichTextBox();
            this.btn_Addrubrics = new System.Windows.Forms.Button();
            this.btn_delerubrucs = new System.Windows.Forms.Button();
            this.btn_updaterubrics = new System.Windows.Forms.Button();
            this.dataGridViewRubrics = new System.Windows.Forms.DataGridView();
            this.comboBoxcloname = new System.Windows.Forms.ComboBox();
            this.Home = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewRubrics)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(230, 27);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(183, 25);
            this.label1.TabIndex = 0;
            this.label1.Text = "Manage Rubrics";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(135, 82);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(59, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "CLO Name";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(146, 136);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(39, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "Details";
            // 
            // richTextBox1
            // 
            this.richTextBox1.Location = new System.Drawing.Point(312, 118);
            this.richTextBox1.Name = "richTextBox1";
            this.richTextBox1.Size = new System.Drawing.Size(183, 96);
            this.richTextBox1.TabIndex = 4;
            this.richTextBox1.Text = "";
            // 
            // btn_Addrubrics
            // 
            this.btn_Addrubrics.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_Addrubrics.Location = new System.Drawing.Point(149, 225);
            this.btn_Addrubrics.Name = "btn_Addrubrics";
            this.btn_Addrubrics.Size = new System.Drawing.Size(75, 31);
            this.btn_Addrubrics.TabIndex = 5;
            this.btn_Addrubrics.Text = "Add";
            this.btn_Addrubrics.UseVisualStyleBackColor = true;
            this.btn_Addrubrics.Click += new System.EventHandler(this.btn_Addrubrics_Click);
            // 
            // btn_delerubrucs
            // 
            this.btn_delerubrucs.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_delerubrucs.Location = new System.Drawing.Point(338, 225);
            this.btn_delerubrucs.Name = "btn_delerubrucs";
            this.btn_delerubrucs.Size = new System.Drawing.Size(75, 31);
            this.btn_delerubrucs.TabIndex = 6;
            this.btn_delerubrucs.Text = "Delete";
            this.btn_delerubrucs.UseVisualStyleBackColor = true;
            this.btn_delerubrucs.Click += new System.EventHandler(this.btn_delerubrucs_Click);
            // 
            // btn_updaterubrics
            // 
            this.btn_updaterubrics.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_updaterubrics.Location = new System.Drawing.Point(512, 225);
            this.btn_updaterubrics.Name = "btn_updaterubrics";
            this.btn_updaterubrics.Size = new System.Drawing.Size(75, 31);
            this.btn_updaterubrics.TabIndex = 7;
            this.btn_updaterubrics.Text = "Update";
            this.btn_updaterubrics.UseVisualStyleBackColor = true;
            this.btn_updaterubrics.Click += new System.EventHandler(this.btn_updaterubrics_Click);
            // 
            // dataGridViewRubrics
            // 
            this.dataGridViewRubrics.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewRubrics.Location = new System.Drawing.Point(81, 271);
            this.dataGridViewRubrics.Name = "dataGridViewRubrics";
            this.dataGridViewRubrics.Size = new System.Drawing.Size(578, 149);
            this.dataGridViewRubrics.TabIndex = 8;
            this.dataGridViewRubrics.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridViewRubrics_CellContentClick);
            this.dataGridViewRubrics.RowHeaderMouseDoubleClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.dataGridViewRubrics_RowHeaderMouseDoubleClick);
            // 
            // comboBoxcloname
            // 
            this.comboBoxcloname.FormattingEnabled = true;
            this.comboBoxcloname.Location = new System.Drawing.Point(312, 73);
            this.comboBoxcloname.Name = "comboBoxcloname";
            this.comboBoxcloname.Size = new System.Drawing.Size(183, 21);
            this.comboBoxcloname.TabIndex = 9;
            this.comboBoxcloname.DropDownClosed += new System.EventHandler(this.comboBoxcloname_DropDownClosed);
            // 
            // Home
            // 
            this.Home.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Home.Location = new System.Drawing.Point(40, 21);
            this.Home.Name = "Home";
            this.Home.Size = new System.Drawing.Size(75, 39);
            this.Home.TabIndex = 10;
            this.Home.Text = "Home";
            this.Home.UseVisualStyleBackColor = true;
            this.Home.Click += new System.EventHandler(this.Home_Click);
            // 
            // button1
            // 
            this.button1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.Location = new System.Drawing.Point(531, 71);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(128, 23);
            this.button1.TabIndex = 11;
            this.button1.Text = "Set Rubric Level";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // ManageRubrics
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.Home);
            this.Controls.Add(this.comboBoxcloname);
            this.Controls.Add(this.dataGridViewRubrics);
            this.Controls.Add(this.btn_updaterubrics);
            this.Controls.Add(this.btn_delerubrucs);
            this.Controls.Add(this.btn_Addrubrics);
            this.Controls.Add(this.richTextBox1);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "ManageRubrics";
            this.Text = "ManageRubrics";
            this.Load += new System.EventHandler(this.ManageRubrics_Load);
            this.BindingContextChanged += new System.EventHandler(this.ManageRubrics_BindingContextChanged);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewRubrics)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.RichTextBox richTextBox1;
        private System.Windows.Forms.Button btn_Addrubrics;
        private System.Windows.Forms.Button btn_delerubrucs;
        private System.Windows.Forms.Button btn_updaterubrics;
        private System.Windows.Forms.DataGridView dataGridViewRubrics;
        private System.Windows.Forms.ComboBox comboBoxcloname;
        private System.Windows.Forms.Button Home;
        private System.Windows.Forms.Button button1;
    }
}
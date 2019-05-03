namespace DBMSProjectB
{
    partial class ManageCLO
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
            this.label4 = new System.Windows.Forms.Label();
            this.txtcloname = new System.Windows.Forms.TextBox();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.dateTimePicker2 = new System.Windows.Forms.DateTimePicker();
            this.btn_AddCLO = new System.Windows.Forms.Button();
            this.btn_deleteCLO = new System.Windows.Forms.Button();
            this.bbtn_updateCLO = new System.Windows.Forms.Button();
            this.dataGridViewCLO = new System.Windows.Forms.DataGridView();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewCLO)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(104, 78);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(59, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "CLO Name";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(104, 123);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(70, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Date Created";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(104, 166);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(74, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "Date Updated";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(267, 28);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(161, 25);
            this.label4.TabIndex = 3;
            this.label4.Text = "Manage CLOs";
            // 
            // txtcloname
            // 
            this.txtcloname.Location = new System.Drawing.Point(317, 78);
            this.txtcloname.Name = "txtcloname";
            this.txtcloname.Size = new System.Drawing.Size(200, 20);
            this.txtcloname.TabIndex = 4;
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Location = new System.Drawing.Point(317, 123);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(200, 20);
            this.dateTimePicker1.TabIndex = 5;
            // 
            // dateTimePicker2
            // 
            this.dateTimePicker2.Location = new System.Drawing.Point(317, 166);
            this.dateTimePicker2.Name = "dateTimePicker2";
            this.dateTimePicker2.Size = new System.Drawing.Size(200, 20);
            this.dateTimePicker2.TabIndex = 6;
            // 
            // btn_AddCLO
            // 
            this.btn_AddCLO.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_AddCLO.Location = new System.Drawing.Point(121, 212);
            this.btn_AddCLO.Name = "btn_AddCLO";
            this.btn_AddCLO.Size = new System.Drawing.Size(75, 25);
            this.btn_AddCLO.TabIndex = 7;
            this.btn_AddCLO.Text = "Add";
            this.btn_AddCLO.UseVisualStyleBackColor = true;
            this.btn_AddCLO.Click += new System.EventHandler(this.btn_AddCLO_Click);
            // 
            // btn_deleteCLO
            // 
            this.btn_deleteCLO.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_deleteCLO.Location = new System.Drawing.Point(288, 214);
            this.btn_deleteCLO.Name = "btn_deleteCLO";
            this.btn_deleteCLO.Size = new System.Drawing.Size(75, 23);
            this.btn_deleteCLO.TabIndex = 8;
            this.btn_deleteCLO.Text = "Delete";
            this.btn_deleteCLO.UseVisualStyleBackColor = true;
            this.btn_deleteCLO.Click += new System.EventHandler(this.btn_deleteCLO_Click);
            // 
            // bbtn_updateCLO
            // 
            this.bbtn_updateCLO.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bbtn_updateCLO.Location = new System.Drawing.Point(462, 214);
            this.bbtn_updateCLO.Name = "bbtn_updateCLO";
            this.bbtn_updateCLO.Size = new System.Drawing.Size(75, 23);
            this.bbtn_updateCLO.TabIndex = 9;
            this.bbtn_updateCLO.Text = "Update";
            this.bbtn_updateCLO.UseVisualStyleBackColor = true;
            this.bbtn_updateCLO.Click += new System.EventHandler(this.bbtn_updateCLO_Click);
            // 
            // dataGridViewCLO
            // 
            this.dataGridViewCLO.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewCLO.Location = new System.Drawing.Point(75, 262);
            this.dataGridViewCLO.Name = "dataGridViewCLO";
            this.dataGridViewCLO.Size = new System.Drawing.Size(687, 150);
            this.dataGridViewCLO.TabIndex = 10;
            this.dataGridViewCLO.RowHeaderMouseClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.dataGridViewCLO_RowHeaderMouseClick);
            // 
            // button1
            // 
            this.button1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.Location = new System.Drawing.Point(564, 76);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 11;
            this.button1.Text = "Set Rubric";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button2.Location = new System.Drawing.Point(24, 18);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 35);
            this.button2.TabIndex = 12;
            this.button2.Text = "Home";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // ManageCLO
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.dataGridViewCLO);
            this.Controls.Add(this.bbtn_updateCLO);
            this.Controls.Add(this.btn_deleteCLO);
            this.Controls.Add(this.btn_AddCLO);
            this.Controls.Add(this.dateTimePicker2);
            this.Controls.Add(this.dateTimePicker1);
            this.Controls.Add(this.txtcloname);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "ManageCLO";
            this.Text = "ManageCLO";
            this.Load += new System.EventHandler(this.ManageCLO_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewCLO)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtcloname;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
        private System.Windows.Forms.DateTimePicker dateTimePicker2;
        private System.Windows.Forms.Button btn_AddCLO;
        private System.Windows.Forms.Button btn_deleteCLO;
        private System.Windows.Forms.Button bbtn_updateCLO;
        private System.Windows.Forms.DataGridView dataGridViewCLO;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
    }
}
namespace DBMSProjectB
{
    partial class Rubric_Level
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
            this.comboBoxrubricid = new System.Windows.Forms.ComboBox();
            this.comboBoxmeasurementlevel = new System.Windows.Forms.ComboBox();
            this.richTextBoxleveldetails = new System.Windows.Forms.RichTextBox();
            this.btn_Addrubriclevel = new System.Windows.Forms.Button();
            this.btn_Deleterubriclevel = new System.Windows.Forms.Button();
            this.btn_Updaterubriclevel = new System.Windows.Forms.Button();
            this.dataGridViewRubricLevel = new System.Windows.Forms.DataGridView();
            this.button1 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewRubricLevel)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(275, 28);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(144, 25);
            this.label1.TabIndex = 0;
            this.label1.Text = "Rubric Level";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(133, 77);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(50, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Rubric Id";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(122, 122);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(100, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "Measurement Level";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(144, 179);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(39, 13);
            this.label4.TabIndex = 3;
            this.label4.Text = "Details";
            // 
            // comboBoxrubricid
            // 
            this.comboBoxrubricid.FormattingEnabled = true;
            this.comboBoxrubricid.Location = new System.Drawing.Point(348, 69);
            this.comboBoxrubricid.Name = "comboBoxrubricid";
            this.comboBoxrubricid.Size = new System.Drawing.Size(174, 21);
            this.comboBoxrubricid.TabIndex = 4;
            // 
            // comboBoxmeasurementlevel
            // 
            this.comboBoxmeasurementlevel.FormattingEnabled = true;
            this.comboBoxmeasurementlevel.Items.AddRange(new object[] {
            "",
            "1",
            "2",
            "3",
            "4"});
            this.comboBoxmeasurementlevel.Location = new System.Drawing.Point(348, 114);
            this.comboBoxmeasurementlevel.Name = "comboBoxmeasurementlevel";
            this.comboBoxmeasurementlevel.Size = new System.Drawing.Size(174, 21);
            this.comboBoxmeasurementlevel.TabIndex = 5;
            // 
            // richTextBoxleveldetails
            // 
            this.richTextBoxleveldetails.Location = new System.Drawing.Point(348, 154);
            this.richTextBoxleveldetails.Name = "richTextBoxleveldetails";
            this.richTextBoxleveldetails.Size = new System.Drawing.Size(174, 74);
            this.richTextBoxleveldetails.TabIndex = 6;
            this.richTextBoxleveldetails.Text = "";
            // 
            // btn_Addrubriclevel
            // 
            this.btn_Addrubriclevel.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_Addrubriclevel.Location = new System.Drawing.Point(108, 247);
            this.btn_Addrubriclevel.Name = "btn_Addrubriclevel";
            this.btn_Addrubriclevel.Size = new System.Drawing.Size(75, 23);
            this.btn_Addrubriclevel.TabIndex = 7;
            this.btn_Addrubriclevel.Text = "Add";
            this.btn_Addrubriclevel.UseVisualStyleBackColor = true;
            this.btn_Addrubriclevel.Click += new System.EventHandler(this.btn_Addrubriclevel_Click);
            // 
            // btn_Deleterubriclevel
            // 
            this.btn_Deleterubriclevel.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_Deleterubriclevel.Location = new System.Drawing.Point(294, 247);
            this.btn_Deleterubriclevel.Name = "btn_Deleterubriclevel";
            this.btn_Deleterubriclevel.Size = new System.Drawing.Size(75, 23);
            this.btn_Deleterubriclevel.TabIndex = 8;
            this.btn_Deleterubriclevel.Text = "Delete";
            this.btn_Deleterubriclevel.UseVisualStyleBackColor = true;
            this.btn_Deleterubriclevel.Click += new System.EventHandler(this.btn_Deleterubriclevel_Click);
            // 
            // btn_Updaterubriclevel
            // 
            this.btn_Updaterubriclevel.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_Updaterubriclevel.Location = new System.Drawing.Point(486, 247);
            this.btn_Updaterubriclevel.Name = "btn_Updaterubriclevel";
            this.btn_Updaterubriclevel.Size = new System.Drawing.Size(75, 23);
            this.btn_Updaterubriclevel.TabIndex = 9;
            this.btn_Updaterubriclevel.Text = "Update";
            this.btn_Updaterubriclevel.UseVisualStyleBackColor = true;
            this.btn_Updaterubriclevel.Click += new System.EventHandler(this.btn_Updaterubriclevel_Click);
            // 
            // dataGridViewRubricLevel
            // 
            this.dataGridViewRubricLevel.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewRubricLevel.Location = new System.Drawing.Point(53, 285);
            this.dataGridViewRubricLevel.Name = "dataGridViewRubricLevel";
            this.dataGridViewRubricLevel.Size = new System.Drawing.Size(637, 150);
            this.dataGridViewRubricLevel.TabIndex = 10;
            this.dataGridViewRubricLevel.RowHeaderMouseClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.dataGridViewRubricLevel_RowHeaderMouseClick);
            // 
            // button1
            // 
            this.button1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.Location = new System.Drawing.Point(22, 20);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(82, 33);
            this.button1.TabIndex = 11;
            this.button1.Text = "Home";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // Rubric_Level
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.dataGridViewRubricLevel);
            this.Controls.Add(this.btn_Updaterubriclevel);
            this.Controls.Add(this.btn_Deleterubriclevel);
            this.Controls.Add(this.btn_Addrubriclevel);
            this.Controls.Add(this.richTextBoxleveldetails);
            this.Controls.Add(this.comboBoxmeasurementlevel);
            this.Controls.Add(this.comboBoxrubricid);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "Rubric_Level";
            this.Text = "Rubric_Level";
            this.Load += new System.EventHandler(this.Rubric_Level_Load);
            this.BindingContextChanged += new System.EventHandler(this.Rubric_Level_BindingContextChanged);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewRubricLevel)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox comboBoxrubricid;
        private System.Windows.Forms.ComboBox comboBoxmeasurementlevel;
        private System.Windows.Forms.RichTextBox richTextBoxleveldetails;
        private System.Windows.Forms.Button btn_Addrubriclevel;
        private System.Windows.Forms.Button btn_Deleterubriclevel;
        private System.Windows.Forms.Button btn_Updaterubriclevel;
        private System.Windows.Forms.DataGridView dataGridViewRubricLevel;
        private System.Windows.Forms.Button button1;
    }
}
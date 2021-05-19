
namespace GSS
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.Grid_table = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.btn_filtrar = new System.Windows.Forms.Button();
            this.txt_fecIni = new System.Windows.Forms.DateTimePicker();
            this.txt_fecFin = new System.Windows.Forms.DateTimePicker();
            this.process1 = new System.Diagnostics.Process();
            this.btn_limpiar = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.Grid_table)).BeginInit();
            this.SuspendLayout();
            // 
            // Grid_table
            // 
            this.Grid_table.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.Grid_table.Location = new System.Drawing.Point(12, 103);
            this.Grid_table.Name = "Grid_table";
            this.Grid_table.RowTemplate.Height = 25;
            this.Grid_table.Size = new System.Drawing.Size(742, 286);
            this.Grid_table.TabIndex = 0;
            this.Grid_table.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label1.Location = new System.Drawing.Point(15, 71);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(61, 21);
            this.label1.TabIndex = 1;
            this.label1.Text = "DATOS";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(15, 27);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(37, 15);
            this.label2.TabIndex = 2;
            this.label2.Text = "Filtro:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(171, 24);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(12, 15);
            this.label3.TabIndex = 5;
            this.label3.Text = "-";
            // 
            // btn_filtrar
            // 
            this.btn_filtrar.Location = new System.Drawing.Point(317, 22);
            this.btn_filtrar.Name = "btn_filtrar";
            this.btn_filtrar.Size = new System.Drawing.Size(75, 23);
            this.btn_filtrar.TabIndex = 8;
            this.btn_filtrar.Text = "Filtrar";
            this.btn_filtrar.UseVisualStyleBackColor = true;
            this.btn_filtrar.Click += new System.EventHandler(this.btn_filtrar_Click);
            // 
            // txt_fecIni
            // 
            this.txt_fecIni.CustomFormat = "yyyy-MM-dd";
            this.txt_fecIni.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.txt_fecIni.Location = new System.Drawing.Point(58, 20);
            this.txt_fecIni.Name = "txt_fecIni";
            this.txt_fecIni.Size = new System.Drawing.Size(105, 23);
            this.txt_fecIni.TabIndex = 9;
            this.txt_fecIni.Value = new System.DateTime(2021, 5, 18, 0, 0, 0, 0);
            // 
            // txt_fecFin
            // 
            this.txt_fecFin.CustomFormat = "yyyy-MM-dd";
            this.txt_fecFin.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.txt_fecFin.Location = new System.Drawing.Point(189, 21);
            this.txt_fecFin.Name = "txt_fecFin";
            this.txt_fecFin.Size = new System.Drawing.Size(105, 23);
            this.txt_fecFin.TabIndex = 10;
            this.txt_fecFin.Value = new System.DateTime(2021, 5, 18, 0, 0, 0, 0);
            // 
            // process1
            // 
            this.process1.StartInfo.Domain = "";
            this.process1.StartInfo.LoadUserProfile = false;
            this.process1.StartInfo.Password = null;
            this.process1.StartInfo.StandardErrorEncoding = null;
            this.process1.StartInfo.StandardInputEncoding = null;
            this.process1.StartInfo.StandardOutputEncoding = null;
            this.process1.StartInfo.UserName = "";
            this.process1.SynchronizingObject = this;
            // 
            // btn_limpiar
            // 
            this.btn_limpiar.Location = new System.Drawing.Point(411, 22);
            this.btn_limpiar.Name = "btn_limpiar";
            this.btn_limpiar.Size = new System.Drawing.Size(87, 23);
            this.btn_limpiar.TabIndex = 11;
            this.btn_limpiar.Text = "Limpiar";
            this.btn_limpiar.UseVisualStyleBackColor = true;
            this.btn_limpiar.Click += new System.EventHandler(this.btn_limpiar_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(768, 401);
            this.Controls.Add(this.btn_limpiar);
            this.Controls.Add(this.txt_fecFin);
            this.Controls.Add(this.txt_fecIni);
            this.Controls.Add(this.btn_filtrar);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.Grid_table);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.Grid_table)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView Grid_table;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button btn_filtrar;
        private System.Windows.Forms.DateTimePicker txt_fecIni;
        private System.Windows.Forms.DateTimePicker txt_fecFin;
        private System.Diagnostics.Process process1;
        private System.Windows.Forms.Button btn_limpiar;
    }
}


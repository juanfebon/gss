using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using GSS.Datos;


namespace GSS
{
    public partial class Form1 : Form
    {
        consulta rows = new consulta();

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            mostrar_tabla();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void mostrar_tabla()
        {
            Grid_table.DataSource = rows.VistaTabla();
        }

        public void filter()
        {
            string fec_ini = txt_fecIni.Text;
            string fec_fin = txt_fecFin.Text;

            Grid_table.DataSource = rows.filtro(fec_ini, fec_fin);
        }

        private void btn_filtrar_Click(object sender, EventArgs e)
        {
            filter();
        }

        private void btn_limpiar_Click(object sender, EventArgs e)
        {
            mostrar_tabla();
        }
    }
}

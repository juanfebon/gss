using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace GSS.Datos
{
    class conexionDB
    {
        MySqlConnection conexion;
        string cadena;

        public MySqlConnection Conectar()

        {
            cadena = "server=localhost; Database=gss; uid=root; pwd=admin";
            conexion = new MySqlConnection(cadena);
            return conexion;

        }

        protected void AbrirConexion()
        {
            conexion.Open();
        }
        protected void CerrarCOnexion()
        {
            conexion.Close();
        }
    }
}

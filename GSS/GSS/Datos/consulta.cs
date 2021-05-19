using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GSS.Datos
{
    class consulta:conexionDB
    {
        string query;
        public DataTable VistaTabla()
        {
            query = "SELECT cedula, nombre, fecha,tiempo,saldo,placa,marca FROM cliente INNER JOIN alquiler ON cod_cliente = cliente INNER JOIN carro ON carro = cod_carro";
            MySqlDataAdapter adp = new MySqlDataAdapter(query, Conectar());
            DataTable Consulta = new DataTable();
            adp.Fill(Consulta);
            return Consulta;
        }

        public DataTable filtro(string f1, string f2)
        {
            query = "SELECT cedula, nombre, fecha,tiempo,saldo,placa,marca FROM cliente INNER JOIN alquiler ON cod_cliente = cliente INNER JOIN carro ON carro = cod_carro WHERE fecha BETWEEN '" + f1 + "' AND '" + f2 + "'";
            MySqlDataAdapter a = new MySqlDataAdapter(query, Conectar());
            DataTable Consulta = new DataTable();
            a.Fill(Consulta);
            return Consulta;
        }
    }
}

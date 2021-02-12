using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Projeto.Entidades;

namespace Projeto.DAL
{
    public class SocioRepositorio2 : Conexao
    {
        public List<Socio> FindAll()
        {
            OpenConnection();

            string query = "Select * From Socio";

            com = new SqlCommand(query, con);

            dr = com.ExecuteReader();

            List<Socio> lista = new List<Socio>();

            while (dr.Read())
            {
                Socio s = new Socio();

                s.Matricula = Convert.ToInt32(dr["Matricula"]);
                s.Nome = Convert.ToString(dr["Nome"]);
                s.Telefone = Convert.ToString(dr["Telefone"]);
                s.Celular = Convert.ToString(dr["Celular"]);
                s.Cpf = Convert.ToString(dr["Cpf"]);
                s.Email = Convert.ToString(dr["Email"]);
                s.Endereco = Convert.ToString(dr["Endereco"]);

                lista.Add(s);
            }

            CloseConnection();

            return lista;
        }
    }
}

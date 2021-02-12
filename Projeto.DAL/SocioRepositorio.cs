using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Projeto.Entidades;

namespace Projeto.DAL
{
    public class SocioRepositorio : Conexao
    {
        public List<Socio> FindAll()
        /// Lista os Lanches
        {
            OpenConnection();
            /// Abre a Conexao
            string query = "SELECT * FROM Socio";
            /// Conversa com a Base
            com = new SqlCommand(query, con);
            /// Instancia do SqlCommand
            dr = com.ExecuteReader();
            /// Leitura dos Dados
            List<Socio> lista = new List<Socio>();
            /// Instancia do Lista da Entidade Lanche

            while (dr.Read())
            {
                /// Leitura dos Dados
                Socio S = new Socio();
                /// Instancia da Entidade Lanche

                S.Matricula = Convert.ToInt32(dr["Matricula"]);
                S.Nome = Convert.ToString(dr["Nome"]);
                S.Telefone = Convert.ToString(dr["Telefone"]);
                S.Celular = Convert.ToString(dr["Celular"]);
                S.Cpf = Convert.ToString(dr["Cpf"]);
                S.Email = Convert.ToString(dr["Email"]);
                S.Endereco = Convert.ToString(dr["Endereco"]);

                lista.Add(S);

            }

            CloseConnection();
            /// Fecha a Conexao
            return lista;
            /// retorna Para a Lista
        }
    }
}

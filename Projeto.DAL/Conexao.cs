using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;

namespace Projeto.DAL
{
    public class Conexao
    {

        protected SqlConnection con;
        /// <summary>
        ///  Atributo Conexao
        /// </summary>
        protected SqlCommand com;
        /// <summary>
        /// Atributo Conversa com a Base
        /// </summary>
        protected SqlDataReader dr;
        /// <summary>
        /// Atributo Leitura dos Dados
        /// </summary>
        protected SqlTransaction tr;
        /// <summary>
        /// Atributo de Transacao
        /// </summary>
        protected void OpenConnection()
        /// Metodo de Abrir Conexao
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["WithLove"].ConnectionString);
            con.Open();
            /// Abrindo a Conexao
        }

        protected void CloseConnection()
        {
            /// Metodo de Fechar a Conexao
            con.Close();
            /// Fechando a Conexao
        }

    }
}

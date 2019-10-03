using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Projeto.Entidades;

namespace Projeto.DAL
{
    public class ReservaRepositorio : Conexao 
    {

        public void Insert(Lanche L)
        /// Metodo de Cadastrar Lanche
        {
            OpenConnection();
            /// Abre a Conexao
            string query = "INSERT INTO LANCHE(NOME, PRECO, STATUS)VALUES(@NOME, @PRECO, 'ABERTO')";
            /// Conversa com a Base
            com = new SqlCommand(query, con);
            /// Instancia do SqlCommand
            com.Parameters.AddWithValue("@NOME", L.Nome);
            /// Campo Nome do Lanche
            com.Parameters.AddWithValue("@PRECO", L.Preco);
            /// Campo Preco do Lancje
            com.ExecuteNonQuery();
            /// Roda a Query
            CloseConnection();
            /// Fecha a Conexao
        }

        public void Update(Lanche L)
        /// Metodo de Editar os Dados
        {
            OpenConnection();
            /// Abre a Conexao
            string query = "UPDATE LANCHE SET NOME = @NOME, PRECO = @PRECO WHERE CODIGO = @CODIGO";
            /// Conversa com a Base
            com = new SqlCommand(query, con);
            /// Instancoa do SqlCommand
            com.Parameters.AddWithValue("@CODIGO", L.CodigoLanche);
            /// Campo Codigo do Lanche
            com.Parameters.AddWithValue("@NOME", L.Nome);
            /// Campo Nome do Lanche
            com.Parameters.AddWithValue("@PRECO", L.Preco);
            /// Campo Preco do Lanche
            com.ExecuteNonQuery();
            /// Roda a Query
            CloseConnection();
            /// Fecha a Conexao
        }

        public void Delete(Lanche l)
        /// Metodo de Desligar o Lanche da Aplicacao
        {
            OpenConnection();
            /// Abre a Conexao
            string query = "UPDATE LANCHE SET STATUS = 'FECHADO' WHERE CODIGO = @CODIGO";
            /// Conversa com a Base  
            com = new SqlCommand(query, con);
            /// Instancia do SqlCommand
            com.Parameters.AddWithValue("@CODIGO", l.CodigoLanche);
            /// Parametro Codigo do Lanche
            com.ExecuteNonQuery();
            /// Roda a Query
            CloseConnection();
            /// Fecha a Conexao
        }

        public List<Lanche> FindAll()
        /// Lista os Lanches
        {
            OpenConnection();
            /// Abre a Conexao
            string query = "SELECT * FROM LANCHE WHERE STATUS = 'ABERTO'";
            /// Conversa com a Base
            com = new SqlCommand(query, con);
            /// Instancia do SqlCommand
            dr = com.ExecuteReader();
            /// Leitura dos Dados
            List<Lanche> lista = new List<Lanche>();
            /// Instancia do Lista da Entidade Lanche

            while (dr.Read())
            {
                /// Leitura dos Dados
                Lanche L = new Lanche();
                /// Instancia da Entidade Lanche

                L.Nome = Convert.ToString(dr["NOME"]);
                /// Campo Nome
                L.Preco = Convert.ToString(dr["PRECO"]);
                /// Campo Preco

                lista.Add(L);

            }

            CloseConnection();
            /// Fecha a Conexao
            return lista;
            /// retorna Para a Lista
        }

        public Lanche FindById(int codigo)
        /// Metodo de Consulta Filtrada
        {
            OpenConnection();
            /// Abre a Conexao
            string query = "SELECT * FROM LANCHE WHERE CODIGO = @CODIGO";
            /// Conversa com a Base
            com = new SqlCommand(query, con);
            /// Instancia do sqlCommand
            com.Parameters.AddWithValue("@CODIGO", codigo);
            /// Campo Codigo
            dr = com.ExecuteReader();
            /// Leitura dos Dados
            Lanche l = null;
            /// Instancia da Entidade
            if (dr.Read())
            {
                /// Leitura dos dados
                l = new Lanche();

                l.Nome = Convert.ToString(dr["NOME"]);
                /// Campo Nome
                l.Preco = Convert.ToString(dr["PRECO"]);
                /// Campo Preco
            }

            CloseConnection();
            /// Fecha a Conexao
            return l;
            /// Retorna Para a Entidade
        }

    }
}

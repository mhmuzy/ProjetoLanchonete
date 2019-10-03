using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Projeto.Entidades;

namespace Projeto.DAL
{
    public class DeliveryRepositorio : Conexao
    {

        public void Insert(Delivery D)
        {
            /// Metodo de Fazer o Delivery
            OpenConnection();
            /// Abre a Conexao
            string query = "INSERT INTO DELIVERY (NOME, E_MAIL, TELEFONE, DESCRICAO, STATUS) VALUES (@NOME, @E_MAIL, @TELEFONE, @DESCRICAO, 'ABERTO')";
            /// Conversa com a Base
            com = new SqlCommand(query, con);
            /// Instancia do SqlCommand
            com.Parameters.AddWithValue("@NOME", D.Nome);
            /// Parametro Nome do(a) Usuario(a) que vai fazer o Delivery
            com.Parameters.AddWithValue("@E_MAIL", D.Email);
            /// Parametro E - mail do(a) Usuario(a) que vai fazer o Delivery
            com.Parameters.AddWithValue("@TELEFONE", D.Telefone);
            /// Parametro Telefone do(a) Usuario(a) que vai fazer o Delivery
            com.Parameters.AddWithValue("@DESCRICAO", D.Descricao);
            /// Parametro Descricao do Delivery
            com.ExecuteNonQuery();
            /// Roda a Query
            CloseConnection();
            /// Fecha a Conexao
        }

        public void Update(Delivery D)
        /// Metodo de Edicao dos dados do Delivery
        {
            OpenConnection();
            /// Abre a Conexao
            string query = "UPDATE DELIVERY NOME = @NOME, E_MAIL = @E_MAIL, TELEFONE = @TELEFONE, DESCRICAO = @DESCRICAO WHERE CODIGO = @CODIGO";
            /// Conversa com a Base
            com = new SqlCommand(query, con);
            /// Instancia do SqlCommand
            com.Parameters.AddWithValue("@NOME", D.Nome);
            /// Parametro nome do(a) Usuario(a) que fez o Delivery
            com.Parameters.AddWithValue("@E_MAIL", D.Email);
            /// Parametro E - mail do(a) Usuario(a) que fez o Delivery
            com.Parameters.AddWithValue("@TELEFONE", D.Telefone);
            /// Parametro Telefone do(a) Usuario(a) que fez o Delivery
            com.Parameters.AddWithValue("@DESCRICAO", D.Descricao);
            /// Parametro Descriicao do Delivery
            com.Parameters.AddWithValue("@CODIGO", D.Codigo);
            /// Parametro Codigo do Delivery
            com.ExecuteNonQuery();
            /// Roda a Querie
            CloseConnection();
            /// Fecha a Conexao
        }

        public void Delete(Delivery d)
        /// Metodo de Desligamento do Delivery da Aplicacao
        {
            OpenConnection();
            /// Abre a Conexao
            string query = "UPDATE DELIVERY SET STATUS = 'FECHADO' WHERE CODIGO = @CODIGO";
            /// Conversa com a Base
            com = new SqlCommand(query, con);
            /// Instancia do SqlCommand
            com.Parameters.AddWithValue("@CODIGO", d.Codigo);
            /// Parametro Codigo do Delivery
            com.ExecuteNonQuery();
            /// Roda a Querie
            CloseConnection();
            /// Fecha a Conexao
        }

        public List<Delivery> FindAll()
        /// Metodo de LIstagem
        {
            OpenConnection();
            ///Abre a Conexao
            string query = "SELECT * FROM DELIVERY WHERE STATUS = 'ABERTO'";
            /// Conversa com a Base
            com = new SqlCommand(query, con);
            /// Instancoa do SqlCommand
            dr = com.ExecuteReader();
            /// Efetua a Leitura dos dados
            List<Delivery> lista = new List<Delivery>();
            /// Instancia do List com a Entidade Delivery
            while (dr.Read())
            {
                /// Leitura sendo efetuada
                Delivery D = new Delivery();
                /// Instancia da Entidade Delivery
                D.Nome = Convert.ToString(dr["NOME"]);
                /// Campo Nome do(a) Usuario(a) que fez o Delivery
                D.Descricao = Convert.ToString(dr["DESCRICAO"]);
                /// Campo Descricao do Delivery
                D.Telefone = Convert.ToString(dr["TELEFONE"]);
                /// Campo Telefone do(a) Usuario(a) que fez o Delivery
                D.Email = Convert.ToString(dr["E_MAIL"]);
                /// Campo E - mail do(a) Usuario(a) que Fez o Delivery

                lista.Add(D);
            }

            CloseConnection();
            /// Fecha a Conexao com a Base
            return lista;
            /// Retorna Para a Lista
        }
        public Delivery FindById(int codigo)
        /// Metodo Consulta Filtrada
        {
            OpenConnection();
            /// Abre a Conexao
            string query = "SELECT * FROM DELIVERY WHERE CODIGO = @CODIGO";
            /// Conversa com a Base
            com = new SqlCommand(query, con);
            /// Instancia do SqlCommand
            com.Parameters.AddWithValue("@CODIGO", codigo);
            /// Parametro Codigo do Delivery
            dr = com.ExecuteReader();
            /// Eftua a Leitura dos dados
            Delivery d = null;
            /// Instancia da Entidade Delivery
            if (dr.Read())
            {
                /// Leitura dos dados
                d = new Delivery();
                /// Delivery
                d.Nome = Convert.ToString(dr["NOME"]);
                /// Campo Nome do(a) Usuario(a) que fez o Delivery
                d.Telefone = Convert.ToString(dr["TELEFONE"]);
                /// Campo Telefone do(a) Usuario(a) que fez o Delivery
                d.Email = Convert.ToString(dr["E_MAIL"]);
                /// Campo E - mail do(a) Usuario(a) que fez o Delivery
                d.Descricao = Convert.ToString(dr["DESCRICAO"]);
                /// Campo Descricao do Delivery
            }

            CloseConnection();
            /// Fecha a Conexao
            return d;
            /// Retorna a Entidade
            }
        }
    }

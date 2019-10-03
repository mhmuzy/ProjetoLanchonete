using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Projeto.Entidades;

namespace Projeto.DAL
{
    public class UsuarioRepositorio : Conexao
    {

        public void Insert(Usuario U)
        /// Metodo de Cadastro
        {
            OpenConnection();
            /// Abre a Conexao
            string query = "INSERT INTO USUARIO (NOME, SENHA, CODIGO_USUARIO, STATUS) VALUES (@NOME, @SENHA, @CODIGO_USUARIO, 'ABERTO')";
            /// Conversa com a Base
            com = new SqlCommand(query, con);
            /// Instancia com o SqlCommand
            com.Parameters.AddWithValue("@NOME", U.Nome);
            /// Campo Nome
            com.Parameters.AddWithValue("@SENHA", U.Senha);
            /// Campo Senha
            com.Parameters.AddWithValue("@CODIGO_USUARIO", U.CodigoUsuario);
            /// Campo Codigo do(a) Usuario(a)
            com.ExecuteNonQuery();
            /// Roda a Querie
            CloseConnection();
            /// Fecha a Conexao
        }

        public void Update(Usuario U)
        /// Edicao dos Dados
        {
            OpenConnection();
            /// Abre a Conexao
            string query = "UPDATE USUARIO SET NOME = @NOME, SENHA = @SENHA WHERE CODIGO = @CODIGO";
            /// Conversa com a Base  
            com = new SqlCommand(query, con);
            /// Inatancia do SqlCommand
            com.Parameters.AddWithValue("@NOME", U.Nome);
            /// Campo Nome
            com.Parameters.AddWithValue("@SENHA", U.Senha);
            /// Campo Senha
            com.Parameters.AddWithValue("@CODIGO", U.Codigo);
            /// Campo Codigo
            CloseConnection();
            /// Fecha a Conexao
        }

        public void Delete(Usuario u)
        /// Metodo de Desligamento do(a) Usuario(a) da Aplicacao
        {
            OpenConnection();
            /// Abre a Conexao
            string query = "UPDATE USUARIO SET STATUS = 'FECHADO' WHERE CODIGO = @CODIGO";
            /// Conversa com a Base
            com = new SqlCommand(query, con);
            /// Instancia do SqlCommand
            com.Parameters.AddWithValue("@CODIGO", u.Codigo);
            /// Campo Codigo do(a) Usuario(a)
            com.ExecuteNonQuery();
            /// Roda a Query
            CloseConnection();
            /// Fecha a Conexao
        }

        public List<Usuario> FindAll()
        /// Listagem dos Usuarios
        {
            OpenConnection();
            /// Abre a Conexao
            string query = "SELECT * FROM USUARIO WHERE STATUS = 'ABERTO'";
            /// Conversa com a Base
            com = new SqlCommand(query, con);
            /// Instancia do SqlCommand
            dr = com.ExecuteReader();
            /// Leitura dos dados
            List<Usuario> lista = new List<Usuario>();
            /// Instancia do List com a Entidade Usuario
            while (dr.Read())
            {
                /// Leitura dos Dados
                Usuario U = new Usuario();
                /// Instancia da Entidade Usuario
                U.Codigo = Convert.ToInt32(dr["CODIGO"]);
                /// Campo Codigo
                U.Nome = Convert.ToString(dr["NOME"]);
                /// Campo Login
                U.Senha = Convert.ToString(dr["SENHA"]);
                /// Campo Senha
                lista.Add(U);
            }

            CloseConnection();
            /// Fecha a Conexao
            return lista;
            /// Retorna Para a Lista
        }

        public Usuario FindById(int Codigo)
        /// Metodo de Consulta Filtrada
        {
            OpenConnection();
            /// Abre a Conexao
            string query = "SELECT * FROM USUARIO WHERE CODIGO = @CODIGO";
            /// Conversa com a Base
            com = new SqlCommand(query, con);
            /// Instancia do SqlCommand
            com.Parameters.AddWithValue("@CODIGO", Codigo);
            /// Campo Codigo
            dr = com.ExecuteReader();
            /// Leitura dos Dados
            Usuario u = null;
            /// Instancia da Entidade
            if (dr.Read())
            {
                /// Leitura dos Dados
                u = new Usuario();

                u.Codigo = Convert.ToInt32(dr["CODIGO"]);
                /// Campo Codigo
                u.Nome = Convert.ToString(dr["NOME"]);
                /// Campo Login
                u.Senha = Convert.ToString(dr["SENHA"]);
                /// Campo Senha
            }

            CloseConnection();
            /// Fecha a Conexao
            return u;
            /// Retorna Para a Entidade
        }
        public void TrocarSenha(Usuario U)
        /// Metodo de Troca de Senha
        {
            OpenConnection();
            /// Abre a Conexao
            string query = "UPDATE USUARIO SET SENHA = @SENHA WHERE CODIGO = @CODIGO";
            /// Conversa com a Base
            com = new SqlCommand(query, con);
            /// Instancia do SqlCommand
            com.Parameters.AddWithValue("@CODIGO", U.Codigo);
            /// Campo Codigo
            com.Parameters.AddWithValue("@SENHA", U.Senha);
            /// Campo Senha
            com.ExecuteNonQuery();
            /// Roda a Query
            CloseConnection();
            /// Fecha a Conexao
        }

    }
}

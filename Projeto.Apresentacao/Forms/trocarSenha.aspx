<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trocarSenha.aspx.cs" Inherits="Projeto.Apresentacao.Forms.trocarSenha" %>

<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lanchonete</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../Content/bootstrapMhmuzy.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/modernizr-2.6.2.js"></script>
</head>
<body class="container">
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            <table border align="right" bgcolor="black">
                <tr bgcolor="white">
                    <td><font face="arial" size="3"><%= DateTime.Now.DayOfWeek %> - <%= DateTime.Now.Day %> / <%=DateTime.Now.Month %> / <%= DateTime.Now.Year %> <%=DateTime.Now.Hour %> : <%=DateTime.Now.Minute %> Hrs</font></td>
                </tr>
            </table>
            </div>
                        <% /// Menu da Pafgina %>
            <br />
            
                    <% /// Pula 1 linha %>

            

        </div>

    </div>
    <h2><font face="arial" size="3" color="black">Lista de Usuario(s) Parte da Alteracao de Senha:</font></h2>    
            <% /// Titulo da Pagina %>
    <form id="form1" action="update.aspx" runat="server">
        <div>
                <% /// Inicializacao do Formulario %>
            <%@Import Namespace="System.Data"  %>
                <%@Import Namespace="System.Data.SqlClient"  %>
                <%@Import Namespace="System.Configuration"  %>    
                <%@Import Namespace="Projeto.Entidades"  %>    
                    <% /// Assembly Para Entidades e Conexao com a Base %>
            <br />
                <% /// Pula 1 Linha %>
    <center><a href="../Usuario/Administrator">Voltar</a></center>
                <% /// Link de voltar %>
    <br />
                <% /// Pula mais 1 linha %>
    <hr />
                <% /// Divisoria da Pagina %>
            <table class="table table-bordered table-hover">
        <% /// Inicializacao da Tabela de Resultado %>
        <thead align="center">
            <tr bgcolor="gray" align="center">
                    <% /// Titulo da Pagina %>
                <th><font face="arial" size="3" color="black">Codigo</font></th>
                    <% /// Titulo Codigo do(a) Usuario(a) %>
                <th><font face="arial" size="3" color="black">Login</font></th>
                    <% /// Titulo Login do(a) Usuario(a) %>
                <th><font face="arial" size="3" color="black">Senha</font></th>
                    <% /// Titulo Senha do(a) Usuario(a) %>
                </tr>
            </thead>
            <%        
                SqlConnection  con = new SqlConnection(ConfigurationManager.ConnectionStrings["COTI"].ConnectionString);
                con.Open();
                        /// Abre a Conexao com a Base
                int codigo = Convert.ToInt32(Request.QueryString["CODIGO"]);
                        /// Chave do(a) Usuario(a)
                SqlCommand com = new SqlCommand("SELECT * FROM USUARIO WHERE CODIGO = " + codigo, con);
                        /// Conversa com a Base
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    /// Leitura dos dados
                    Usuario U = new Usuario();
                        /// Instancia do Objeto Usuario(a)
                    U.Codigo = Convert.ToInt32(dr["CODIGO"]);
                        /// Atributo Codigo do(a) Usuario(a)
                    U.Nome = Convert.ToString(dr["NOME"]);
                        /// Atributo Login do(a) Usuario(a)
                    U.Senha = Convert.ToString(dr["SENHA"]);
                        /// Atributo Senha do(a) Usuario(a)
                   %>
                <tbody>    
               <tr>
                    <% /// Campo que puxa a Informacao do(a) Usuaraio(a) %>
                <td><input type="text" name="Codigo" value="<%: U.Codigo %>" /></td>
                    <% /// Informacao Codigo do(a) Usuario(a) %>
                <td><input type="text" name="Nome" value="<%: U.Nome %>" /></td>
                    <% /// Informacao de Login do(a) Usuario(a) %>
                <td><input type="password" name="Senha" value="<%: U.Senha%>" /></td>
                    <% /// Informacao da senha do(a) Uusario(a) encriptografada %>
                   </tr>
                    </tbody>
                        <tfoot>
            <tr align="center">
                <td colspan="3">
                    <input type="submit" value="Efetuar a Troca de Senha" class="btn btn-primary btn-sm" />
                </td>
            </tr>
        </tfoot>
                    <% /// Botao Para Efetuar a Troca de senha %>                    
            <%
                }
         %>
            
                                                
                                           <%
                                           con.Close();
                                               /// Fecha a Conexao com a Base
     %>
            
            </div>
        </table>
            <% /// Finalizacao com a Tabela de Resultado %>
    </form>

</body>
</html>
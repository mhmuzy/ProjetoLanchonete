<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListUsuarioTrocarSenha.aspx.cs" Inherits="Projeto.Apresentacao.Forms.ListUsuarioTrocarSenha" %>

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
                <% /// Menu da Pagina %>
            <br />
            
            
                <% /// Pula 1 linha %>
            

        </div>

    </div>
    <h2><font face="arial" size="3" color="black">Lista de Usuario(s) Para a Alteracao de Senha:</font></h2>    <form id="form1" runat="server">
                <% /// Titulo da Pagina %>
        <div>
 
            <%@Import Namespace="System.Data"  %>
                <%@Import Namespace="System.Data.SqlClient"  %>
                <%@Import Namespace="System.Configuration"  %>    
                <%@Import Namespace="Projeto.Entidades"  %> 
                    <% /// Assembly Para entidades e Conexao com a Base %>
            <br />
                <% /// Pula mais 1 Linha %>
    <center><a href="../Usuario/Administrator">Voltar</a></center>
                        <% /// Link de voltar %>
    <br />
                <% /// Pula mais 1 linha %>
    <hr />
                <% /// Divisoria da Pagina %>
            <%        
                SqlConnection  con = new SqlConnection(ConfigurationManager.ConnectionStrings["COTI"].ConnectionString);
                con.Open();
                    /// Abre a Conexao com a Base de Dados
                SqlCommand com = new SqlCommand("SELECT * FROM USUARIO WHERE STATUS = 'ABERTO'", con);
                    /// Conversa com a Base
                SqlDataReader dr = com.ExecuteReader(); 
                    /// Leitura dos dados
                %>
                <table class="table table-bordered table-hover">
        <% /// Inicializacao da Tabela de Resultado %>
        <thead align="center">
            <tr bgcolor="gray" align="center">
                    <% /// Titulo da Pagina %>
                <th><font face="arial" size="3" color="black">Login</font></th>
                <% /// Titulo Login do(a) Usuario(a) %>
                <th><font face="arial" size="3" color="black">Senha</font></th>
                    <% /// Titulo Senha do(a) Usuario(a) %>
                <th><font face="arial" size="3" color="black">Operacao</font></th>
                    <% /// Titulo Operacao de Troca de senha %>
            </tr>
        </thead><%
                while (dr.Read())
                {
                        /// Leitura dos dados
                    Usuario U = new Usuario();
                        /// Instancia Para o Objeto Usuario
                    U.Codigo = Convert.ToInt32(dr["CODIGO"]);
                            /// Atributo Codigo do(a) Usuario(a)
                    U.Nome = Convert.ToString(dr["NOME"]);
                            /// Atributo Login do(a) Usuario(a)
                    U.Senha = Convert.ToString(dr["SENHA"]);
                            /// Atributo Senha do(a) Usuario(a)
                   %>
            
        <tbody>
               <tr>
                    <% /// Inicializacao da Informacao do(a) Usuario(a) %>
                <td><font face="arial" size="3" color="black"><%: U.Nome %></font></td>
                    <% /// Informacao Login do(a) Usuario(a) %>
                 <td><font face="arial" size="3" color="black">****</font></td>
                    <% /// Informacao Senha do(a) Usuario(a) %>
                 <td><a href="trocarSenha.aspx?Codigo=<%: U.Codigo %>" class="btn btn-primary btn-sm"><font face="arial" size="3" color="black">Alterar Senha</font></a></td>
                    <% /// Botao de Trocar de senha do(a) Usuario(a) %>     
               </tr>
                   </tbody>
            <%
                }
         %>
                                                
                                           <%
                                           con.Close();
                                               /// Fecha a Conexao com a Base
     %>
                    </table>
                        <% /// Finaliza a Tabela de resultado %>
        </div>
    </form>
</body>
</html>
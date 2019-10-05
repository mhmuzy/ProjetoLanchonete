<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListUsuarioExcluir.aspx.cs" Inherits="Projeto.Apresentacao.Forms.ListUsuarioExcluir" %>

<!DOCTYPE html>

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
            
            
                    <% /// Pula mais 1 linha %>
            

        </div>

    </div>
    <h2><font face="arial" size="3" color="black">Lista de Usuario(s) Para Efetuar a Exclusao:</font></h2>    <form id="form1" runat="server">
                <% /// Titulo da Pagina %>
        <div>
 
            <%@Import Namespace="System.Data"  %>
                <%@Import Namespace="System.Data.SqlClient"  %>
                <%@Import Namespace="System.Configuration"  %>    
                <%@Import Namespace="Projeto.Entidades"  %>    
                        <% /// Assemblies Entidades e Conexao com a Base %>
            <br />
                <% /// Pula 1 linha %>
    <center><a href="../Usuario/Administrator">Voltar</a></center>
                    <% /// Link de voltar %>
    <br />
                <% /// Pula mais 1 linha %>
    <hr />
            <% /// Divisoria da Pagina %>
            <%        
                SqlConnection  con = new SqlConnection(ConfigurationManager.ConnectionStrings["COTI"].ConnectionString);
                con.Open();
                        /// Abre a conexao com a base
                SqlCommand com = new SqlCommand("SELECT * FROM USUARIO WHERE STATUS = 'ABERTO'", con);
                    /// Faz a Conversa com o(a) Usuario(a)
                SqlDataReader dr = com.ExecuteReader(); 
                    /// Faz a leitura dos dados
                %>
                <table class="table table-bordered table-hover">
        <% /// Inicializacao da Tabela de Resultado %>
        <thead align="center">
            <tr bgcolor="gray" align="center">
                    <% /// Inicializacao do Titulo do(a) Usuario(a) %>
                <th><font face="arial" size="3" color="black">Login</font></th>
                <% /// Informacao Login do(a) Usuario(a) %>
                <th><font face="arial" size="3" color="black">Senha</font></th>
                    <% /// Informacao Senha do(a) Usuario(a) %>
                <th><font face="arial" size="3" color="black">Operacao</font></th>
                    <% /// Infomacao de Exclusao do(a) Usuario(a) %>
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
                   <% /// Informacao do(a) Usuario(a) %>
                <td><font face="arial" size="3" color="black"><%: U.Nome %></font></td>
                    <% /// Informacao Login do(a) Usuario(a) %>
                 <td><font face="arial" size="3" color="black">****</font></td>
                    <% /// Informacao Senha do(a) Usuario(a) %>
                 <td><a href="Excluir.aspx?Codigo=<%: U.Codigo %>" class="btn btn-danger"><font face="arial" size="3" color="black">Excluir</font></a></td>
                    <% /// Botao de Excluir o(a) Usuario(a) %>     
               </tr>
                   </tbody>
            <%
                }
         %>
                                                
                                           <%
                                           con.Close();
                                               /// Fecha a conexao
     %>
                    </table>    
                        <% /// Fecha a Tabela de Resultado %>
            </form>
</body>
</html>
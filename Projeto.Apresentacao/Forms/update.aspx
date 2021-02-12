
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="Projeto.Apresentacao.Forms.update" %>

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
    <h2><font face="arial" size="3" color="black">Resultado da Atualizacao de Senha do(a) Usuario(a)</font></h2>    
                <% /// Titulo da Pagina %>
    <form id="form1" runat="server">
        <div>
            <%@Import Namespace="System.Data"  %>
                <%@Import Namespace="System.Data.SqlClient"  %>
                <%@Import Namespace="System.Configuration"  %>    
                <%@Import Namespace="Projeto.Entidades"  %>    
                        <% /// Assembly Para entidades e Conexao com a Base de Dados %>
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
                /// Abre a Conexao com a Base
                string senha = Convert.ToString(Request.Form["SENHA"]);
                /// Campo Senha
                int codigo = Convert.ToInt32(Request.Form["CODIGO"]);
                /// Campo Codigo
                SqlCommand com = new SqlCommand("UPDATE USUARIO SET SENHA = '" + senha + "' WHERE CODIGO = " + codigo, con);
                    /// Conversa com a base
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    /// Leitura dos dados
                    Usuario U = new Usuario();
                        /// Intancia do Objeto Usuario
                    U.Codigo = Convert.ToInt32(dr["CODIGO"]);
                        /// Atributo Codigo do(a) Usuario(a)
                    U.Nome = Convert.ToString(dr["NOME"]);
                        /// Atributo Login
                    U.Senha = Convert.ToString(dr["SENHA"]);
                        /// Atributo Senha
                   %>
                    <input type="text" name="Codigo" value="<%: U.Codigo %>" />
                        <% /// Informacao Codigo do(a) Usuario(a) %>
                    <input type="text" name="Nome" value="<%: U.Nome %>" />
                        <% /// Informacao Login %>
                    <input type="password" name="Senha" value="<%: U.Senha%>" />
                        <% /// Informacao Senha encriptografada %>
            <%
                }
         %>
                                                <center>Senha do(a) Usuario(a) Alterada Com Sucesso!</center>
                                                    <% /// Resultado do Processo! %>
                                           <%
                                           con.Close();
                                               /// Fecha a Conexao
     %>
        </div>
    </form>
</body>
</html>
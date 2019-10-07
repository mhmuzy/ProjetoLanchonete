<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExcluirDelivery.aspx.cs" Inherits="Projeto.Apresentacao.Forms.ExcluirDelivery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lanchonete</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../Content/bootstrapMhmuzy.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/modernizr-2.6.2.js"></script>
</head>
<body class="container">
    <div>
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
    <h2><font face="arial" size="3" color="black">Lista de Deliverys Para a Exclusao:</font></h2>
    <form id="form1" runat="server">
        <div>
            <%@Import Namespace="System.Data"  %>
                <%@Import Namespace="System.Data.SqlClient"  %>
                <%@Import Namespace="System.Configuration"  %>    
                <%@Import Namespace="Projeto.Entidades"  %>    
                        <% /// Assemblies Para as Entidades e Para a Conexao com a Base %>
            <br />
                <% /// Pula 1 linha %>
    <center><a href="../Usuario/Administrator">Voltar</a></center>
                <% /// Link de voltar %>
    <br />
                <% /// Pula mais 1 linha %>
    <hr />
                <% /// Divisoria da Pagina %>
            <% 
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["COTI"].ConnectionString);
                    con.Open();
                            /// Abre a Conexao com a Base
                    string codigo = Request.QueryString["CODIGO"];
                        /// Variavel que pega a Chave do Delivery
                    
                SqlCommand com = new SqlCommand("UPDATE DELIVERY SET STATUS = 'FECHADO' WHERE CODIGO = " + codigo, con);
                com.ExecuteNonQuery(); 
                    /// Conversa com a base
                %>
                    
                <center>Delivery Excluído com Sucesso!</center>                                
                    <% /// Resultado da atuacao %>                               
            <%
                                           con.Close();
                            /// Fecha a Conexao
     %>
        </div>
    </form>
</body>
</html>
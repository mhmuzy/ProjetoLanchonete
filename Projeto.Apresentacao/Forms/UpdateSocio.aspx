<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateSocio.aspx.cs" Inherits="Projeto.Apresentacao.Forms.UpdateSocio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lanchonete</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../Content/bootstrapMhmuzy.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/modernizr-2.6.2.js"></script></head>
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

    </div>    <form id="form1" runat="server">
        <div>
            <%@Import Namespace="System.Data"  %>
                <%@Import Namespace="System.Data.SqlClient"  %>
                <%@Import Namespace="System.Configuration"  %>    
                <%@Import Namespace="Projeto.Entidades"  %>    
                        <% /// Assembly Para Entidades e Conexao com a Base %>
            <br />
                <% /// Pula mais 1 linha %>
    <center><a href="../Usuario/Administrator">Voltar</a></center>
                <% /// Link de voltar %>
    <br />
                <% /// Pula 1 linha %>
    <hr />
                <% /// Divisoria da Pagina %>
            <%        
                SqlConnection  con = new SqlConnection(ConfigurationManager.ConnectionStrings["WithLove"].ConnectionString);
                con.Open();
                    /// Abre a Conexao com a Base
                Reserva L = new Reserva();
                    /// Instancia do Objeto Lanche
                string CodigoLanche = Request.QueryString["Matricula"];
                    /// Atributo Codigo do Lanche
                /// string senha = Convert.ToString(Request.QueryString["SENHA"]);
                
                SqlCommand com = new SqlCommand("DELETE FROM SOCIO WHERE MATRICULA = " + CodigoLanche, con);
                com.ExecuteNonQuery();
                    /// Conversa com a Base
                %>                    <br />
                                    <center><a href="../Usuario/Administrator">Voltar</a></center>
                                        <br />
                                                <center>Sócio Excluído com Sucesso!</center>
                                                        <% /// Resultado da Pagina %>
                                           <%
                                           con.Close();
                                               /// Fecha a Conexao
     %>
        </div>
    </form>
</body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="res_contato.aspx.cs" Inherits="Projeto.Apresentacao.Forms.res_contato" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lanchonete</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/modernizr-2.6.2.js"></script>
</head>
<body>
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="../Home/Index" class="navbar-brand">Home</a> 
                <a href="../Home/Localizacao" class="navbar-brand">Localizacao</a> 
                <a href="../Lanche/Consulta" class="navbar-brand">Lanche</a>
                <a href="../Home/Delivery" class="navbar-brand">Delivery</a>
                <a href="../Home/Reservas" class="navbar-brand">Reservas</a>
                <a href="../Home/Contato" class="navbar-brand">Contato</a>
                <a href="Portal.aspx" class="navbar-brand">Area Restrita</a>
            </div>
            
            <br />
            <table border align="right" bgcolor="black">
                <tr bgcolor="white">
                    <td><font face="arial" size="3"><%= DateTime.Now.DayOfWeek %> - <%= @DateTime.Now.Day %> / <%= DateTime.Now.Month %> / <%= DateTime.Now.Year %>  <%= DateTime.Now.Hour %> : <%= DateTime.Now.Minute %> Hrs</font></td>
                </tr>
            </table>

            <% /// Menu da Pagina %>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav"></ul>
            </div>
        </div>
    </div>
    <div class="container body-content">
                <hr />
                    <% /// Divisoria da Pagina %>
        <center><img src="../Imagens/sim-retrô-2.jpg" width="850px" height="280px" /></center>
                <% /// Imagem da Pagina %>
        <br /><br />
            <% /// Pula 2 linhas %>
    <form id="form1" runat="server">
        <div>

            <%@Import Namespace="System.Data"  %>
                <%@Import Namespace="System.Data.SqlClient"  %>
                <%@Import Namespace="System.Configuration"  %>    
                <%@Import Namespace="Projeto.Entidades"  %>    
                    <% /// Assemblys Para as Entidades e Conexaio com a Base %>
            <%        
                SqlConnection  con = new SqlConnection(ConfigurationManager.ConnectionStrings["COTI"].ConnectionString);
                con.Open();
                /// Abertura da Conexao
                string Nome = Request.Form["Nome"];
                /// Campo Nome do(a) Usuario(a) que fez o Fale Conosco
                string E_mail = Request.Form["E_mail"];
                /// Campo E - mail do(a) Usuario(a) que fez o Fale Conosco
                string Telefone = Request.Form["Telefone"];
                /// Campo Telefone do(a) Usuario(a) que fez o Fale Conosco
                string Descricao = Request.Form["Descricao"];
                /// Campo Descricao do Fale Conosco
                SqlCommand com = new SqlCommand("INSERT INTO DELIVERY (NOME, E_MAIL, TELEFONE, DESCRICAO) VALUES('" + Nome + "', '" + E_mail + "', '" + Telefone + "', '" + Descricao + "')", con);
                    /// Conversa com a Base
                SqlDataReader dr = com.ExecuteReader();
                            /// Leitura dos dados
         %>
                                                <center>Prezado Cliente, o Seu Pedido Foi Realizado com Sucesso, aguarde que entraremos em Contato!</center>
                                           
                                                            <% /// Aviso do Resultado do Processo! %>
            <%
                                           con.Close();
                                                /// Fecha a Conexao
     %>

        </div>
    </form>
        <br />
        <center>
            <footer>
                <p>&copy; <%= DateTime.Now.Year %> - Lanchonete</p>
            </footer>
        </center>
</body>
</html>
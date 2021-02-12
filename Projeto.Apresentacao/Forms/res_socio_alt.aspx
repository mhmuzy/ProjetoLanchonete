<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="res_socio_alt.aspx.cs" Inherits="Projeto.Apresentacao.Forms.res_reserva" %>

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
                <a href="../Home/Reservas" class="navbar-brand">Voltar</a> 
                
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
        <h4>Consulta(s) do(a)(s) Sócio(a)(s) para efetuar a(s) alteração(ões) do(e) seu(s) dado(s).</h4>        
        <hr />
        <form action="res_con_socio_alt.aspx" runat="server">
            <table>
                <tr>
                    <td>
                Digite o Nome do(a) Sócio(a):</td><td><div style="margin-left:1.05em"><input type="text" name="Nome" class="form-control" /></div></td>
                </tr>
                <tr>
                    <td colspan="2">
                   <div style="margin-top:1em;margin-bottom:2em"><center><input type="submit" value="Efetuar Busca" class="btn btn-primary sm" /></center></div> 
                </td>
                        </tr>
                    </table>
                <center><img src="../Imagens/129650115_315009846239952_7192400901753567180_n.jpg" width="850px" height="280px" /></center>
            
        </form>
                    <% /// Divisoria da Pagina %>
                        <% /// Imagem da Pagina %>
        <br /><br />
                <% /// Pula 2 linhas %>
        <br />
        <center>
            <footer>
                <p>&copy; <%= DateTime.Now.Year %> - Lanchonete</p>
            </footer>
        </center>
</body>
</html>
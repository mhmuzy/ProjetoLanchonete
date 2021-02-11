<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Portal.aspx.cs" Inherits="Projeto.Apresentacao.Forms.Portal" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lanchonete</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/modernizr-2.6.2.js"></script>
</head>
<body class="col-md-10">
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="../Home/Index" class="navbar-brand">Página Inicial</a>
                <a href="../Lanche/Consulta" class="navbar-brand">Joias e Semi Joias</a>
               </div>
            <br />
            
            <table border align="right" bgcolor="black">
                <tr bgcolor="white">
                    <td><font face="arial" size="3"><%= DateTime.Now.DayOfWeek %> - <%= DateTime.Now.Day %> / <%=DateTime.Now.Month %> / <%= DateTime.Now.Year %> <%=DateTime.Now.Hour %> : <%=DateTime.Now.Minute %> Hrs</font></td>
                </tr>
            </table>

            <!Implementacao do relogio na Aplicacao>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav"></ul>
           
            </div>

        </div>

    </div>
            <% /// Menu da Pagina %>
    <div class="container body-content">
        @RenderBody()
        <hr />
            <% /// Divisoria da Pagina %>
        <div>
         <form id="form1"  action="HomePage.aspx" runat="server">   
        <table class="table table-bordered table-hover" align="center" bgcolor="black">
                <% /// Inicializacao do Portal da Pagina %>
            <thead>
                <tr align="center">
                    <td colspan="2" bgcolor="gray">
                        <strong>Area Restrita</strong>
                    </td>
                        <% /// Aviso de Area Restrita acesso somente para Funcionarios %>
                </tr>
                <tr>
                    <td bgcolor="beige">Login: <input type="text" name="Login" class="form-control" /><br />
                            <% /// Campo Login %>
                        Senha: <input type="password" name="Senha" class="form-control" /><br />
                            <% /// Campo Senha %>
                    </td>
                </tr>
                
                <tr align="center" bgcolor="gray">
                    <td colspan="2">
                        <input type="submit" class="btn btn-primary btn-sm" data-toggle="collapse" data-target=".navbar-collapse" value="Enviar" />
                    </td>
                </tr>
                </thead>
                    <% /// Botao de se logar %>
</table>
                <% /// Finalizacao da tabela do Portal %>
        <br />
             <a href="../Usuario/Cadastro"><font color="black" size="3">Se você não possui cadastro, clica neste link!</font></a>
        </div>
    </form>
        <center>
            <footer>
                <p>&copy; <%= DateTime.Now.Year %> - Lanchonete</p>
            </footer>
        </center>
    </div>

    <script src="~/Scripts/jquery-1.10.2.min.js"></script>
    <script src="~/Scripts/bootstrap.min.js"></script>
</body>
</html>
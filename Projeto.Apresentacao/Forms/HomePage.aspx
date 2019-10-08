<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Projeto.Apresentacao.Forms.HomePage" %>
<!DOCTYPE html> %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lanchonete</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../Content/bootstrapMhmuzy.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/modernizr-2.6.2.js"></script>
</head>
<body>
    
    <div class="container body-content">
        @RenderBody()
        
        
    
    <form id="form1" runat="server">
        <div>
                <%@Import Namespace="System.Data"  %>
                <%@Import Namespace="System.Data.SqlClient"  %>
                <%@Import Namespace="System.Configuration"  %>    
                <%@Import Namespace="Projeto.Entidades"  %>    
                        <% /// Assemblies Para Entidades e Conexao com a Base %>
            <%  
                try
                {
                    /// Inicializacao do Tratamento
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["COTI"].ConnectionString);
                    con.Open();
                        /// Abre a Conexao com a Base
                    string Login = Request.Form["Login"];
                            /// Variavel que lanca a informacao do Login do(a) Usuario(a)
                    string Senha = Request.Form["Senha"];
                                /// Variavel que lanca os dados da senha do(a) Usuario(a), mas protegida
                    SqlCommand com = new SqlCommand("SELECT * FROM USUARIO WHERE NOME = '" + Login + "' AND SENHA = '" + Senha + "' AND STATUS = 'ABERTO'", con);
                    SqlDataReader dr = com.ExecuteReader();
                            /// Conversa com a base
                    if (dr.Read())
                    {
                        /// Leitura dos dados
                        Usuario U = new Usuario();
                            /// Instancia do Objeto Usuario
                        U.CodigoUsuario = Convert.ToInt32(dr["CODIGO_USUARIO"]);
                            /// Atributo Codigo do Tipo do(a) Usuario(a) que define se o(a) Usuario(a) e: Administrador(a),
                            /// Secretario(a) ou Motoboy
                        if (U.CodigoUsuario.Equals(1))
                        { 
                            /// Codigo do(a) Usuario(a) Administrador(a)
                            %>
            <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <br />
            <a href="Portal.aspx"><font color="white">Sair</font></a>
            <table border align="right" bgcolor="black">
                <tr bgcolor="white">
                    <td><font face="arial" size="3"><%= DateTime.Now.DayOfWeek %> - <%= DateTime.Now.Day %> / <%=DateTime.Now.Month %> / <%= DateTime.Now.Year %> <%=DateTime.Now.Hour %> : <%=DateTime.Now.Minute %> Hrs</font></td>
                </tr>
            </table>

            <% /// Menu da Pagina %>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                            <nav class="menu">
                <ul>
                    <li><font face="arial" size="5">Usuario(a)</font> 
                        <ul>
                            <a href="../Usuario/Cadastro"><li><font face="arial" size="5">Cadastrar Usuario(a)</font></li></a>
                            <a href="ListUsuarioTrocarSenha.aspx"><li><font face="arial" size="5">Alterar a Senha do(a) Usuario(a)</font></li></a>
                            <a href="ListUsuarioExcluir.aspx"><li><font face="arial" size="5">Excluir</font></li></a>
                            <a href="../Usuario/ConsultaAlterarSenha"><li>Consultar</li></a>
                        </ul>
                    </li>
                    <%--<li><font face="arial" size="5">Lanche(s)</font>--%>
                        <% /// Menu de Lanche %>
                            <%--<ul>
                                <a href="../Lanche/Cadastro"><li><font face="arial" size="5">Cadastrar Lanche(s)</font></li></a>
                                <a href="ListLancheEdit.aspx"><li><font face="arial" size="5">Alterar</font></li></a>
                                <a href="ListLancheExc.aspx"><li><font face="arial" size="5">Excluir</font></li></a>
                                <a href="../Lanche/ConsultaAdministrador"><li><font fae="arial" size="5">Consultar</font></li></a>
                            </ul>--%>
                     <li><font face="arial" size="5">Delivery</font>
                            <% /// Menu de Delivery %>
                        <ul>
                            <a href="ExcDelivery.aspx"><li>Excluir</li></a>
                        </ul>
                      </li>

                      <li><font face="arial" size="5">Fale Conosco</font>
                            <% /// Mneu do Fale Conosco %>
                        <ul>
                            <a href="ExcFaleConosco.aspx"><li>Excluir</li></a>
                        </ul>
                        </li>
                    </nav>

                </ul>
           
            </div>

        </div>

    </div>

                        <div class="container">
                <!--Menu da Pagina Inicial-->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                            <nav class="menu">
                <ul>
                    <li><font face="arial" size="2">Usuario(a)</font> 
                        <ul>
                            <a href="../Usuario/Cadastro"><li>Cadastrar Usuario(a)</li></a>
                            <li><a href="ListUsuarioTrocarSenha.aspx">Alterar a Senha do(a) Usuario(a)</a></li>
                        </ul>
                    </li>
                </ul>
                    </nav>

                </button>
            
                            </div>
            </div>
            </div>
                            <%--<ul class="menu clearfix">
                    <% /// Menu da Pagina %>
                    <li>
                            <a href="#">Usuario(a)</a>
                                <% /// Menu de Usuario(a) %>
                            
                        <ul class="sub-menu clearfix">
                            
                            
                            <li><a href="../Usuario/Cadastro">Cadastrar Usuario(a)</a></li>
                                <% /// Item de Cadastro de Usuario(a) %>
                            <li><a href="ListUsuarioTrocarSenha.aspx">Alterar a Senha do(a) Usuario(a)</a></li>
                                <% /// Item de alteracao de senha do(a) Usuario(a) %>
                            <li><a href="ListUsuarioExcluir.aspx">Excluir o(a) Usuario(a)</a></li>
                                        <% /// Item de exclusao do(a) Usuario(a) %>
                            <li><a href="../Usuario/ConsultaAlterarSenha">Consultar o(a) Usuario(a)</a></li>
                                    <% /// Item de consulta do(a) Usuario(a) %>
                        </ul>

                    </li>
                    
                    <li>
                        <a href="#">Lanche(s)</a>
                            <% /// Menu de Lanche %>
                            <ul class="sub-menu clearfix">
                            
                                
                            <li><a href="../Lanche/Cadastro">Cadastrar Lanche(s)</a></li>
                                    <% /// Item de Cadastro de Lanche %>
                            <li><a href="ListLancheEdit.aspx">Alterar dado(s) do(s) Lanche(s)</a></li>
                                    <% /// Item de Alteracao de dados do Lanche %>
                            <li><a href="ListLancheExc.aspx">Excluir o(s) Lanche(s)</a></li>
                                    <% /// Item de exclçusao de dados do Lanche %>
                            <li><a href="../Lanche/ConsultaAdministrador">Consultar o(s) Lanche(s)</a></li>
                                    <% /// Item de Consulta de Lanche %>
                            </ul>
                            </li>
                    
                    <li>
                        <a href="#">Delivery</a>
                            <% /// Menu de Delivery %>
                        <ul class="sub-menu clearfix">
                            <li><a href="ExcDelivery.aspx">Excluir ou Consultar Delivery</a></li>
                                <% /// Item de Excluir ou Consultar o Delivery %>
                        </ul>
                    </li>
                         
                    <li>
                        <a href="#">Fale Conosco</a>
                            <% /// Mneu do Fale Conosco %>
                        <ul class="sub-menu clearfix">
                            <li><a href="ExcFaleConosco.aspx">Excluir ou Consultar o Fale Conosco</a></li>
                                <% /// Item de excluir ou consultar o Fale Conosco %>
                        </ul>

                    </li>

                    
                </ul>        
        --%>
            
        
        <hr />
        <br />
                        <strong>Seja Bem Vindo a Aplicacao da Lanchonete!</strong>
                                <% /// Titulo da Pagina %>
                        <br />
                        <br />
                                <% /// Pula 2 linhas %>
                        Administrador
                                <% /// Nome do Perfil do(a) Usuario(a) %>
                        <br />
                        <br />
                            <% /// Pula mais 2 linhas %>
                    <!--    <table class="table table-bordered table-hover" bgcolor="black">
            <thead>
                <tr bgcolor="gray" align="center">
                    <td>Usuario(a)</td>
                    <td>
                        Lanche(s)
                    </td>
                    <td>Delivery</td>
                    <td>
                        Fale Conosco
                    </td>
                    <td>
                        Reserva
                    </td>
                </tr>
                <tr bgcolor="White" align="center">
                    <td>
                        <a href="" class="btn btn-success" data-toggle="collapse" data-target=".navbar-collapse"/>Cadastrar Usuario(a)</a><br /><br />
                        <a href="" class="btn btn-success" data-toggle="collapse" data-target=".navbar-collapse"/>Alterar Senha do(a) Usuario(a)</a><br /><br />
                        <a href="" class="btn btn-success" data-toggle="collapse" data-target=".navbar-collapse"/>Excluir o(a) Usuario(a)</a><br /><br />
                        <a href="" class="btn btn-success" data-toggle="collapse" data-target=".navbar-collapse"/>Consultar o(a) Usuario(a)</a><br /><br />
                    </td>
                    <td>
                        <a href="" class="btn btn-success" data-toggle="collapse" data-target=".navbar-collapse"/>Cadastrar Lanche(s)</a><br /><br />
                        <a href="" class="btn btn-success" data-toggle="collapse" data-target=".navbar-collapse"/>Alterar Dado(s) do(s) Lanche(s)</a><br /><br />
                        <a href="" class="btn btn-success" data-toggle="collapse" data-target=".navbar-collapse"/>Excluir o(s) Lanche(s)</a><br /><br />
                        <a href="" class="btn btn-success" data-toggle="collapse" data-target=".navbar-collapse"/>Consultar o(s) Lanche(s)</a><br /><br />
                    </td>
                    <td>
                        <a href="" class="btn btn-success" data-toggle="collapse" data-target=".navbar-collapse"/>Excluir ou Consultar o Delivery</a><br /><br />
                    </td>
                    <td>
                        <a href="" class="btn btn-success" data-toggle="collapse" data-target=".navbar-collapse"/>Excluir ou Consultar o Fale Conosco</a><br /><br />
                    </td>
                    <td>
                        <a href="" class="btn btn-success" data-toggle="collapse" data-target=".navbar-collapse"/>Excluir ou Consultar a Reserva</a><br /><br />
                    </td>
                </tr>
                
</table>-->
            <center><img src="../Imagens/montar-uma-lanchonete-é-um-bom-negócio.jpg" width="850px" height="280px" /></center>
                            <% /// Imagem da Pagina %>
                  <br /> <% }
                             else if (U.CodigoUsuario.Equals(2))
                             { %>
                                 <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <br />
            <a href="Portal.aspx"><font color="white">Sair</font></a>
            <table border align="right" bgcolor="black">
                <tr bgcolor="white">
                    <td><font face="arial" size="3"><%= DateTime.Now.DayOfWeek %> - <%= DateTime.Now.Day %> / <%=DateTime.Now.Month %> / <%= DateTime.Now.Year %> <%=DateTime.Now.Hour %> : <%=DateTime.Now.Minute %> Hrs</font></td>
                </tr>
            </table>

            <% /// Menu da Pagina %>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                            <nav class="menu">
                <ul>
                    <li><font face="arial" size="5">Usuario(a)</font> 
                        <ul>
                            <a href="../Usuario/CadastroSecretaria"><li>Cadastrar</li></a>
                            <a href="../Usuario/ConsultaUsuario"><li>Consultar</li></a>
                        </ul>
                    </li>
                    <%--<li><font face="arial" size="5">Lanche(s)</font>--%>
                        <% /// Menu de Lanche %>
                            <%--<ul>
                                <a href="../Lanche/Cadastro"><li><font face="arial" size="5">Cadastrar Lanche(s)</font></li></a>
                                <a href="ListLancheEdit.aspx"><li><font face="arial" size="5">Alterar</font></li></a>
                                <a href="ListLancheExc.aspx"><li><font face="arial" size="5">Excluir</font></li></a>
                                <a href="../Lanche/ConsultaAdministrador"><li><font fae="arial" size="5">Consultar</font></li></a>
                            </ul>--%>
                     <li><font face="arial" size="5">Delivery</font>
                            <% /// Menu de Delivery %>
                        <ul>
                            <a href="../Delivery/ConsultaSecretaria"><li>Consultar</li></a>
                        </ul>
                      </li>

                      <li><font face="arial" size="5">Fale Conosco</font>
                            <% /// Mneu do Fale Conosco %>
                        <ul>
                            <a href="../FaleConosco/Consulta"><li>Consultar</li></a>
                        </ul>
                        </li>
                    </nav>

                </ul>
           
            </div>

        </div>

    </div>

                        <div class="container">
                <!--Menu da Pagina Inicial-->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                            <nav class="menu">
                <ul>
                    <li><font face="arial" size="2">Usuario(a)</font> 
                        <ul>
                            <a href="../Usuario/Cadastro"><li>Cadastrar Usuario(a)</li></a>
                            <li><a href="ListUsuarioTrocarSenha.aspx">Alterar a Senha do(a) Usuario(a)</a></li>
                        </ul>
                    </li>
                </ul>
                    </nav>

                </button>
            
                            </div>
            </div>
            </div>
            
                                 /// Se o Perfil for secretario(a)
                                 %>
                            <%--<div class="menu-container">--%>
                <!--Menu da Pagina Inicial-->
<%--                <ul class="menu clearfix">
                    <li>
                            <a href="#">Usuario(a)</a>--%>
                                    <% /// Menu de Usuario(a) %>

<%--                        <ul class="sub-menu clearfix">
                            
                            
                            <li><a href="../Usuario/CadastroSecretaria">Cadastrar Usuario(a)</a></li>--%>
                                    <% /// Item de Cadastro de Usuario(a) %>
                            <%--<li><a href="../Usuario/ConsultaUsuario">Consultar o(a) Usuario(a)</a></li>--%>
                                        <% /// Item de Consulta de Usuario(a) %>
                        <%--</ul>

                    </li>
                    
                    <li>
                        <a href="#">Lanche(s)</a>
                            --%><% /// Menu de Lanche %>
                            <%--<ul class="sub-menu clearfix">--%>
                            
                                
                            <%--<li><a href="../Lanche/CadastroSecretaria">Cadastrar Lanche(s)</a></li>--%>
                                    <% /// Item de Cadastro de Lanche %>
                            <%--<li><a href="../Lanche/ConsultaSecretaria">Consultar o(s) Lanche(s)</a></li>--%>
                                    <% /// Item de Consulta de Lanche %>
                           <%-- </ul>
                            </li>
                    
                    <li>
                        <a href="#">Delivery</a>
                           --%>     <% /// Menu de Delivery %>
                        <%--<ul class="sub-menu clearfix">
                            <li><a href="../Delivery/ConsultaSecretaria">Consultar Delivery</a></li>
                       --%>             <% /// Item de Consulta de Delivery %>
                       <%-- </ul>
                    </li>
                         
                    <li>
                        <a href="#">Fale Conosco</a>--%>
                            <% /// Menu do Fale Conosco %>
                        <%--<ul class="sub-menu clearfix">
                            <li><a href="../FaleConosco/Consulta">Consultar o Fale Conosco</a></li>--%>
                                    <% /// Item de Consulta do Fale Conosco %>
                <%--        </ul>

                    </li>

                    
                </ul>--%>        
        
            
        
        <hr />
            <% /// Divisoria da Pagina %>                            
                        <strong>Seja Bem Vindo a Aplicacao da Lanchonete!</strong>
                                    <% /// Titulo da Pagina %>
                        <br />
                        <br />
                                    <% /// Pula 2 linhas %>
                        Secretaria
                                    <% /// Nome do Perfil do(a) Usuario(a) %>
                        <br />
                        <br />
                                <% /// Pula mais 2 linhas %>
                                <center><img src="../Imagens/montar-uma-lanchonete-é-um-bom-negócio.jpg" width="850px" height="280px" /></center>
                                    <% /// Imagem da Pagina %>
                  <br />
                        <% /// Pula mais 1 linha %>
                       <% }
                           else if (U.CodigoUsuario.Equals(3))
                           { 

                               /// Se o Perfil for Motoboy
                               %>
                            <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <br />
            <a href="Portal.aspx"><font color="white">Sair</font></a>
            <table border align="right" bgcolor="black">
                <tr bgcolor="white">
                    <td><font face="arial" size="3"><%= DateTime.Now.DayOfWeek %> - <%= DateTime.Now.Day %> / <%=DateTime.Now.Month %> / <%= DateTime.Now.Year %> <%=DateTime.Now.Hour %> : <%=DateTime.Now.Minute %> Hrs</font></td>
                </tr>
            </table>

            <% /// Menu da Pagina %>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                            <nav class="menu">
                <ul>
                    <li><font face="arial" size="5">Usuario(a)</font> 
                        <ul>
                            <a href="../Usuario/CadastroSecretaria"><li>Cadastrar</li></a>
                            <a href="../Usuario/ConsultaUsuario"><li>Consultar</li></a>
                        </ul>
                    </li>
                    <%--<li><font face="arial" size="5">Lanche(s)</font>--%>
                        <% /// Menu de Lanche %>
                            <%--<ul>
                                <a href="../Lanche/Cadastro"><li><font face="arial" size="5">Cadastrar Lanche(s)</font></li></a>
                                <a href="ListLancheEdit.aspx"><li><font face="arial" size="5">Alterar</font></li></a>
                                <a href="ListLancheExc.aspx"><li><font face="arial" size="5">Excluir</font></li></a>
                                <a href="../Lanche/ConsultaAdministrador"><li><font fae="arial" size="5">Consultar</font></li></a>
                            </ul>--%>
                     <li><font face="arial" size="5">Delivery</font>
                            <% /// Menu de Delivery %>
                        <ul>
                            <a href="../Delivery/ConsultaSecretaria"><li>Consultar</li></a>
                        </ul>
                      </li>

                      <li><font face="arial" size="5">Fale Conosco</font>
                            <% /// Mneu do Fale Conosco %>
                        <ul>
                            <a href="../FaleConosco/Consulta"><li>Consultar</li></a>
                        </ul>
                        </li>
                    </nav>

                </ul>
           
            </div>

        </div>

    </div>
                                        <%--<div class="menu-container">--%>
                <!--Menu da Pagina Inicial-->
                <%--<ul class="menu clearfix">
                    <li>
                            <a href="#">Usuario(a)</a>
                --%>                    <% /// Menu do(a) Usuario(a) %>

                    <%--    <ul class="sub-menu clearfix">
                            
                            
                            <li><a href="../Usuario/ConsultaMotoboy">Consultar o(a) Usuario(a)</a></li>
                    --%>                <% /// Item de Consultar o(a) Usuario(a) %>
                        <%--</ul>

                    </li>
                    
                    <li>
                        <a href="#">Lanche(s)</a>--%>
                            <% /// Menu Lanche %>
                            <%--<ul class="sub-menu clearfix">
                            
                                
                            <li><a href="../Lanche/ConsultaMotoboy">Consultar o(s) Lanche(s)</a></li>
                            --%>        <% /// Item de Consultar Lanche %>
                            <%--</ul>
                            </li>
                    
                    <li>
                        <a href="#">Delivery</a>
                            --%><% /// Menu Delivery %>
                        <%--<ul class="sub-menu clearfix">
                            <li><a href="../Delivery/ConsultaMotoboy">Consultar Delivery</a></li>--%>
                                <% /// Item de Consultar o Delivery %>
                        <%--</ul>
                    </li>
                         
                    <li>
                        <a href="#">Fale Conosco</a>--%>
                            <% /// Mneu do Fale Conosco %>
                        <%--<ul class="sub-menu clearfix">
                            <li><a href="../FaleConosco/ConsultaMotoboy">Consultar o Fale Conosco</a></li>--%>
                                <% /// Item de Consultar o Fale Conosco %>
                        <%--</ul>

                    </li>

                    
                </ul>        
        --%>
            
        
        <hr />
            <% /// Divisoria da Pagina %>
                        <br />
                        <strong>Seja Bem Vindo a Aplicacao da Lanchonete!</strong>
                                            <% /// Titulo da Pagina %>
                        <br />
                        <br />
                            <% /// Pula 2 linhas %>                    
                        Motoboy
                            <% /// Nome do Perfil do(a) Usuario(a) %>                        
                        <br />
                        <br />
                            <% /// Pula mais 2 linhas %>
                                            <center><img src="../Imagens/montar-uma-lanchonete-é-um-bom-negócio.jpg" width="850px" height="280px" /></center>
                                                    <% /// Imagem da Pagina %>
                                            <br />
                                                <% /// Pula mais 1 linha %>
                               <% }
                                   else if (U.CodigoUsuario != 1 && U.CodigoUsuario != 2 && U.CodigoUsuario != 3)
                                   { 
                                       /// Se nao tivre informacao nenhuma do(a) usuario(a)
                                       %>
                                            <center>Dados nao encontrado</center>
                                                <% /// Gera a mensagem Dados nao encontrado %>
                                       <% }
                                           }
                                           else {%>
                                            <br /><br />
                                                <center>Dados nao encontrado</center>
                                           <br /><br />
                                            <%}
                                                       con.Close();
                                                            /// Fecha a Conexao
                                                   }
                
                                               catch (Exception e)
                {
                                                    /// Se tiver que da tratamento
                    %> Erro: <%= e.Message %>
                                           <% /// Gera a mensagem de erro %>     
                <% }
     %>
        </div>
    </form>
            <center>
            <footer>
                <p>&copy; <%= DateTime.Now.Year %> - Lanchonete</p>
            </footer>
        </center>
            <% /// Informacao da Pagina %>
</body>
</html>
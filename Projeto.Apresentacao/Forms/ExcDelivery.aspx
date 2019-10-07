<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExcDelivery.aspx.cs" Inherits="Projeto.Apresentacao.Forms.ExcDelivery" %>

<!DOCTYPE html>

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
            
            
            <% /// Pula 1 Linha %>
            

        </div>

    </div>
    <h2><font face="arial" size="3" color="black">Lista de Deliverys Para a Exclusao:</font></h2>
            <% /// Titulo da Pagina %>
    <form id="form1" runat="server">
        <div>
            <%@Import Namespace="System.Data"  %>
                <%@Import Namespace="System.Data.SqlClient"  %>
                <%@Import Namespace="System.Configuration"  %>    
                <%@Import Namespace="Projeto.Entidades"  %>    
                    <% /// Conexao com a Base %>
            <br />
                <% /// PUla mais 1 linha %>
    <center><a href="../Usuario/Administrator">Voltar</a></center>
                <% /// Linq de voltar %>
    <br />
                <% /// Pula mais 1 linha %>
    <hr />
                <% /// Divisoria da Parte Superior da Pagina %>
            <% 
                SqlConnection  con = new SqlConnection(ConfigurationManager.ConnectionStrings["COTI"].ConnectionString);
                con.Open();
                /// Abrindo a conexao com a base de dados
                SqlCommand com = new SqlCommand("SELECT * FROM DELIVERY WHERE STATUS = 'ABERTO'", con);
                /// Conversa com a Base
                SqlDataReader dr = com.ExecuteReader(); 
                /// Modulo leitura dos dados
                %>
                <table class="table table-bordered table-hover">
        <% /// Inicializacao da Tabela de Resultado da Pagina %>
        <thead align="center">
            <tr bgcolor="gray" align="center">
                                    <% /// Inicializacao do Titulo da Pagina %>
                <th><font face="arial" size="3" color="black">Nome do(a) Usuario(a) que fez o Delivery</font></th>
                    <% /// Titulo Nome do(a) Usuario(a) que fez o Delivery %>
                <th><font face="arial" size="3" color="black">E - mail</font></th>
                    <% /// Titulo E - mail do(a) Usuario(a) que fez o Delivery %>
                <th><font face="arial" size="3" color="black">Telefone</font></th>
                    <% /// Titulo Telefone do(a) Usuario(a) que fez o Delivery %>
                <th><font face="arial" size="3" color="black">Descricao</font></th>
                    <% /// Titulo Descricao do Delivery %>
                <th><font face="arial" size="3" color="black">Operacao</font></th>
                      <% /// Titulo que vai ter a Operacao de exclusao do Delivery, isto e, finalizar o delivery %>  
            </tr>
        </thead><%
                    while (dr.Read())
                    {
                        Delivery d = new Delivery();
                            /// Instancia do Objeto Delivery
                        d.Codigo = Convert.ToInt32(dr["CODIGO"]);
                            /// Atributo Codigo do Delivery
                        d.Nome = Convert.ToString(dr["NOME"]);
                            /// Atributo Nome do Delivery
                        d.Email = Convert.ToString(dr["E_MAIL"]);
                            /// Atributo E - mail do Delivery
                        d.Telefone = Convert.ToString(dr["TELEFONE"]);
                            /// Atributo Telefone do Delivery
                        d.Descricao = Convert.ToString(dr["DESCRICAO"]);
                            /// Atributo Descricao do Delivery
                   %>
            
        <tbody>
               <tr>
                <td><font face="arial" size="3" color="black"><%: d.Nome %></font></td>
                        <% /// Mostra o Atributo Nome do Delivery %>
                 <td><font face="arial" size="3" color="black"><%: d.Email %></font></td>
                        <% /// Mostra o Atributo E - mail do Delivery %>
                <td><font face="arial" size="3" color="black"><%: d.Telefone %></font></td>
                        <% /// Mostra o Atributo Telefone do Delivery %>
                 <td><font face="arial" size="3" color="black"><%: d.Descricao %></font></td>
                        <% /// Mostra o Atributo Descricao do Delivery %>
                 <td><a href="ExcluirDelivery.aspx?Codigo=<%: d.Codigo %>" class="btn btn-danger btn-sm"><font face="arial" size="3" color="black">Excluir</font></a></td>
                        <% /// Botao de Finalizacao do Delivery %>     
               </tr>
                   </tbody>
            <%
                }
         %>
                                                
                                           <%
                                           con.Close();
                                               /// Fecha a conexao com a base de dados
     %>
                    </table>
                        <% /// Finalizacao da Tabela de Resultado %>
        </div>
    </form>
</body>
</html>
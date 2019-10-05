<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListLancheExc.aspx.cs" Inherits="Projeto.Apresentacao.Forms.ListLancheExc" %>

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
            
            
                    <% /// Pula mais 1 linha %>
            

        </div>

    </div>
    <h2><font face="arial" size="3" color="black">Lista dos Lanches Para a Alteracao dos seus dados:</font></h2>    <form id="form1" runat="server">
            <% /// Titulo da Pagina %>
        <div>
 
            <%@Import Namespace="System.Data"  %>
                <%@Import Namespace="System.Data.SqlClient"  %>
                <%@Import Namespace="System.Configuration"  %>    
                <%@Import Namespace="Projeto.Entidades"  %>    
                        <% /// Assemblies Para Entidades e Conexao com a Base %>
            <br />
                <% /// Pula mais 1 linha %>
    <center><a href="../Usuario/Administrator">Voltar</a></center>
                    <% /// Link de voltar %>
    <br />
                <% /// Pula mais 1 linha %>
    <hr />
                <% /// Divisoria da Pagina %>
            <% 
                SqlConnection  con = new SqlConnection(ConfigurationManager.ConnectionStrings["COTI"].ConnectionString);
                con.Open();
                        /// Abre conexao com a base
                SqlCommand com = new SqlCommand("SELECT * FROM LANCHE WHERE STATUS = 'ABERTO'", con);
                    /// Conversa com a base
                SqlDataReader dr = com.ExecuteReader(); 
                    /// Leitura dos dados
                %>
                <table class="table table-bordered table-hover">
        <% /// Inicializacao da Tabela de Resultado %>
        <thead align="center">
            <tr bgcolor="gray" align="center">
                    <% /// Inicializacao dos titulos do Lanche %>
                <th><font face="arial" size="3" color="black">Nome do Lanche</font></th>
                    <% /// Titulo Nome do Lanche %>
                <th><font face="arial" size="3" color="black">Preco</font></th>
                    <% /// Titulo Preco do Lanche %>
                <th><font face="arial" size="3" color="black">Operacao</font></th>
                    <% /// Titulo Operacao de Excluir o Lanche %>
            </tr>
        </thead><%
                    while (dr.Read())
                    {
                        /// Leitura dos dados
                        Lanche l = new Lanche();
                            /// Instancia do Objeto Lanche
                        l.Nome = Convert.ToString(dr["NOME"]);
                            /// Atributo Nome do Lanche
                        l.Preco = Convert.ToString(dr["PRECO"]);
                            /// Atributo Preco do Lanche
                        l.CodigoLanche = Convert.ToInt32(dr["CODIGO_LANCHE"]);
                            /// Atributo Preco do Lanche
                   %>
            
        <tbody>
               <tr>
                    <% /// Informacao dos Lanches %>
                <td><font face="arial" size="3" color="black"><%: l.Nome %></font></td>
                    <% /// Informacao Nome do Lanche %>
                 <td><font face="arial" size="3" color="black"><%: l.Preco %></font></td>
                    <% /// Informacao Preco do Lanche %>
                 <td><a href="ExcluirLanche1.aspx?Codigo=<%: l.CodigoLanche %>" class="btn btn-danger btn-sm"><font face="arial" size="3" color="black">Excluir</font></a></td>
                    <% /// Informacao do botao de excluir o Lanche %>     
               </tr>
                   </tbody>
            <%
                }
         %>
                                                
                                           <%
                                           con.Close();
                                               /// Fecha a conexao com o banco
     %>
                    </table>
                        <% /// Fecha a Tabela de Resultado %>
        </div>
        </div>
    </form>
</body>
</html>
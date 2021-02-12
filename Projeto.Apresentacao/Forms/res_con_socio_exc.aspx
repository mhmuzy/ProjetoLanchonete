<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="res_con_socio_exc.aspx.cs" Inherits="Projeto.Apresentacao.Forms.res_con_socio_exc" %>

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
                <a href="res_reserva.aspx" class="navbar-brand">Voltar</a> 
                
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
        <br /><br /><br /><br />
        Resultado da(s) Consulta(s) do(a)(s) Sócio(a)(s) para efetuar a exclusão. 
        
                    <%@Import Namespace="System.Data"  %>
                <%@Import Namespace="System.Data.SqlClient"  %>
                <%@Import Namespace="System.Configuration"  %>    
                <%@Import Namespace="Projeto.Entidades"  %>
                    <% /// Assembly para Entidades e Conexao com a Base %>
            
                <% /// Pula mais 1 linha %>
                <% /// Pula mais 1 linha %>
    <hr />
            <% /// Divisoria da Pagina %>
            <% 
                SqlConnection  con = new SqlConnection(ConfigurationManager.ConnectionStrings["WithLove"].ConnectionString);
                con.Open();
                        /// Abertura da conexao com a base
                SqlCommand com = new SqlCommand("SELECT * FROM SOCIO WHERE NOME LIKE '" + Request.Form["Nome"] + "%'", con);
                            /// Conversa com a base
                SqlDataReader dr = com.ExecuteReader(); %>
                <table class="table table-bordered table-hover">
        <% /// Inicializacao da Tabela de Resultado %>
        <thead align="center">
            <tr bgcolor="gray" align="center">
                        <% /// Titulo da Pagina %>
                        <% /// Titulo Nome do Lanche %>
                                <th><font face="arial" size="3" color="black">Matrícula</font></th>
                <th><font face="arial" size="3" color="black">Nome</font></th>
                        <% /// Titulo Preco do Lasnche %>
                <th><font face="arial" size="3" color="black">Telefone</font></th>
                                <th><font face="arial" size="3" color="black">Celular</font></th>
                                <th><font face="arial" size="3" color="black">Cpf</font></th>
                                <th><font face="arial" size="3" color="black">E - Mail</font></th>
                                <th><font face="arial" size="3" color="black">Endereço</font></th>
                                <th><font face="arial" size="3" color="black">Excluir</font></th>
                        <% /// Titulo Operacao de Alterar os dados do Lanche %>
            </tr>
        </thead><%
                    while (dr.Read())
                    /// Leitura dos dados
                    {
                        Reserva l = new Reserva();
                        /// Instancia do Objeto Lanche
                        l.Codigo = Convert.ToInt32(dr["Matricula"]);
                        /// Atributo Nome do Lanche
                        l.Nome = Convert.ToString(dr["Nome"]);
                        /// Atributo Preco do Lanche
                        l.Telefone = Convert.ToString(dr["Telefone"]);
                        /// Atributo Codigo do Lanche
                        l.Celular = Convert.ToString(dr["Celular"]);
                        l.Cpf = Convert.ToString(dr["Cpf"]);
                        l.Email = Convert.ToString(dr["Email"]);
                        l.Endereco = Convert.ToString(dr["Endereco"]);

                        
                   %>
            
        <tbody>
               <tr>
                    <% /// Parte de Informacao do Lanche %>
                <td><font face="arial" size="3" color="black"><%: l.Codigo %></font></td>
                    <% /// Informacao Nome do Lanche %> 
                 <td><font face="arial" size="3" color="black"><%: l.Nome %></font></td>
                   <td><font face="arial" size="3" color="black"><%: l.Telefone %></font></td>
                   <td><font face="arial" size="3" color="black"><%: l.Celular %></font></td>
                   <td><font face="arial" size="3" color="black"><%: l.Cpf %></font></td>
                   <td><font face="arial" size="3" color="black"><%: l.Email %></font></td>
                   <td><font face="arial" size="3" color="black"><%: l.Endereco %></font></td>
                    <% /// Informacao Preco do Lanche %>
                 <td><a href="UpdateSocio.aspx?Matricula=<%: l.Codigo %>" class="btn btn-danger btn-sm"><font face="arial" size="3" color="black">x</font></a></td>
                        <% /// Botao de Editar os dados do Lanche %>     
               </tr>
                   </tbody>
            <%
                    
         
                                }          
                                           
                                           con.Close();
                                               /// Fecha a conexao com o lanche
     %>
                    </table>
                        </div>
        </div>
    </form>
</body>
</html>
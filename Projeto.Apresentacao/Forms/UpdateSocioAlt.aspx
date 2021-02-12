<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateSocioAlt.aspx.cs" Inherits="Projeto.Apresentacao.Forms.UpdateSocio" %>

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
                
                SqlCommand com = new SqlCommand("SELECT FROM SOCIO WHERE MATRICULA = " + CodigoLanche, con);
                com.ExecuteNonQuery();

            /// Instancia do SqlCommand
            SqlDataReader dr = com.ExecuteReader();
            /// Leitura dos Dados
            List<Socio> lista = new List<Socio>();
            /// Instancia do Lista da Entidade Lanche

            while (dr.Read())
            {
                /// Leitura dos Dados
                Socio S = new Socio();
                /// Instancia da Entidade Lanche

                S.Matricula = Convert.ToInt32(dr["Matricula"]);
                S.Nome = Convert.ToString(dr["Nome"]);
                S.Telefone = Convert.ToString(dr["Telefone"]);
                S.Celular = Convert.ToString(dr["Celular"]);
                S.Cpf = Convert.ToString(dr["Cpf"]);
                S.Email = Convert.ToString(dr["Email"]);
                S.Endereco = Convert.ToString(dr["Endereco"]);

                lista.Add(S);
                    %>
            <br />
                                    <center><a href="res_reserva.aspx">Voltar</a></center>
                                        <br />
                                                <center>Pegando os Dados do(a) Sócio(a)!</center>
                                                        <% /// Resultado da Pagina %>
            <br />

                <table>
                <tr>
                    <td>
                        <font face="arial" size="3" color="black">Nome:</font>
                    </td>
                    <td align="left">
                        <div style="margin-left:1em">
            <input type="text" name="Nome" value="<%: S.Nome%>" class="form-control" />
                        </div>
                    </td>
                </tr>
                <tr style="margin-top:7em">
                    <td>
                        <div style="margin-top:1em">
                            <font face="arial" size="3" color="black">Telefone:</font>
                        </div>
                    </td>
                    <td align="left">
                        <div style="margin-left:1em">
                            <div style="margin-top:1em">
                                            <input type="text" name="Nome" value="<%: S.Telefone%>" class="form-control" />
                            </div>
                        </div>
                    </td>
                </tr>
                <tr style="margin-top:7em">
                    <td>
                        <div style="margin-top:1em">
                            <font face="arial" size="3" color="black">Celular:</font>
                        </div>
                    </td>
                    <td align="left">
                        <div style="margin-left:1em">
                            <div style="margin-top:1em">
                                            <input type="text" name="Nome" value="<%: S.Celular%>" class="form-control" />
                            </div>
                        </div>
                    </td>
                </tr>
                <tr style="margin-top:7em">
                    <td>
                        <div style="margin-top:1em">
                            <font face="arial" size="3" color="black">E - mail:</font>
                        </div>
                    </td>
                    <td align="left">
                        <div style="margin-left:1em">
                            <div style="margin-top:1em">
                                            <input type="text" name="Nome" value="<%: S.Email%>" class="form-control" />
                            </div>
                        </div>
                    </td>
                </tr>
                <tr style="margin-top:7em">
                    <td>
                        <div style="margin-top:1em">
                            <font face="arial" size="3" color="black">Cpf:</font>
                        </div>
                    </td>
                    <td align="left">
                        <div style="margin-left:1em">
                            <div style="margin-top:1em">
            <input type="text" name="Nome" value="<%: S.Cpf%>" class="form-control" />
                            </div>
                        </div>
                    </td>
                </tr>
                <tr style="margin-top:7em">
                    <td>
                        <div style="margin-top:1em">
                            <font face="arial" size="3" color="black">Endereço:</font>
                        </div>
                    </td>
                    <td align="left">
                        <div style="margin-left:1em">
                            <div style="margin-top:1em">
            <input type="text" name="Nome" value="<%: S.Endereco%>" class="form-control" />
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <div style="margin-top:1em">
                            <input type="submit" class="btn btn-primary btn-sm" value="Alterar Sócio(a)" />
                        </div>
                    </td>
                </tr>
            </table>
                                           
                                      
            <%
            }
            /// retorna Para a Lista
        con.Close();
                    /// Conversa com a Base
                %>                         
                                               
     
        </div>
    </form>
</body>
</html>
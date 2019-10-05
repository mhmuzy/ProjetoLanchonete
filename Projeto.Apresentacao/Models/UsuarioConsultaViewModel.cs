using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Projeto.Entidades;

namespace Projeto.Apresentacao.Models
{
    public class UsuarioConsultaViewModel
    {

        public int Codigo
        /// Declaracao do Atributo Codigo do(a) Usuario(a)
        {
            get;
            set;
        }
        public string Nome
        /// Declaracao do Atributo Login do(a) Ususario(a)
        {
            get;
            set;
        }
        public string Senha
        /// Declaracao do Atributo Senha do(a) Usuario(a)
        {
            get;
            set;
        }
        public int CodigoUsuario
        /// Declaracao do Atributo Codigo do Tipo do(a) Usuario(a) 
        /// [Administrador(a), Secretario(a) e Motoboy]
        {
            get;
            set;
        }

    }
}
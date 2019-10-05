using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using Projeto.Entidades;

namespace Projeto.Apresentacao.Models
{
    public class UsuarioCadastroViewModel
    {

        public int CodigoUsuario
        /// Declaracao do Atributo Codigo do(a)
        /// Ususraio(a)
        {
            get;
            set;
        }
        public string Nome
        /// Declaracao do Atributo Nome do(a) Usuario(a)
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

    }
}
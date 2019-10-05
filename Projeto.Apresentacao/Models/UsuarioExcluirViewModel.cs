using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projeto.Apresentacao.Models
{
    public class UsuarioExcluirViewModel
    {

        public int Codigo
        /// Declaracao do Atributo Codigo do(a) Usuario(a)
        {
            get;
            set;
        }
        public string Nome
        /// Declaracao do Atributo Login do(a) Usuario(a)
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
        /// Declaracao do Atributo Codigo do tipo do(a) Usuario(a)
        {
            get;
            set;
        }

    }
}
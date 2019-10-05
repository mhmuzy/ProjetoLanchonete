using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Projeto.Apresentacao.Models
{
    public class UsuarioTrocarSenhaViewModel
    {

        public int Codigo
        /// Declaracao do Atributo Codigo
        {
            get;
            set;
        }

        public string Senha
        /// Declaracao do Atributo Senha
        {
            get;
            set;
        }

    }
}
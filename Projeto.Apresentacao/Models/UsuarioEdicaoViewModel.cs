using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Projeto.Apresentacao.Models
{
    public class UsuarioEdicaoViewModel
    {

        [Required(ErrorMessage = "Digita o Codigo do(a) Usuario(a)")]
        /// Requerimento
        public int Codigo
        /// Declaracao do Atributo Codigo do(a) Usuario(a)
        {
            get;
            set;
        }
        [MinLength(3, ErrorMessage = "Por favor, informe no minimo {1} caracter.")]
        /// Campo de Requerimento Minimo do Login do(a) Usuario(a)
        [MaxLength(50, ErrorMessage = "Por favor, informe no maximo {50} caracter.")]
        /// Campo de Requerimento Maximo Login do(a) Usuario(a)
        [Required(ErrorMessage = "Por favor, infome o nome do(a) Usuario(a)")]
        /// Campo de Requerimento do(a) Usuario(a)
        public string Nome
        /// Declaracao do Atributo Login do(a) Usuario(a)
        {
            get;
            set;
        }
        [Required(ErrorMessage = "Por favor, infome a senha do(a) Usuario(a)")]
        /// Campo de Requerimento para colocar a senha do(a) Usuario(a)
        public string Senha
        /// Declaracao do Atributo Senha do(a) Usuario(a)
        {
            get;
            set;
        }
        [Required(ErrorMessage = "Por favor, infome o Codigo do(a) Usuario(a)")]
        /// Campo de Requerimento para colocar o Codigo do(a) Usuario(a)
        public int CodigoUsuario
        /// Declaracao do Atributo Codigo do(a) Usuario(a)
        {
            get;
            set;
        }

    }
}
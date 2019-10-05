using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Projeto.Apresentacao.Models
{
    public class FaleConoscoEdicaoViewModel
    {

        [Required(ErrorMessage = "Por favor, informe o seu nome!")]
        /// Campo de Requerimento Para Informar o Nome do(a) Usuario(a)
        /// Que vai fazer o Fale Conosco
        public string Nome
        /// Atributo Nome do Fale Conosco
        {
            get;
            set;
        }
        [Required(ErrorMessage = "Por favor, informe o seu e - mail!")]
        /// Campo de Requerimento Para Informar o E - mail do(a) Usuario(a)
        /// Do Fale Conosco
        public string Email
        /// Atributo E - mail do(a) Usuario(a) do Fale Conosco
        {
            get;
            set;
        }
        public string Telefone
        /// Atributo Telefone do(a) Usuario(a) do Fale Conosco
        {
            get;
            set;
        }
        [MinLength(3, ErrorMessage = "Por favor, informe no minimo {1} caracater.")]
        /// Requerimento Minimo de Caracter da Descricao do Fale Conosco
        [MaxLength(50, ErrorMessage = "Por favor, informe no maximo {50} caracateres.")]
        /// Requerimento Maximo de caracter do fale conosco
        [Required(ErrorMessage = "Por favor, informe a Descricao do fale conosco.")]
        /// Requerimento da Descricao do Fale Conosco
        public string Descricao
        /// Atributo da Descricao do Fale Conosco    
        {
            get;
            set;
        }

    }
}
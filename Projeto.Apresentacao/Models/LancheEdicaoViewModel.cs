using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Projeto.Apresentacao.Models
{
    public class LancheEdicaoViewModel
    {

        [Required(ErrorMessage = "Por favor, Informe o Codigo do Lanche")]
        /// Campo de Requerimento para colocar o Codigo do Lanche
        public int CodigoLanche
        /// Atributo Codigo do Lanche
        {
            get;
            set;
        }

        [Required(ErrorMessage = "Por favor, Informe o codigo do tipo do lanche")]
        /// Campo de Requerimento Codigo do Tipo do Lanche
        public int CodigoTipoLanche
        /// Atributo Codigo do Tipo do Lanche
        {
            get;
            set;
        }

        [MinLength(3, ErrorMessage = "Por favor, informe no minimo {1} caracater.")]
        /// Campo do Requerimento Minimo Nome do Lanche
        [MaxLength(50, ErrorMessage = "Por favor, informe no maximo {50} caracteres.")]
        /// Campo Para o Requerimento Maximo de Caracter Nome do Lanche
        [Required(ErrorMessage = "Por favor, Informe o nome do lanche")]
        /// Campo de Requerimento Nome do Lanche
        public string Nome
        /// Atributo Nome do Lanche
        {
            get;
            set;
        }

        [Required(ErrorMessage = "Por favor, informe o Preco do Lanche")]
        /// Campo de Requerimento Preco do Lanche
        public double Preco
        /// Atributo Preco do Lanche
        {
            get;
            set;
        }

    }
}
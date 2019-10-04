using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Projeto.Apresentacao.Models
{
    public class DeliveryEdicaoViewModel
    {

        [Required(ErrorMessage = "Por favor, informe o Codigo do delivery")]
        /// Campo de Requerimento Para o Codigo do Delivery
        public int Codigo
        /// Atributo Codigo do Delivery
        {
            get;
            set;
        }
        [MinLength(3, ErrorMessage = "Por favor, informe no minimo {1} caracater.")]
        /// Requerimento Para o Tamanho Minimo do Delivery
        [MaxLength(50, ErrorMessage = "Por favor, informe no maximo {50} caracateres.")]
        /// Requerimento Para o Tamanho Maximo do Delivery
        [Required(ErrorMessage = "Por favor, informe o Delivery")]
        /// Requerimento Para o Nome do(a) Usuario(a) que vai fazer o Delivery
        public string Nome
        /// Atributo Nome do(a) Usuario(a) que vai fazer o Delivery
        {
            get;
            set;
        }
        [Required(ErrorMessage = "Por favor, informe o seu e - mail")]
        /// Requerimento E - mail do(a) Usuario(a) que vai fazer o Delivery
        public string Email
        /// Atributo E - mail do(a) Usuario(a) que vai fazer o Delivery
        {
            get;
            set;
        }
        public string Telefone
        /// Atributo Telefone do(a) Usuario(a) que vai fazer o Delivery
        {
            get;
            set;
        }
        [MinLength(3, ErrorMessage = "Por favor, informe no minimo {1} caracater.")]
        /// Requerimento Minimo para o tamanho do caracter do Delivery
        [MaxLength(50, ErrorMessage = "Por favor, informe no maximo {50} caracateres.")]
        /// Requerimento Para o Tamanho Maximo de Caracter Para o Delivery
        [Required(ErrorMessage = "Por favor, informe a Descricao do delivery")]
        /// Requerimento Para o Delivery
        public string Descricao
        /// Atributo Descricao Para o Delivery
        {
            get;
            set;
        }

    }
}
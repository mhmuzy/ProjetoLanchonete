using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Projeto.Apresentacao.Models
{
    public class ReservaEdicaoViewModel
    {

        public int Codigo
        /// Atributo Codigo da Reserva
        {
            get;
            set;
        }
        [Required(ErrorMessage = "Por favor, informe o seu nome!")]
        /// Campo de Requerimento Para Informar o Nome do(a) Usuario(a)
        /// Para Informar a Reserva
        public string Nome
        /// Atributo Nome do(a) Usuario(a) que informou a Reserva
        {
            get;
            set;
        }
        [Required(ErrorMessage = "Por favor, informe o seu e - mail!")]
        /// Campo de Requerimento E - mail do(a) Usuario(a) que agendou a 
        /// Reserva
        public string Email
        /// Atributo E - mail do(a) Usuario(a) que agendou a Reserva
        {
            get;
            set;
        }
        public string Telefone
        /// Atributo Telefone do(a) Usuario(a) que agendou a Reserva
        {
            get;
            set;
        }
        [MinLength(3, ErrorMessage = "Por favor, informe no monimo {1} caracter.")]
        /// Requerimento Minimo para o caracter
        [MaxLength(50, ErrorMessage = "Por favor, informe no maximo {50} caracteres.")]
        /// Requerimento Maximo Para o Caracter
        [Required(ErrorMessage = "Por favor, informe a Descricao da sua reserva")]
        /// Requerimento Para Colocar a Descricao da Reserva
        public string Descricao
        /// Atributo Descricao da Reserva
        {
            get;
            set;
        }

    }
}
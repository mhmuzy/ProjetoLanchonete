using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Projeto.Apresentacao.Models
{
    public class ReservaCadastroViewModel
    {

        public string Nome
        /// Atributo Nome do(a) Uusario(a) que agendou 
        /// A Reserva 
        {
            get;
            set;
        }
        public string Email
        /// Atributo E - mail do(a) Usuario(a) que agendou
        /// a Reserva
        {
            get;
            set;
        }
        public string Telefone
        /// Atributo Telefone do(a) Usuario(a) que agendou a 
        /// Reserva
        {
            get;
            set;
        }
        public string Descricao
        /// Atributo Descricao da Reserva
        {
            get;
            set;
        }
        public string Cpf
        /// Atributo Telefone do(a) Usuario(a) que agendou a 
        /// Reserva
        {
            get;
            set;
        }
        public string Endereco
        /// Atributo Descricao da Reserva
        {
            get;
            set;
        }
    }
}
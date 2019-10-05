using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projeto.Apresentacao.Models
{
    public class ReservaConsultaViewModel
    {

        public int Codigo
        /// Atributo Codigo da Reserva
        {
            get;
            set;
        }
        public string Nome
        /// Atributo Nome do(a) Uusario(a) que fez a 
        /// Reserva
        {
            get;
            set;
        }
        public string Email
        /// Atributo E - mail do(a) Usuario(a) que fez 
        /// A reserva 
        {
            get;
            set;
        }
        public string Telefone
        /// Atributo Telefone do(a) Usuario(a) que fez 
        /// A Reserva 
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

    }
}
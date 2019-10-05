using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projeto.Apresentacao.Models
{
    public class ReservaExcluirViewModel
    {

        public int Codigo
        /// Declaracao do Atributo Codigo da
        /// Reserva
        {
            get;
            set;
        }
        public string Nome
        /// Declaracao do Atributo Nome da Reserva
        {
            get;
            set;
        }
        public string Email
        /// Declaracao do Atributo E - mail do(a)
        /// Usuario(a) que agendou a Reserva
        {
            get;
            set;
        }
        public string Telefone
        /// Declaracao do Atributo Telefone do(a) Usuario(a)
        /// Que agendou a Reserva
        {
            get;
            set;
        }
        public string Descricao
        /// Declaracao do Atributo Descricao da Reserva
        {
            get;
            set;
        }

    }
}
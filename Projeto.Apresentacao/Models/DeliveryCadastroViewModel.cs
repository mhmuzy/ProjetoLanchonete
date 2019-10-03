using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Projeto.Apresentacao.Models
{
    public class DeliveryCadastroViewModel
    {

        public int Codigo
        /// Atributo Codigo do Delivery que nao e Visto pelo(a)
        /// Usuario(a)
        {
            get;
            set;
        }
        public string Nome
        /// Atributo Nome do(a) Usuario(a) que vai fazer o Delivery
        {
            get;
            set;
        }
        public string Email
        /// Atributo E - mail do(a) Usuario(a) que vai fazer o 
        /// Delivery
        {
            get;
            set;
        }
        public string Telefone
        /// Atributo Telefone do(a) Usuario(a) que vai fazer o 
        /// Delivery
        {
            get;
            set;
        }
        public string Descricao
        /// Atributo Descricao do Delivery
        {
            get;
            set;
        }

    }
}
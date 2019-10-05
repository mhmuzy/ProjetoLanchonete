using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Projeto.Apresentacao.Models
{
    public class DeliveryExcluirViewModel
    {

        public int Codigo
        /// Atributo Codigo do Delivery
        {
            get;
            set;
        }
        public string Nome
        /// Atributo Nome do Delivery
        {
            get;
            set;
        }
        public string Email
        /// Atributo E - mail do Delivery
        {
            get;
            set;
        }
        public string Telefone
        /// Atributo Telefone do Delivery
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
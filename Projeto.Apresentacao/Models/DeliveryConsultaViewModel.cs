﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projeto.Apresentacao.Models
{
    public class DeliveryConsultaViewModel
    {

        public int Codigo
        /// Atributo Codigo do Delivery
        {
            get;
            set;
        }
        public string Nome
        /// Atributo Nome do(a) Usuario(a) que vai fazer
        /// O Delivery
        {
            get;
            set;
        }
        public string Email
        /// Atributo E - mail do(a) Usuario(a) que vai fazer
        /// O Delivery
        {
            get;
            set;
        }
        public string Telefone
        /// Atributo Telefone do(a) Usuario(a) que vai fazer 
        /// O Delivery
        {
            get;
            set;
        }
        public string Descricao
        /// Atributo Descricao do(a) Usuario(a) que vai fazer 
        /// O Delivery
        {
            get;
            set;
        }

    }
}
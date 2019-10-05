using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projeto.Apresentacao.Models
{
    public class FaleConoscoConsultaViewModel
    {

        public string Nome
        /// Atributo Nome do Fale Conosco
        {
            get;
            set;
        }
        public string Email
        /// Atributo E - mail do Fale Conosco
        {
            get;
            set;
        }
        public string Telefone
        /// Atributo Telefone do Fale Conosco
        {
            get;
            set;
        }
        public string Descricao
        /// Atributo Descricao do Fale Conosco
        {
            get;
            set;
        }

    }
}
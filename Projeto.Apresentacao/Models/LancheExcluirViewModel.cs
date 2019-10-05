using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Projeto.Entidades;

namespace Projeto.Apresentacao.Models
{
    public class LancheExcluirViewModel
    {

        public int CodigoLanche
        /// Atributo Codigo do Lanche
        {
            get;
            set;
        }
        public int CodigoTipoLanche
        /// Atributo Codigo do Tipo do Lanche
        {
            get;
            set;
        }
        public string Nome
        /// Atributo Nome do Lanche
        {
            get;
            set;
        }
        public string Preco
        /// Atributo Preco do Lanche
        {
            get;
            set;
        }

    }
}
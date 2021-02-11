using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Projeto.Apresentacao.Models
{
    public class LancheCadastroViewModel
    {

        public int CodigoTipoLanche
        /// Atributo Codigo do tipo do Lanche
        {
            get;
            set;
        }

        public string Nome
        /// Atributo do Nome do Lanche
        {
            get;
            set;
        }

        public double Preco
        /// Atributo do Preco do Lanche
        {
            get;
            set;
        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Projeto.Entidades;

namespace Projeto.Apresentacao.Models
{
    public class LancheConsultaViewModel
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
        public double Preco
        /// Atributo Preco do Lanche
        {
            get;
            set;
        }

        public string Descricao
        /// Declaracao do Atributo Preco do Lanche
        {
            get;
            set;
        }
        public int Estoque
        /// Declaracao do Atributo Preco do Lanche
        {
            get;
            set;
        }
        public string Status
        /// Declaracao do Atributo Status do Lanche que define se ele
        /// Foi excluido ou nao da aplicacao
        {
            get;
            set;
        }
    }
}
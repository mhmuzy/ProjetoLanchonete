using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Projeto.Entidades
{
    public class Lanche
    {

        public int CodigoLanche
        /// Declaracao do Atributo Codigo do 
        /// Lanche que nao e visto pelo(a) usuario(a) 
        {
            get;
            set;
        }
        public int CodigoTipoLanche
        /// Declaracao do Atributo Codigo tipo de Lanche
        /// Que define salgado, doce e sobremesa
        {
            get;
            set;
        }
        public string Nome
        /// Declaracao Nome do Lanche
        {
            get;
            set;
        }
        public string Preco
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
        public Lanche()
        {
            /// Construtor Padrao Lanche
        }
        public Lanche(
                        /// Construtor com Atributos e Parametros
                        int codigoLanche
                        /// Parametro Codigo do Lanche que nao  e Visto pelo(a)
                        /// Usuario(a)
                        , int codigoTipoLanche
                        /// Parametro Codigo do tipo do Lanche que define se e:
                        /// Sobremesa, doce ou salgado
                        , string nome
                        /// Parametro Nome do Lanche
                        , string preco
                        /// Parametro Preco do Lanche
                        , string status
                        /// Parametro Status do Lanche que define se o lanche foi excluido
                        /// Ou nao da aplicacao
                        )
        {
            this.CodigoLanche = codigoLanche;
            /// Atributo Codigo do Lanche que nao e visto pelo(a) Usuario Recebe o Parametro
            /// Codigo do Lanche que nao e visto pelo(a) Usuario(a)
            this.CodigoTipoLanche = codigoTipoLanche;
            /// Atributo Codigo Tipo de Lanche que define se e sobremesa, salgado ou doce 
            /// Recebe o Parametro Codigo Tipo de Lanche que define se e sobremesa, salgado
            /// Ou Doce
            this.Nome = nome;
            /// Atributo Nome do Lanche recebe o Parametro Nome do Lanche
            this.Preco = preco;
            /// Atributo Preco do Lanche Recebe o Parametro Preco do Lanche
            this.Status = status;
            /// Atributo Status do Lanche que define se o Lanche foi excluido ou nao da aplicacao
            /// Recebe o Parametro Status do Lanche que define se o Lanche foi excluido ou nao da 
            /// Aplicacao
        }
        public override string ToString()
        /// Metodo Override
        {
            return $"Codigo do Lanche: " + CodigoLanche + ", Tipo de Lanche: " + CodigoTipoLanche
                   + $", Nome: " + Nome + ", Preço: " + Preco + ", Senha: " + Status;
        }

    }
}

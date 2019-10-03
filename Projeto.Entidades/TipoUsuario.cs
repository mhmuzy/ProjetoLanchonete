using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Projeto.Entidades
{
    public class TipoUsuario
    {

        public int Codigo
        /// Declaracao do Atributo Codigo do Tipo 
        /// De Usuario
        {
            get;
            set;
        }
        public string Nome
        /// Atributo Nome do Tipo de Usuario
        {
            get;
            set;
        }
        public TipoUsuario()
        {
            /// Metodo Construtor Padrao
        }
        public TipoUsuario(
                            /// Metodo Construtor Com atributos e Parametros
                            int codigo,
                            /// Parametro Codigo do Tipo de 
                            /// Uusario
                            string nome
                            /// Parametro Nome do tipo de Usuario
                            )
        {
            this.Codigo = codigo;
            /// Codigo do tipo de Usuario vai receber o Parametro 
            /// Codigo do tipo de usuario
            this.Nome = nome;
            /// Atributo Nome do Tipo de Usuarioi Vai receber o
            /// Parametro Nome do tipo de usuario
        }
        public override string ToString()
        {
            /// Metodo Override
            return $"Codigo: " + Codigo + ", Nome: " + Nome;
        }

    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Projeto.Entidades
{
    public class Usuario
    {

        public int Codigo
        /// Declaracao do Atributo Codigo
        /// do(a) Usuario(a) que nao e vista
        /// Pelo(a) Proprio(a) Usuario(a)
        {
            get;
            set;
        }
        public string Nome
        /// Declaracao do Atributo Nome do(a)
        /// Usuario(a)
        {
            get;
            set;
        }
        public string Senha
        /// Declaracao do Atributo Senha do(a)
        /// Usuario(a)
        {
            get;
            set;
        }
        public int CodigoUsuario
        /// Declaracao do Atributo Codigo do Tipo 
        /// De Usuario(a) que define se e administrador(a)
        /// Secretario(a) ou Motoboy
        {
            get;
            set;
        }
        public string Status
        /// Declaracao do Atributo Status do(a) Usuario(a)
        /// que define se o(a) usuario(a) foi ou nao desligado(a)
        /// da aplicacao
        {
            get;
            set;
        }
        public Usuario()
        {
            /// Metodo Construtor Padrao
        }
        public Usuario(
                        /// Metodo Construtor que tem Atributos e Parametros
                        int codigo,
                        /// Parametro Codigo do(a) Uusario(a)
                        /// Que nao e visto pelo(a) proprio(a)
                        /// Usuario(a)
                        string nome,
                        /// Parametro Nome do(a) Usuario(a)
                        string senha,
                        /// Parametro Senha do(a) Usuario(a)
                        int codigoUsuario,
                        /// Parametro Codigo do(a) Usuario(a)
                        /// que define se o(a) Usuario(a) e 
                        /// Administrador(a) secretario(a) ou
                        /// Motoboy
                        string status
                        /// Parametro Status do(a) Uusario(a) que 
                        /// define se o(a) Usuario(a) foi desligado(a)
                        /// ou nao
                        )
        {
            this.Codigo = codigo;
            /// Atributo Codigo do(a) Usuario(a) que nao e visto pelo(a) 
            /// proprio(a) usuario(a) Recebe o Parametro Codigo do(a)
            /// Uusario(a) que nao e visto pelo(a) proprio(a) usuario(a)
            this.Nome = nome;
            /// Atributo Nome do(a) Usuario(a) recebe o Parametro Nome do(a)
            /// Usuario(a)
            this.Senha = senha;
            /// Atributo Senha do(a) Usuario(a) recebe o Parametro Senha do(a)
            /// Usuario(a)
            this.CodigoUsuario = codigoUsuario;
            /// Atributo Codigo do(a) Usuario(a) que define se o(a) Usuario(a)
            /// e administrador(a), secretario(a) ou motoboy
            this.Status = status;
            /// Atributo status do(a) Uusario(a) que definse se o(a) Usuario(a)
            /// foi desligado(a) ou nao recebe o parametro Status do(a) Usuario(a)
            /// que defgine se o(a) usuario(a) foi desligado(a) ou nao
        }
        public override string ToString()
        /// Metodo Override
        {
            return $"Codigo: " + Codigo + ", Nome: " + Nome + ", Senha: " + Senha + "Codigo Usuario: " + CodigoUsuario + ", Status: " + Status;
        }

    }
}

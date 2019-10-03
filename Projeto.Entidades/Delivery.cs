using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Projeto.Entidades
{
    public class Delivery
    {

        public int Codigo
        /// Declaracao do Atributo Codigo do 
        /// Delivery que nao e mostrado para o(a) Usuario,
        /// Tanto interno quanto externo
        {
            get;
            set;
        }
        public string Nome
        /// Declaracao do Atributo Nome do(a) Usuario(a) Externo que
        /// Vai fazer o Delivery
        {
            get;
            set;
        }
        public string Email
        /// Declaracao do Atributo E - mail do(a) Usuario(a) Externo que
        /// Vai Fazer o Delivery
        {
            get;
            set;
        }
        public string Telefone
        /// Atributo Telefone do(a) Usuario(a) Externo que 
        /// vai fazer o Delivery
        {
            get;
            set;
        }
        public string Descricao
        /// Atributo Descricao do que o(a) Usuario(a) externo vai 
        /// Falar no Delivery
        {
            get;
            set;
        }
        public string Status
        /// Atributo que define se o status do Delivery foi encerrado
        /// Ou nao
        {
            get;
            set;
        }

        public Delivery()
        {
            /// Construtor Padrao
        }

        public Delivery(
                            /// Construtor com atributos e parametros
                            int codigo,
                            /// Parametro Codigo Do Delivery
                            string nome,
                            /// Parametro Nome do Delivery
                            string email,
                            /// Parametro E - mail do Delivery
                            string telefone,
                            /// Parametro Telefone do Delivery
                            string descricao,
                            /// Parametro Descricao do Delivery
                            string status
                        /// Parametro Status do Delivery
                        )
        {
            Codigo = codigo;
            /// Atributo Codigo do Delivery recebe o Parametro Codigo
            /// Do Delivery
            Nome = nome;
            /// Atributo Nome da Pessoa que vai fazer o Delivery recebe 
            /// o Parametro Nome da Pessoa que vai fazer o Delivery
            Email = email;
            /// Atributo E - mail da Pessoa que vai fazer o Delivery
            /// Recebe o parametro E - mail da Pessoa que vai fazer o
            /// Delivery
            Telefone = telefone;
            /// Atributo Telefone da Pessoa que vai fazer o Delivery recebe
            /// O parametro Telefone da Pessoa que vai fazer o Delivery
            Descricao = descricao;
            /// Atributo Descricao do Delivery recebe o Parametro Descricao
            /// do Delivery
            Status = status;
            /// Atributo Status do Delivery recebe o Parametro Status do 
            /// Delivery
        }

        public override string ToString()
        /// Metodo Override
        {
            return $"Codigo: {Codigo}, Nome: {Nome}, E - mail: {Email}, Telefone: {Telefone}, Descricao: {Descricao}, Status: {Status}";
        }

    }
}

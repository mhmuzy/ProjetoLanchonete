using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Projeto.Entidades
{
    public class FaleConosco
    {

        public int Codigo
        /// Declaracao do Atributo Codigo do 
        /// Fale Conosco que nao e mostrado para o(a)
        /// Usuario(a)
        {
            get;
            set;
        }
        public string Nome
        /// Declaracao do Atributo Nome do(a) Usuario(a)
        /// que vai fazer o Fale Conosco
        {
            get;
            set;
        }
        public string Email
        /// Atributo E - mail da Pessoa que vai fazer o 
        /// Fale Conosco
        {
            get;
            set;
        }
        public string Telefone
        /// Atributo Telefone da Pessoa que vai Fazer o
        /// Fale Conosco
        {
            get;
            set;
        }
        public string Descricao
        /// Declaracao do Atributo Descricao do Fale 
        /// Conosco
        {
            get;
            set;
        }
        public string Status
        /// Declaracao do Atributo Status do Fale Conosco para 
        /// Saber se o Fale Conosco foi encerrado ou nao
        {
            get;
            set;
        }

        public FaleConosco()
        {
            /// Metodo Construtor Padrao do Fale Conosco
        }

        public FaleConosco(
                            /// Construtor do Fale Conosco com Atributos e Parametros
                            int codigo,
                            /// Parametro Codigo do Fale Conosco
                            string nome,
                            /// Parametro Nome do Fale Conosco
                            string email,
                            /// Parametro E - mail do Fale Conosco
                            string telefone,
                            /// Parametro Telefone do Fale Conosco
                            string descricao,
                            /// Parametro Descricao do Fale Conosco
                            string status
                            /// Parametro Status do Fale Conosco
                            )
        {
            Codigo = codigo;
            /// Atributo Codigo do Fale Conosco vai receber o Parametro
            /// Do Fale Conosco
            Nome = nome;
            /// Atributo Nome do(a) Usuario(a) que vai fazer o Fale 
            /// Conosco recebe o Parametro Nome do(a) Usuario(a) que
            /// Vai fazer o Fale Conosco
            Email = email;
            /// Atributo E - mail do(a) Usuario(a) que vai fazer o Fale
            /// Consoco recebe o Parametro do E - mail do(a) Usuario(a)
            /// Que vai fazer o Fale Conosco
            Telefone = telefone;
            /// Atributo Telefone do(a) Usuario(a) que vai fazer o Fale
            /// Conosco recebe o Parametro Telefone do(a) Usuario(a) que
            /// Vai fazer o Fale Conosco
            Descricao = descricao;
            /// Atributo Descricao do Fale Conosco vai receber o Parametro
            /// Fale Conosco
            Status = status;
            /// Atributo Status do Fale Conosco Para saber se foi encerrado ou
            /// Nao recebe o Parametro Status do Fale Conosco para saber se foi 
            /// encerrado ou nao
        }

        public override string ToString()
        /// Metodo Overide
        {
            return $"Codigo: {Codigo}, Nome: {Nome}, E - mail: {Email}, Telefone: {Telefone}, Descricao: {Descricao}, Status: {Status}";
        }

    }
}

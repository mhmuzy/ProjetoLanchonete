using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Projeto.Entidades
{
    public class Reserva
    {

        public int Codigo
        /// Declaracao do Atributo Codigo 
        /// Da Reserva que nao e mostrada 
        /// Para o(a) Usuario(a)
        {
            get;
            set;
        }
        public string Nome
        /// Declaracao do Atributo Nome do(a) 
        /// Usuario(a) que agendou a reserva
        {
            get;
            set;
        }
        public string Email
        /// Declaracao do Atributo E - mail do(a)
        /// Usuario(a) que agendou a reserva
        {
            get;
            set;
        }
        public string Telefone
        /// Declaracao do Atributo Telefone do(a)
        /// Usuario(a) que agendou a Reserva
        {
            get;
            set;
        }
        public string Descricao
        /// Declaracao do Atributo Descricao da Reserva
        {
            get;
            set;
        }

        public Reserva()
        {
            /// Metodo Construtor Padrao
        }

        public Reserva(
                            /// Metodo Construtor Com Parametros e Atributos
                            int codigo,
                            /// Parametro Codigo da Reserva que nao e 
                            /// Vista Pelo(a) Usuario(a)
                            string nome,
                            /// Parametro Nome do(a) Usuario(a) que Fez 
                            /// a Reserva
                            string email,
                            /// Parametro e - mail do(a) Usuario(a) que Fez 
                            /// a Reserva 
                            string telefone,
                            /// Parametro Telefone do(a) Usuario(a) que fez 
                            /// a Reserva
                            string descricao
                            /// Parametro Descricao da Reserva
                            )
        {
            Codigo = codigo;
            /// Atributo Codigo da Reserva que nao e vista pelo(a) Usuario(a) recebe 
            /// O Parametro Codigo da Reserva que nao e vista pelo(a) Usuario(a)
            Nome = nome;
            /// Atributo Nome do(a) Usuario(a) que fez a Reserva Recebe o Parametro
            /// Nome do(a) Usuario(a) que fez a Reserva
            Email = email;
            /// Atributo E - mail do(a) Usuario(a) que fez a Reserva Recebe o Parametro
            /// E - mail do(a) Usuario(a) que fez a Reserva
            Telefone = telefone;
            /// Atributo Telefone do(a) Usuario(a) que fez a Reserva Recebe o Parametro
            /// Telefone do(a) Usuario(a) que fez a Reserva
            Descricao = descricao;
            /// Atributo Descricao da Reserva recebe o Parametro Descricao da Reserva
        }

        public override string ToString()
        /// Metodo Override
        {
            return $"Codigo: {Codigo}, Nome: {Nome}, E - mail: {Email}, Telefone: {Telefone}, Descricao: {Descricao}";
        }

    }
}

﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projeto.Apresentacao.Models
{
    public class SocioConsultaViewModel
    {
        public int Matricula { get; set; }
        public string Nome { get; set; }
        public string Telefone { get; set; }
        public string Celular { get; set; }
        public string Cpf { get; set; }
        public  string Email { get; set; }
        public string Endereco { get; set; }
    }
}
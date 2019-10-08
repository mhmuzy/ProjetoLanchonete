using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Projeto.DAL;
using Projeto.Apresentacao.Models;
using Projeto.Entidades;

namespace Projeto.Apresentacao.Controllers
{
    public class UsuarioController : Controller
    {
        // GET: Usuario
        public ActionResult Cadastro()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Cadastro(UsuarioCadastroViewModel model)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    Usuario u = new Usuario();
                    u.CodigoUsuario = model.CodigoUsuario;
                    u.Nome = model.Nome;
                    u.Senha = model.Senha;

                    UsuarioRepositorio rep = new UsuarioRepositorio();
                    rep.Insert(u);

                    ViewBag.Message = $"Nome do(a) Usuaurio(a) {u.Nome}, cadastrado(a) com sucesso!";
                    ModelState.Clear();
                }
                catch (Exception e)
                {
                    ViewBag.Message = "Erro: " + e.Message;
                }
            }
            UsuarioCadastroViewModel viewModel = new UsuarioCadastroViewModel();
            return View(viewModel);
        }

        public ActionResult CadastroSecretaria()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CadastroSecretaria(UsuarioCadastroViewModel model)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    Usuario u = new Usuario();
                    u.CodigoUsuario = model.CodigoUsuario;
                    u.Nome = model.Nome;
                    u.Senha = model.Senha;

                    UsuarioRepositorio rep = new UsuarioRepositorio();
                    rep.Insert(u);

                    ViewBag.Message = $"Nome do(a) Usuaurio(a) {u.Nome}, cadastrado(a) com sucesso!";
                    ModelState.Clear();
                }
                catch (Exception e)
                {
                    ViewBag.Message = "Erro: " + e.Message;
                }
            }
            UsuarioCadastroViewModel viewModel = new UsuarioCadastroViewModel();
            return View(viewModel);
        }

        // GET: Usuario
        public ActionResult ConsultaAlterarSenha()
        {
            List<UsuarioConsultaViewModel> lista = new List<UsuarioConsultaViewModel>();

            try
            {
                UsuarioRepositorio rep = new UsuarioRepositorio();
                foreach (Usuario u in rep.FindAll())
                {
                    UsuarioConsultaViewModel model = new UsuarioConsultaViewModel();
                    model.Nome = u.Nome;
                    model.Senha = u.Senha;
                    lista.Add(model);
                }
            }
            catch (Exception e)
            {
                ViewBag.Message = "Erro: " + e.Message;
            }

            return View(lista);
        }
        public ActionResult ConsultaUsuario()
        {
            List<UsuarioConsultaViewModel> lista = new List<UsuarioConsultaViewModel>();

            try
            {
                UsuarioRepositorio rep = new UsuarioRepositorio();
                foreach (Usuario u in rep.FindAll())
                {
                    UsuarioConsultaViewModel model = new UsuarioConsultaViewModel();
                    model.Nome = u.Nome;
                    model.Senha = u.Senha;
                    lista.Add(model);
                }
            }
            catch (Exception e)
            {
                ViewBag.Message = "Erro: " + e.Message;
            }

            return View(lista);
        }
        public ActionResult Consulta()
        {
            List<UsuarioConsultaViewModel> lista = new List<UsuarioConsultaViewModel>();

            try
            {
                UsuarioRepositorio rep = new UsuarioRepositorio();
                foreach (Usuario u in rep.FindAll())
                {
                    UsuarioConsultaViewModel model = new UsuarioConsultaViewModel();
                    model.Codigo = u.Codigo;
                    model.Nome = u.Nome;
                    model.Senha = u.Senha;
                    lista.Add(model);
                }
            }
            catch (Exception e)
            {
                ViewBag.Message = "Erro: " + e.Message;
            }

            return View(lista);
        }

        public ActionResult ConsultaMotoboy()
        {
            List<FaleConoscoConsultaViewModel> lista = new List<FaleConoscoConsultaViewModel>();

            try
            {
                FaleConoscoRepositorio rep = new FaleConoscoRepositorio();
                foreach (FaleConosco u in rep.FindAll())
                {
                    FaleConoscoConsultaViewModel model = new FaleConoscoConsultaViewModel();
                    model.Nome = u.Nome;
                    model.Telefone = u.Telefone;
                    model.Descricao = u.Descricao;
                    lista.Add(model);
                }
            }
            catch (Exception e)
            {
                ViewBag.Message = "Erro: " + e.Message;
            }

            return View(lista);
        }

        public ActionResult Edicao(int codigo)
        {
            UsuarioEdicaoViewModel model = new UsuarioEdicaoViewModel();

            try
            {
                UsuarioRepositorio rep = new UsuarioRepositorio();
                Usuario u = rep.FindById(codigo);
            }
            catch (Exception e)
            {

                ViewBag.Message = "Erro: " + e.Message;
            }
            return View(model);
        }
        [HttpPost]
        public ActionResult Edicao(UsuarioEdicaoViewModel model)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    Usuario u = new Usuario();

                    u.CodigoUsuario = model.CodigoUsuario;
                    u.Codigo = model.Codigo;
                    u.Nome = model.Nome;

                    UsuarioRepositorio rep = new UsuarioRepositorio();
                    rep.Update(u);

                    ViewBag.Message = $"Usuario {u.Nome}, atualizado com sucesso!";
                }
            }
            catch (Exception e)
            {

                ViewBag.Message = "Erro: " + e.Message;
            }
            return View();
        }

        public ActionResult Excluir(int codigo)
        {
            UsuarioExcluirViewModel model = new UsuarioExcluirViewModel();
            try
            {
                UsuarioRepositorio rep = new UsuarioRepositorio();
                Usuario u = rep.FindById(codigo);
            }
            catch (Exception e)
            {

                ViewBag.Message = "Erro: " + e.Message;
            }
            return View(model);
        }

        [HttpPost]
        public ActionResult Excluir(UsuarioExcluirViewModel model)
        {
            try
            {
                if (ModelState.IsValid)
                {

                    Usuario u = new Usuario();
                    u.CodigoUsuario = model.CodigoUsuario;
                    UsuarioRepositorio rep = new UsuarioRepositorio();
                    rep.Delete(u);

                    ViewBag.Message = $"Usuario(a) {u.Nome}, excluido(a) com sucesso";
                }
            }
            catch (Exception e)
            {
                ViewBag.Message = "Erro: " + e.Message;
            }
            return View();
        }

        public ActionResult TrocarSenha(int Codigo)
        {
            UsuarioTrocarSenhaViewModel model = new UsuarioTrocarSenhaViewModel();
            try
            {
                UsuarioRepositorio rep = new UsuarioRepositorio();
                Usuario U = rep.FindById(Codigo);

                model.Codigo = U.Codigo;
                model.Senha = U.Senha;
            }
            catch (Exception e)
            {

                ViewBag.Message = "Erro: " + e.Message;
            }
            return View(model);
        }

        [HttpPost]
        public ActionResult TrocarSenha(UsuarioTrocarSenhaViewModel model)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    Usuario u = new Usuario();
                    u.Codigo = model.Codigo;
                    u.Senha = model.Senha;
                    UsuarioRepositorio rep = new UsuarioRepositorio();
                    rep.TrocarSenha(u);

                    ViewBag.Message = $"Senha do(a) Usuario(a) {u.Nome}, alterado(a) com sucesso!";
                }
            }
            catch (Exception e)
            {

                ViewBag.Message = "Erro:" + e.Message;
            }
            return View();
        }

        public ActionResult Administrator()
        {
            return View();
        }

        public ActionResult Secretaria()
        {
            return View();
        }

        public ActionResult Motoboy()
        {
            return View();
        }
    }
}
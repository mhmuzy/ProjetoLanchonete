using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Projeto.Apresentacao.Models;
using Projeto.Entidades;
using Projeto.DAL;

namespace Projeto.Apresentacao.Controllers
{
    public class LancheController : Controller
    {
        public ActionResult Cadastro()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Cadastro(LancheCadastroViewModel model)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    Lanche l = new Lanche();

                    //l.CodigoTipoLanche = model.CodigoTipoLanche;
                    l.Nome = model.Nome;
                    l.Preco = model.Preco;

                    LancheRepositorio rep = new LancheRepositorio();
                    rep.Insert(l);

                    ViewBag.Message = $"Nome do Lanche {l.Nome}, Cadastrado com sucesso!";
                    ModelState.Clear();
                }
                catch (Exception e)
                {
                    ViewBag.Message = "Ocorreu um erro: " + e.Message;
                }
            }
            LancheCadastroViewModel viewModel = new LancheCadastroViewModel();
            return View(viewModel);
        }

        public ActionResult CadastroSecretaria()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CadastroSecretaria(LancheCadastroViewModel model)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    Lanche l = new Lanche();

                    l.CodigoTipoLanche = model.CodigoTipoLanche;
                    l.Nome = model.Nome;
                    l.Preco = model.Preco;

                    LancheRepositorio rep = new LancheRepositorio();
                    rep.Insert(l);

                    ViewBag.Message = $"Nome do Lanche {l.Nome}, Cadastrado com sucesso!";
                    ModelState.Clear();
                }
                catch (Exception e)
                {
                    ViewBag.Message = "Ocorreu um erro: " + e.Message;
                }
            }
            LancheCadastroViewModel viewModel = new LancheCadastroViewModel();
            return View(viewModel);
        }

        // GET: Lanche
        public ActionResult ConsultaAdministrador()
        {
            List<LancheConsultaViewModel> lista = new List<LancheConsultaViewModel>();

            try
            {
                LancheRepositorio rep = new LancheRepositorio();
                foreach (Lanche L in rep.FindAll())
                {
                    LancheConsultaViewModel model = new LancheConsultaViewModel();
                    model.Nome = L.Nome;
                    model.Preco = L.Preco;

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
            List<LancheConsultaViewModel> lista = new List<LancheConsultaViewModel>();

            try
            {
                LancheRepositorio rep = new LancheRepositorio();
                foreach (Lanche L in rep.FindAll())
                {
                    LancheConsultaViewModel model = new LancheConsultaViewModel();
                    model.Nome = L.Nome;
                    model.Preco = L.Preco;

                    lista.Add(model);
                }
            }
            catch (Exception e)
            {
                ViewBag.Message = "Erro: " + e.Message;
            }

            return View(lista);
        }

        public ActionResult ConsultaSecretaria()
        {
            List<LancheConsultaViewModel> lista = new List<LancheConsultaViewModel>();

            try
            {
                LancheRepositorio rep = new LancheRepositorio();
                foreach (Lanche L in rep.FindAll())
                {
                    LancheConsultaViewModel model = new LancheConsultaViewModel();
                    model.Nome = L.Nome;
                    model.Preco = L.Preco;

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
            List<LancheConsultaViewModel> lista = new List<LancheConsultaViewModel>();

            try
            {
                LancheRepositorio rep = new LancheRepositorio();
                foreach (Lanche L in rep.FindAll())
                {
                    LancheConsultaViewModel model = new LancheConsultaViewModel();
                    model.Nome = L.Nome;
                    model.Preco = L.Preco;

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
            LancheEdicaoViewModel model = new LancheEdicaoViewModel();

            try
            {
                LancheRepositorio rep = new LancheRepositorio();
                Lanche l = rep.FindById(codigo);
            }
            catch (Exception e)
            {

                ViewBag.Message = "Erro: " + e.Message;
            }
            return View(model);
        }

        [HttpPost]
        public ActionResult Edicao(LancheEdicaoViewModel model)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    Lanche l = new Lanche();

                    l.CodigoLanche = model.CodigoLanche;
                    l.CodigoTipoLanche = model.CodigoTipoLanche;
                    l.Nome = model.Nome;
                    l.Preco = model.Preco;

                    LancheRepositorio rep = new LancheRepositorio();
                    rep.Update(l);

                    ViewBag.Message = $"Lanche {l.Nome}, atualizado com sucesso!";
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
            LancheExcluirViewModel model = new LancheExcluirViewModel();
            try
            {

                LancheRepositorio rep = new LancheRepositorio();
                Lanche l = rep.FindById(codigo);
            }
            catch (Exception e)
            {
                ViewBag.Message = "Erro: " + e.Message;
            }
            return View();
        }

        [HttpPost]
        public ActionResult Excluir(LancheExcluirViewModel model)
        {
            try
            {
                if (ModelState.IsValid)
                {

                    Lanche l = new Lanche();
                    l.CodigoLanche = model.CodigoLanche;
                    LancheRepositorio rep = new LancheRepositorio();
                    rep.Delete(l);

                    ViewBag.Message = $"Lanche {l.Nome}, excluido com sucesso!";
                }
            }
            catch (Exception e)
            {
                ViewBag.Message = "Erro: " + e.Message;
            }
            return View();
        }
    }
}
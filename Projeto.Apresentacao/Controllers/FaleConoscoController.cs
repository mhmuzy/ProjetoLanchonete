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
    public class FaleConoscoController : Controller
    {
        public ActionResult Cadastro()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Cadastro(FaleConoscoCadastroViewModel model)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    FaleConosco f = new FaleConosco();

                    f.Nome = model.Nome;
                    f.Telefone = model.Telefone;
                    f.Email = model.Email;
                    f.Descricao = model.Descricao;

                    FaleConoscoRepositorio rep = new FaleConoscoRepositorio();
                    rep.Insert(f);

                    ViewBag.Message = $"Aguarde, o seu fale conosco sera respondido!";
                    ModelState.Clear();
                }
                catch (Exception e)
                {

                    ViewBag.Message = "Erro: " + e.Message;
                }
            }
            FaleConoscoCadastroViewModel viewModel = new FaleConoscoCadastroViewModel();
            return View(viewModel);
        }
        public ActionResult Consulta()
        {
            List<FaleConoscoConsultaViewModel> lista = new List<FaleConoscoConsultaViewModel>();

            try
            {
                FaleConoscoRepositorio rep = new FaleConoscoRepositorio();
                foreach (FaleConosco f in rep.FindAll())
                {
                    FaleConoscoConsultaViewModel model = new FaleConoscoConsultaViewModel();
                    model.Nome = f.Nome;
                    model.Telefone = f.Telefone;
                    model.Email = f.Email;
                    model.Descricao = f.Descricao;

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
                foreach (FaleConosco f in rep.FindAll())
                {
                    FaleConoscoConsultaViewModel model = new FaleConoscoConsultaViewModel();
                    model.Nome = f.Nome;
                    model.Telefone = f.Telefone;
                    model.Email = f.Email;
                    model.Descricao = f.Descricao;

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
            FaleConoscoEdicaoViewModel model = new FaleConoscoEdicaoViewModel();

            try
            {
                FaleConoscoRepositorio rep = new FaleConoscoRepositorio();
                FaleConosco f = rep.FindById(codigo);
            }
            catch (Exception e)
            {

                ViewBag.Message = "Erro: " + e.Message;
            }
            return View(model);
        }
        [HttpPost]
        public ActionResult Edicao(FaleConoscoEdicaoViewModel model)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    FaleConosco f = new FaleConosco();

                    f.Nome = model.Nome;
                    f.Telefone = model.Telefone;
                    f.Email = model.Email;
                    f.Descricao = model.Descricao;

                    FaleConoscoRepositorio rep = new FaleConoscoRepositorio();
                    rep.Update(f);
                    ViewBag.Message = "O Seu fale conosco foi realizado com sucesso!";
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
            FaleConoscoExcluirViewModel model = new FaleConoscoExcluirViewModel();

            try
            {
                FaleConoscoRepositorio rep = new FaleConoscoRepositorio();
                FaleConosco f = rep.FindById(codigo);
            }
            catch (Exception e)
            {

                ViewBag.Message = "Erro: " + e.Message;
            }
            return View();
        }
        [HttpPost]
        public ActionResult Excluir(FaleConoscoExcluirViewModel model)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    FaleConosco f = new FaleConosco();

                    f.Codigo = model.Codigo;

                    FaleConoscoRepositorio rep = new FaleConoscoRepositorio();
                    rep.Delete(f);

                    ViewBag.Message = "Esse Fale Conosco foi encerrado com sucesso!";
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
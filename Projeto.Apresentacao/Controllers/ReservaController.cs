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
    public class ReservaController : Controller
    {
        // GET: Reserva
        public ActionResult Cadastro()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Cadastro(ReservaCadastroViewModel model)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    Reserva r = new Reserva();
                    r.Nome = model.Nome;
                    r.Telefone = model.Telefone;
                    r.Email = model.Email;
                    r.Descricao = model.Descricao;
                    r.Cpf = model.Cpf;
                    r.Endereco = model.Endereco;
                    ReservaRepositorio rep = new ReservaRepositorio();
                    rep.Insert(r);

                    ViewBag.Message = "Sócio(a) cadastrado(a) com sucesso!";
                    ModelState.Clear();
                }
                catch (Exception e)
                {

                    ViewBag.Message = "Erro: " + e.Message;
                }
            }
            ReservaCadastroViewModel viewModel = new ReservaCadastroViewModel();
            return View(viewModel);
        }
        public ActionResult Consulta()
        {
            List<LancheConsultaViewModel> lista = new List<LancheConsultaViewModel>();

            try
            {
                LancheRepositorio rep = new LancheRepositorio();
                foreach (Lanche r in rep.FindAll())
                {
                    LancheConsultaViewModel model = new LancheConsultaViewModel();
                    model.CodigoLanche = r.CodigoLanche;
                    model.Nome = r.Nome;
                    model.Preco = r.Preco;
                    
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
                Lanche r = rep.FindById(codigo);
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
                    Lanche r = new Lanche();
                    r.CodigoLanche = model.CodigoLanche;
                    LancheRepositorio rep = new LancheRepositorio();
                    rep.Update(r);

                    ViewBag.Message = $"Reserva do(a) {r.Nome}, foi alterada com sucesso!";
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
                Lanche r = rep.FindById(codigo);
            }
            catch (Exception e)
            {

                ViewBag.Message = "Erro: " + e.Message;
            }
            return View(model);
        }
        [HttpPost]
        public ActionResult Excluir(LancheExcluirViewModel model)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    Lanche r = new Lanche();
                    r.CodigoLanche = model.CodigoLanche;
                    LancheRepositorio rep = new LancheRepositorio();
                    rep.Delete(r);

                    ViewBag.Message = "Reserva encerrada com sucesso!";
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
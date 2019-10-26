using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Projeto.DAL;
using Projeto.Entidades;
using Projeto.Apresentacao.Models;

namespace Projeto.Apresentacao.Controllers
{
    public class DeliveryController : Controller
    {
        public ActionResult Cadastro()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Cadastro(DeliveryCadastroViewModel model)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    Delivery d = new Delivery();
                    d.Codigo = model.Codigo;
                    d.Descricao = model.Descricao;
                    d.Email = model.Email;
                    d.Nome = model.Nome;
                    d.Telefone = model.Telefone;

                    DeliveryRepositorio rep = new DeliveryRepositorio();
                    rep.Insert(d);

                    ViewBag.Message = $"Aguarde que iremos fazer o seu delivery!";
                    ModelState.Clear();
                }
                catch (Exception e)
                {

                    ViewBag.Message = "Erro: " + e.Message;
                }
            }
            DeliveryCadastroViewModel viewModel = new DeliveryCadastroViewModel();
            return View(viewModel);
        }
        public ActionResult Consulta()
        {
            List<DeliveryConsultaViewModel> lista = new List<DeliveryConsultaViewModel>();

            try
            {
                DeliveryRepositorio rep = new DeliveryRepositorio();
                foreach (Delivery d in rep.FindAll())
                {
                    DeliveryConsultaViewModel model = new DeliveryConsultaViewModel();
                    model.Codigo = d.Codigo;
                    model.Nome = d.Nome;
                    model.Telefone = d.Telefone;
                    model.Email = d.Email;
                    model.Descricao = d.Descricao;

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
            List<DeliveryConsultaViewModel> lista = new List<DeliveryConsultaViewModel>();

            try
            {
                DeliveryRepositorio rep = new DeliveryRepositorio();
                foreach (Delivery d in rep.FindAll())
                {
                    DeliveryConsultaViewModel model = new DeliveryConsultaViewModel();
                    model.Codigo = d.Codigo;
                    model.Nome = d.Nome;
                    model.Telefone = d.Telefone;
                    model.Email = d.Email;
                    model.Descricao = d.Descricao;

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
            List<DeliveryConsultaViewModel> lista = new List<DeliveryConsultaViewModel>();

            try
            {
                DeliveryRepositorio rep = new DeliveryRepositorio();
                foreach (Delivery d in rep.FindAll())
                {
                    DeliveryConsultaViewModel model = new DeliveryConsultaViewModel();
                    model.Codigo = d.Codigo;
                    model.Nome = d.Nome;
                    model.Telefone = d.Telefone;
                    model.Email = d.Email;
                    model.Descricao = d.Descricao;

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
            DeliveryEdicaoViewModel model = new DeliveryEdicaoViewModel();

            try
            {
                DeliveryRepositorio rep = new DeliveryRepositorio();
                Delivery d = rep.FindById(codigo);
            }
            catch (Exception e)
            {

                ViewBag.Message = "Erro: " + e.Message;
            }
            return View(model);
        }
        [HttpPost]
        public ActionResult Edicao(DeliveryEdicaoViewModel model)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    Delivery d = new Delivery();

                    d.Codigo = model.Codigo;
                    d.Nome = model.Nome;
                    d.Telefone = model.Telefone;
                    d.Email = model.Email;
                    d.Descricao = model.Descricao;

                    DeliveryRepositorio rep = new DeliveryRepositorio();
                    rep.Update(d);

                    ViewBag.Message = $"Aguarde que a sua entrega sera realizada";
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
            DeliveryExcluirViewModel model = new DeliveryExcluirViewModel();

            try
            {
                DeliveryRepositorio rep = new DeliveryRepositorio();
                Delivery d = rep.FindById(codigo);
            }
            catch (Exception e)
            {

                ViewBag.Message = "Erro: " + e.Message;
            }
            return View(model);
        }
        [HttpPost]
        public ActionResult Excluir(DeliveryExcluirViewModel model)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    Delivery d = new Delivery();

                    d.Codigo = model.Codigo;
                    d.Nome = model.Nome;
                    d.Telefone = model.Telefone;
                    d.Email = model.Email;
                    d.Descricao = model.Descricao;

                    DeliveryRepositorio rep = new DeliveryRepositorio();
                    rep.Delete(d);

                    ViewBag.Message = $"Delivery {d.Nome}, finalizado com sucesso!";
                }
            }
            catch (Exception e)
            {

                ViewBag.Mesage = "Erro: " + e.Message;
            }
            return View();
        }
    }
}
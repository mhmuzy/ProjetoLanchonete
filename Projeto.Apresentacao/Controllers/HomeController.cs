using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Projeto.Apresentacao.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Localizacao()
        {
            return View();
        }
        public ActionResult Cardapio()
        {
            return View();
        }
        public ActionResult Delivery()
        {
            return View();
        }
        public ActionResult Reservas()
        {
            return View();
        }
        public ActionResult Contato()
        {
            return View();
        }
    }
}
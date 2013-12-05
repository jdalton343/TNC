using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TNC.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View("~/Views/Home/Home.cshtml");
        }

        public ActionResult History()
        {
            return View("~/Views/Home/History.cshtml");
        }

        public ActionResult Sustainability_Model()
        {
            return View();
        }
        public ActionResult Technology()
        {
            return View("~/Views/Home/Technology.cshtml");
        }
        public ActionResult Gallery()
        {
            return View("~/Views/Home/Gallery.cshtml");
        }
        public ActionResult Contact()
        {
            return View("~/Views/Home/Contact.cshtml");
        }
        public ActionResult Blog()
        {
            return View("~/Views/Home/Blog.cshtml");
        }
    }
}

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
            ViewBag.HeadTitle = "Home | True North Composites";
            return View("~/Views/Home/Home.cshtml");
        }

        public ActionResult History()
        {
            ViewBag.HeadTitle = "History | True North Composites";
            return View("~/Views/Home/History.cshtml");
        }

        public ActionResult Sustainability_Model()
        {
            ViewBag.HeadTitle = "Sustainability Model | True North Composites";
            return View();
        }
        public ActionResult Technology()
        {
            ViewBag.HeadTitle = "Technology | True North Composites";
            return View("~/Views/Home/Technology.cshtml");
        }
        public ActionResult Gallery()
        {
            ViewBag.HeadTitle = "Gallery | True North Composites";
            return View("~/Views/Home/Gallery.cshtml");
        }
        public ActionResult Contact()
        {
            ViewBag.HeadTitle = "Contact | True North Composites";
            return View("~/Views/Home/Contact.cshtml");
        }
        public ActionResult Blog()
        {
            ViewBag.HeadTitle = "Blog | True North Composites";
            return View("~/Views/Home/Blog.cshtml");
        }
    }
}

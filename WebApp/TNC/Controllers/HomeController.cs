using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using TNC.Models;

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
            ViewBag.HeadTitle = "Sustainability Mission | True North Composites";
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

        public ActionResult Gallery_WindTurbines()
        {
            ViewBag.HeadTitle = "Wind Turbines | True North Composites";
            return View("~/Views/Home/Gallery_WindTurbines.cshtml");
        }

        public ActionResult Gallery_Containers()
        {
            ViewBag.HeadTitle = "Containers | True North Composites";
            return View("~/Views/Home/Gallery_Containers.cshtml");
        }

        public ActionResult Gallery_SailingCats()
        {
            ViewBag.HeadTitle = "Sailing Cats | True North Composites";
            return View("~/Views/Home/Gallery_SailingCats.cshtml");
        }

        public ActionResult Gallery_PassengerFerries()
        {
            ViewBag.HeadTitle = "Passenger Ferries | True North Composites";
            return View("~/Views/Home/Gallery_PassengerFerries.cshtml");
        }

        public ActionResult Gallery_SpecialPurposeVessels()
        {
            ViewBag.HeadTitle = "Special Purpose Vessels | True North Composites";
            return View("~/Views/Home/Gallery_SpecialPurposeVessels.cshtml");
        }

        public ActionResult Gallery_HousingShelters()
        {
            ViewBag.HeadTitle = "Housing and Shelters | True North Composites";
            return View("~/Views/Home/Gallery_HousingShelters.cshtml");
        }

        public ActionResult Contact()
        {
            ViewBag.HeadTitle = "Contact | True North Composites";
            return View("~/Views/Home/Contact_New.cshtml");
        }

        [HttpPost]
        public ActionResult Contact_Received(string name)
        {
            ViewBag.HeadTitle = "Contact | True North Composites";
            ViewBag.Name = name;
            return View("~/Views/Home/Contact_Confirmed.cshtml");
        }

        public ActionResult Blog()
        {
            ViewBag.HeadTitle = "Blog | True North Composites";
            return View("~/Views/Home/Blog.cshtml");
        }
        public ActionResult News()
        {
            ViewBag.HeadTitle = "News | True North Composites";
            return View("~/Views/Home/News.cshtml");
        }

        public ActionResult NewsDemo()
        {
            ViewBag.HeadTitle = "News | True North Composites";
            return View("~/Views/Home/NewsDemo.cshtml");
        }

        public ActionResult NewsDemoDynamic()
        {
            ViewBag.HeadTitle = "News | True North Composites";
            MapViewModel map = new MapViewModel();

            List<Tuple<string, string, string>> mapItems = new List<Tuple<string, string, string>>()
            {
                Tuple.Create<string, string, string>("top:25%; left:30%", "Location 1", "location 1 description"),
                Tuple.Create<string, string, string>("top:45%; left:50%", "Location 2", "location 2 description"),
                Tuple.Create<string, string, string>("top:75%; left:30%", "Location 3", "location 3 description"),
                Tuple.Create<string, string, string>("top:35%; left:20%", "Location 4", "location 4 description"),
            };
            map.MapItems = mapItems;

            List<Tuple<string, string>> newsItems = new List<Tuple<string, string>>()
            {
                Tuple.Create<string, string>("News item 1", "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi venenatis eleifend congue. Morbi interdum eu enim eget sagittis. Fusce libero felis, sagittis vel volutpat pretium, sollicitudin in leo. Suspendisse faucibus suscipit ornare. Duis volutpat at mi at vestibulum. Proin sed quam eu erat consectetur placerat. Proin id pulvinar ligula. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed eu diam sit amet libero mollis vehicula eu at magna. Praesent nec lacus laoreet, blandit magna et, iaculis quam. Integer vulputate iaculis hendrerit. Vivamus feugiat, urna eget gravida bibendum, quam lectus porttitor diam, at bibendum massa nibh vel massa. Etiam dapibus magna dolor. Proin consectetur nisi et eros commodo, quis pulvinar turpis venenatis. </p>"),
                Tuple.Create<string, string>("News item 2", "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi venenatis eleifend congue. Morbi interdum eu enim eget sagittis. Fusce libero felis, sagittis vel volutpat pretium, sollicitudin in leo. Suspendisse faucibus suscipit ornare. Duis volutpat at mi at vestibulum. Proin sed quam eu erat consectetur placerat. Proin id pulvinar ligula. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed eu diam sit amet libero mollis vehicula eu at magna. Praesent nec lacus laoreet, blandit magna et, iaculis quam. Integer vulputate iaculis hendrerit. Vivamus feugiat, urna eget gravida bibendum, quam lectus porttitor diam, at bibendum massa nibh vel massa. Etiam dapibus magna dolor. Proin consectetur nisi et eros commodo, quis pulvinar turpis venenatis. </p>"),
                Tuple.Create<string, string>("News item 3", "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi venenatis eleifend congue. Morbi interdum eu enim eget sagittis. Fusce libero felis, sagittis vel volutpat pretium, sollicitudin in leo. Suspendisse faucibus suscipit ornare. Duis volutpat at mi at vestibulum. Proin sed quam eu erat consectetur placerat. Proin id pulvinar ligula. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed eu diam sit amet libero mollis vehicula eu at magna. Praesent nec lacus laoreet, blandit magna et, iaculis quam. Integer vulputate iaculis hendrerit. Vivamus feugiat, urna eget gravida bibendum, quam lectus porttitor diam, at bibendum massa nibh vel massa. Etiam dapibus magna dolor. Proin consectetur nisi et eros commodo, quis pulvinar turpis venenatis. </p>"),
                Tuple.Create<string, string>("News item 4", "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi venenatis eleifend congue. Morbi interdum eu enim eget sagittis. Fusce libero felis, sagittis vel volutpat pretium, sollicitudin in leo. Suspendisse faucibus suscipit ornare. Duis volutpat at mi at vestibulum. Proin sed quam eu erat consectetur placerat. Proin id pulvinar ligula. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed eu diam sit amet libero mollis vehicula eu at magna. Praesent nec lacus laoreet, blandit magna et, iaculis quam. Integer vulputate iaculis hendrerit. Vivamus feugiat, urna eget gravida bibendum, quam lectus porttitor diam, at bibendum massa nibh vel massa. Etiam dapibus magna dolor. Proin consectetur nisi et eros commodo, quis pulvinar turpis venenatis. </p>"),
            };
            map.NewsItems = newsItems;

            return View("~/Views/Home/NewsDemoDynamic.cshtml", map);
        }

        public ActionResult Attributions()
        {
            ViewBag.HeadTitle = "Attributions | True North Composites";
            return View("~/Views/Home/Attributions.cshtml");
        }

        public ActionResult TestNoJavascript()
        {
            ViewBag.HeadTitle = "Test - don't publish";
            return View("~/Views/Home/TestJavascript.cshtml");
        }

    }

}

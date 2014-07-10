using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using TNC.Models;

namespace TNC.Controllers
{
    public class NewsController : Controller
    {
        //public ActionResult News()
        //{
        //    ViewBag.HeadTitle = "News | True North Composites";
        //    return View("~/Views/Home/News.cshtml");
        //}

        //public ActionResult NewsDemo()
        //{
        //    ViewBag.HeadTitle = "News | True North Composites";
        //    return View("~/Views/Home/NewsDemo.cshtml");
        //}

        public ActionResult Index()
        {
            ViewBag.HeadTitle = "News | True North Composites";
            MapViewModel map = new MapViewModel();

            List<Tuple<string, string, string>> mapItems = new List<Tuple<string, string, string>>();
            //{
            //    Tuple.Create<string, string, string>("top:25%; left:30%", "Location 1", "location 1 description"),
            //    Tuple.Create<string, string, string>("top:45%; left:50%", "Location 2", "location 2 description"),
            //    Tuple.Create<string, string, string>("top:75%; left:30%", "Location 3", "location 3 description"),
            //    Tuple.Create<string, string, string>("top:35%; left:20%", "Location 4", "location 4 description"),
            //};

            List<NewsItem> news = News.GetNewsItems();
            NewsViewModel newsvm = new NewsViewModel();
            newsvm.NewsItems = news;


            //map.MapItems = mapItems;

            //List<Tuple<string, string>> newsItems = new List<Tuple<string, string>>()
            //{
            //    Tuple.Create<string, string>("News item 1", "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi venenatis eleifend congue. Morbi interdum eu enim eget sagittis. Fusce libero felis, sagittis vel volutpat pretium, sollicitudin in leo. Suspendisse faucibus suscipit ornare. Duis volutpat at mi at vestibulum. Proin sed quam eu erat consectetur placerat. Proin id pulvinar ligula. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed eu diam sit amet libero mollis vehicula eu at magna. Praesent nec lacus laoreet, blandit magna et, iaculis quam. Integer vulputate iaculis hendrerit. Vivamus feugiat, urna eget gravida bibendum, quam lectus porttitor diam, at bibendum massa nibh vel massa. Etiam dapibus magna dolor. Proin consectetur nisi et eros commodo, quis pulvinar turpis venenatis. </p>"),
            //    Tuple.Create<string, string>("News item 2", "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi venenatis eleifend congue. Morbi interdum eu enim eget sagittis. Fusce libero felis, sagittis vel volutpat pretium, sollicitudin in leo. Suspendisse faucibus suscipit ornare. Duis volutpat at mi at vestibulum. Proin sed quam eu erat consectetur placerat. Proin id pulvinar ligula. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed eu diam sit amet libero mollis vehicula eu at magna. Praesent nec lacus laoreet, blandit magna et, iaculis quam. Integer vulputate iaculis hendrerit. Vivamus feugiat, urna eget gravida bibendum, quam lectus porttitor diam, at bibendum massa nibh vel massa. Etiam dapibus magna dolor. Proin consectetur nisi et eros commodo, quis pulvinar turpis venenatis. </p>"),
            //    Tuple.Create<string, string>("News item 3", "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi venenatis eleifend congue. Morbi interdum eu enim eget sagittis. Fusce libero felis, sagittis vel volutpat pretium, sollicitudin in leo. Suspendisse faucibus suscipit ornare. Duis volutpat at mi at vestibulum. Proin sed quam eu erat consectetur placerat. Proin id pulvinar ligula. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed eu diam sit amet libero mollis vehicula eu at magna. Praesent nec lacus laoreet, blandit magna et, iaculis quam. Integer vulputate iaculis hendrerit. Vivamus feugiat, urna eget gravida bibendum, quam lectus porttitor diam, at bibendum massa nibh vel massa. Etiam dapibus magna dolor. Proin consectetur nisi et eros commodo, quis pulvinar turpis venenatis. </p>"),
            //    Tuple.Create<string, string>("News item 4", "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi venenatis eleifend congue. Morbi interdum eu enim eget sagittis. Fusce libero felis, sagittis vel volutpat pretium, sollicitudin in leo. Suspendisse faucibus suscipit ornare. Duis volutpat at mi at vestibulum. Proin sed quam eu erat consectetur placerat. Proin id pulvinar ligula. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed eu diam sit amet libero mollis vehicula eu at magna. Praesent nec lacus laoreet, blandit magna et, iaculis quam. Integer vulputate iaculis hendrerit. Vivamus feugiat, urna eget gravida bibendum, quam lectus porttitor diam, at bibendum massa nibh vel massa. Etiam dapibus magna dolor. Proin consectetur nisi et eros commodo, quis pulvinar turpis venenatis. </p>"),
            //};
            //map.NewsItems = newsItems;

            return View(newsvm);
        }

        public ActionResult News_Detail()
        {
            ViewBag.HeadTitle = "News Details | True North Composites";
            return View("~/Views/News/News_Detail.cshtml");
        }
        public ActionResult Edit_News()
        {
            ViewBag.HeadTitle = "Edit News | True North Composites";
            return View("Edit_News");
        }

    }

}
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

        [Authorize]
        [ValidateInput(false)]
        public ActionResult AddNewsDetail(string errorMessage) //string titleUrl, string errorMessage, string title, string author, DateTime publicationDate, string summary, string body)
        {
            NewsDetailVM news = new NewsDetailVM()
                {
                    PublicationDate = DateTime.Now,
                    ErrorMessage = errorMessage

                };

            //if (!String.IsNullOrEmpty(errorMessage))
            //{ 
            //    news.ErrorMessage = errorMessage;
            //    news.Author = author;
            //    news.Body = body;
            //    news.PublicationDate = publicationDate == null ? DateTime.Now : publicationDate;
            //    news.Summary = summary;
            //    news.Title = title;
            //}

            return View("~/Views/News/AddNewsDetail.cshtml", news);
        }

        [Authorize]
        public ActionResult EditNewsDetail(string titleUrl)
        {
            using (var context = new TNCEntities())
            {
                NewsItem item = (from n in context.NewsItems
                                 where n.UrlTitle == titleUrl
                                 && n.IsDeleted == false
                                 select n).First();

                return View("~/Views/News/EditNewsDetail.cshtml", item);

            }
        }

        public ActionResult NewsDetail(string urlTitle)
        {
            using (var context = new TNCEntities())
            {
                NewsItem item = (from n in context.NewsItems
                                 where n.UrlTitle == urlTitle
                                 && n.IsDeleted == false
                                 select n).First();

                ViewBag.HeadTitle = "News Details | True North Composites";


                return View("~/Views/News/NewsDetail.cshtml", item);

            }

        }

        [Authorize]
        [HttpPost, ValidateInput(false)]
        public ActionResult NewsDetail_Add(string title, string auth_name, string summary, string body, DateTime publicationDate)
        {
            if(String.IsNullOrEmpty(title))
            {
                string errorMessage = "A title must be present to save this item.";
                return RedirectToAction("AddNewsDetail", new { errorMessage = errorMessage, title = title, author = auth_name, summary = summary, body = body });
            };


            using (var context = new TNCEntities())
            {
                string testURLTitle = Utility.AlphanumericOnlyWithDashes(title);

                int? repeatedNewsID = (from n in context.NewsItems
                                       where n.UrlTitle.ToLower() == testURLTitle.ToLower()
                                       && n.IsDeleted == false
                                       select n.NewsItemID).FirstOrDefault();
                if (repeatedNewsID != null)
                    if (repeatedNewsID > 0)
                    {
                        string errorMessage = "Can't add that title. The title already exists in the database.";
                        return RedirectToAction("AddNewsDetail", new { errorMessage });
                    }

                NewsItem item = new NewsItem()
                {
                    Title = title,
                    UrlTitle = Utility.AlphanumericOnlyWithDashes(title),
                    PublicationDate = publicationDate ==new DateTime() ? DateTime.Now : publicationDate,
                    Author = auth_name,
                    Summary = summary,
                    Body = body,



                };

                context.NewsItems.Add(item);
                context.SaveChanges();

            }


            return RedirectToAction("Index");
        }

        //[HttpPost]
        [Authorize]
        public ActionResult NewsDetail_Delete(string urlTitle)
        {
            using (var context = new TNCEntities())
            {
                NewsItem item = (from n in context.NewsItems
                                 where n.UrlTitle == urlTitle
                                 && n.IsDeleted == false
                                 select n).First();
                //if (item == null)

                //     item.Body = itemToUpdate.body;
                //     item.Title = itemToUpdate.title;
                item.IsDeleted = true;

                context.SaveChanges();

                return RedirectToAction("Index");
            }

        }
        
        [HttpPost]
        [Authorize]
        public ActionResult NewsDetail_Edit()
        {
            return RedirectToAction("NewsDetail");
        }

        

    }

}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using TNC;

namespace TNC.Models
{
    public static class News
    {
        public static List<NewsItem> GetNewsItems()
        {
            using (var context = new TNCEntities())
            {
                List<NewsItem> news = (from n in context.NewsItems
                                       where n.IsDeleted == false
                                       select n).ToList();

                return news;

            }

        }

    }
}
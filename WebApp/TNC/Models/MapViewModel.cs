using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TNC.Models
{
    public class MapViewModel
    {
        public List<Tuple<string, string, string>> MapItems { get; set; }

        public List<Tuple<string, string>> NewsItems { get; set; }
    }
}
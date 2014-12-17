using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Drawing;
using System.Drawing.Imaging;
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
            return View("~/Views/Home/History_New.cshtml");
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

        public ActionResult GalleryImageUpload()
        {
            ViewBag.HeadTitle = "Upload an Image | True North Composites";
            return View("~/Views/Home/GalleryImageUpload.cshtml");
        }

        [HttpPost]
        public ActionResult ImageUpload_Upload()
        {
            if (Request.Files.Count > 0 && Request.Files[0] != null)
            {
                HttpPostedFileBase file = Request.Files[0];
                bool imageFormatIsValid = false;
                string imageFormat = null;

                System.IO.Stream stream = file.InputStream;
                using (System.Drawing.Image img = Image.FromStream(file.InputStream))
                {
                    if (img.RawFormat.Equals(ImageFormat.Bmp))
                    {
                        imageFormat = "bmp";
                        imageFormatIsValid = true;
                    }
                    else if (img.RawFormat.Equals(ImageFormat.Gif))
                    {
                        imageFormat = "gif";
                        imageFormatIsValid = true;

                    }
                    else if (img.RawFormat.Equals(ImageFormat.Jpeg))
                    {
                        imageFormat = "jpg";
                        imageFormatIsValid = true;

                    }
                    else if (img.RawFormat.Equals(ImageFormat.Png))
                    {
                        imageFormat = "png";
                        imageFormatIsValid = true;

                    }

                    if (imageFormatIsValid)
                    {

                        var path = System.IO.Path.Combine(Server.MapPath("~/Assets/TNC/ContentImages"), "MyImage." + imageFormat);
                        file.SaveAs(path);
                        ViewBag.Message = "Format is valid. Image is saved.";

                    }
                    else//image format is not valid
                    {
                        ViewBag.Message = "Format was invalid. Not saved.";
                    }

                }

            }
            return View("~/Views/Home/UploadResponse.cshtml");
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
            return View("~/Views/Home/Contact.cshtml");
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

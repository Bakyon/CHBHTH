using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CHBHTH.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "We are new, but we build shop based on responsibility and love.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "If you have question or request, feel free to contact our customer service!";

            return View();
        }

        public ActionResult SlidePartial()
        {
            return PartialView();

        }

        public ActionResult Trangchu()
        {
            return View();

        }

        public ActionResult login()
        {
            return View();

        }
    }
}
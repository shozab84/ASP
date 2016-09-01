using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCDemo5.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index(int id = 1)
        {
            ViewBag.NumberOfTimes = id;
            return View();
        }

        public ActionResult About(int id =1)
        {
           

            return View();
        }

        public ActionResult Contact(int id = 5)
        {
            ViewBag.Message = "You choose the number" + id;

            return View();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVCRecords2.Models;

namespace MVCRecords2.Controllers
{
    public class HomeController : Controller
    {

        List<Album> albums = new List<Album>();


        // GET: Home
        public ActionResult Index()
        {
            //creating some albums

            Album album1 = new Album("Dark Side of the moon", "Pink Floyd", "Vinyl", 9.99m);
            albums.Add(album1);


            Album album2 = new Album("Tubular Bells", "Mike Oldfields", "Vinyl", 8.99m);
            albums.Add(album2);


            Album album3 = new Album("Back to Back", "Amy Winehouse", "CD", 12.99m);
            albums.Add(album3);


            return View(albums);
        }
    }
}
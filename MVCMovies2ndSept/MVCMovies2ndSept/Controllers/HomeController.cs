using MVCMovies2ndSept.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace MVCMovies2ndSept.Controllers
{
    public class HomeController : Controller
    {
        private MoviesDBShozabEntities db = new MoviesDBShozabEntities();
        // GET: Home
        public ActionResult Index(string movieGenre, string searchString)// action method for Index
        {
            // creating the listbox for selecting by genre
            var genreList = new List<string>();
            var genreQuery = from d in db.Movies// selecting all movies from the database and ordering by genre
                             orderby d.Genre
                             select d.Genre;

            genreList.AddRange(genreQuery.Distinct());// it will avoid showing duplicate vales
            ViewBag.movieGenre = new SelectList(genreList);

            //LINQ query to get records from the db
            var movies = from m in db.Movies
                         select m;

            //select by genre
            if (!String.IsNullOrEmpty(movieGenre))
            {
                movies = movies.Where(x => x.Genre == movieGenre);
                    
            }

            // select by title

            if (!String.IsNullOrEmpty(searchString))
            {
                movies = movies.Where(s => s.Title.Contains(searchString));// we can search for substrings using contains keyword

            }

            return View(movies);


        }

        public ActionResult Details(int? id) //? is saying its optional-- this is an action method for displaying the details of a movie
        {

            Movy movie = db.Movies.Find(id);
            return View(movie);
        }

        public ActionResult Edit(int? id) //? is saying its optional- this is an action method for edit a movie record
        {

            Movy movie = db.Movies.Find(id);
            return View(movie);
        }

        [HttpPost]
        public ActionResult Edit(Movy movie)// another action method for saving changes and sending postback
        {


            if (ModelState.IsValid)
            {
                db.Entry(movie).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            else
            {
                return View(movie);
            }
        }

        public ActionResult Delete(int? id) //? is saying its optional-- this is an action method for displaying and deleting a movie record
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Movy movie = db.Movies.Find(id);
            if (movie == null)
            {
                return HttpNotFound();
            }

            return View(movie);
        }

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int? id) //? is saying its optional-- this is an action method deleting a movie record + postback
        {
           
            Movy movie = db.Movies.Find(id);
            db.Movies.Remove(movie);
            db.SaveChanges();
            return RedirectToAction("Index");
            
        }

        public ActionResult Create()// action method for creating a new record
        {
            return View();// don't need a parameter here (nothing to pass)
        }

        [HttpPost]
        public ActionResult Create(Movy movie)
        {

            if(ModelState.IsValid)
            {
                db.Movies.Add(movie);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            else
            {
                return View(movie);
            }

            
        }



    }
}
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MVCMovies2ndSept.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    public partial class Movy
    {
        public int id { get; set; }
        [StringLength(60, MinimumLength =3)]
        [Required]// making title a required field
        public string Title { get; set; }
        [Display(Name ="Release Date")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString="{0:d}",ApplyFormatInEditMode = true)]
        
        // sets date in UK date format(picks it from your computer)

        public Nullable<System.DateTime> ReleaseDate { get; set; }
        [Required]
        [RegularExpression(@"^[A-Z]+[a-zA-z''-'\s'-]*$")]
        [StringLength(30)]
        public string Genre { get; set; }
        [Range(0,1000)]// giving range for price
        [DataType(DataType.Currency)]// setting format for price
        public decimal Price { get; set; }
    }
}

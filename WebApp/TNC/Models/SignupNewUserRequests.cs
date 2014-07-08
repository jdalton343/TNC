using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web.Mvc;

namespace TNC.Models
{
    public class SignupNewUserRequest
    {
        private ModelStateDictionary modelState;

        public SignupNewUserRequest()
        {

        }


        public ModelStateDictionary ModelState { set { this.modelState = value; } }

        //D1 signup step 1: account setup enrollee details
        //in order of appearance:

        [Display(Name = "Prefix (Mr., Mrs., Dr.)")]
        public string Prefix { get; set; }

        [Required(ErrorMessage = "First name is required")]
        [Display(Name = "First")]
        public string FirstName { get; set; }

        [Display(Name = "Middle")]
        public string MiddleName { get; set; }

        [Required(ErrorMessage = "Last name is required")]
        [Display(Name = "Last")]
        public string LastName { get; set; }

        [Display(Name = "User name")]
        [Required(AllowEmptyStrings = false, ErrorMessage = "A username is required")]
        [RegularExpression(@"^[a-zA-Z][a-zA-Z0-9]{4,9}$", ErrorMessage = "The user name should be no less than 5 characters and no more than 10. Letters and numbers only, no spaces.")]
        public string Username { get; set; }


        [Display(Name = "Password")]
        [Required(AllowEmptyStrings = false, ErrorMessage = "Password is required")]
        [RegularExpression(@"^[a-zA-Z][a-zA-Z0-9]{4,9}$", ErrorMessage = "The password should be no less than 5 characters and no more than 10. Both letters and numbers are required, with no spaces.")]
        [DataType(DataType.Password)]
        public string Password { get; set; }




        public string ErrorMessage { get; set; }

        public string AdminErrorMessage { get; set; }

        public string UserErrorMessage { get; set; }
    }

}

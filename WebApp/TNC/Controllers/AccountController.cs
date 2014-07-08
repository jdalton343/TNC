using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using System.Web.Security;
using TNC.Models;

namespace TNC.Controllers
{

    public class AccountController : Controller
    {

        //
        // GET: /Account/LogOn

        public ActionResult LogOn()
        {
            return View();
        }

        //
        // POST: /Account/LogOn

        [HttpPost]
        public ActionResult LogOn(LogOnModel model, string returnUrl)
        {
            if (ModelState.IsValid)
            {
                if (model.UserName == "ignatius" && model.Password == "mouse") //Membership.ValidateUser(model.UserName, model.Password))
                {
                    FormsAuthentication.SetAuthCookie(model.UserName, model.RememberMe);
                    if (Url.IsLocalUrl(returnUrl) && returnUrl.Length > 1 && returnUrl.StartsWith("/")
                        && !returnUrl.StartsWith("//") && !returnUrl.StartsWith("/\\"))
                    {
                        return Redirect(returnUrl);
                    }
                    else
                    {
                        return RedirectToAction("Index", "Home");
                    }
                }
                else
                {
                    ModelState.AddModelError("", "The user name or password provided is incorrect.");
                }
            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }

        public ActionResult MigrationInProgress()
        {
            return View("~/Views/Account/MigrationInProgress.cshtml");

        }

        //
        // GET: /Account/LogOff

        public ActionResult LogOff()
        {
            FormsAuthentication.SignOut();

            return RedirectToAction("Index", "Home");
        }

        [HttpPost]
        public ActionResult MigrationProgress()
        {
            string sessionNotice;
            string redirectionURL = "";
            int percentDone;
            bool migrationIsCompleted = false;
            try
            {
                string migrationStatus = (string)Session["migration-status"];
                if (migrationStatus == null) migrationStatus = "";

                switch (migrationStatus)
                {
                    case (""):
                        Session["migration-status"] = "1";
                        sessionNotice = "Getting user information";
                        percentDone = 10;
                        break;

                    case ("1"):
                        Session["migration-status"] = "2";
                        sessionNotice = "Getting detail and ancillary info";
                        percentDone = 50;
                        break;

                    case ("2"):
                        Session["migration-status"] = "3";
                        sessionNotice = "Setting up new environment";
                        percentDone = 90;
                        break;

                    case ("3"):
                        Session["migration-status"] = "4";
                        sessionNotice = "All done!";
                        percentDone = 100;
                        break;

                    case ("4"):
                        Session["migration-status"] = "";
                        sessionNotice = "We already discussed you're All done!";
                        percentDone = 110;
                        migrationIsCompleted = true;
                        break;

                    default:
                        Session["migration-status"] = "";
                        sessionNotice = "Something unexpected happened";
                        redirectionURL = "";
                        percentDone = 10;
                        break;

                }

                if (migrationIsCompleted)
                    redirectionURL = Url.Content("~/Portfolio");

                return Json(new { success = true, message = sessionNotice, percentcompleted = percentDone, migrationisdone = migrationIsCompleted, redirectionurl = redirectionURL });

            }
            catch (Exception ex)
            {
                return Json(new { success = false, reason = ex.Message + ex.InnerException });
            }


        }

        /// <summary>
        /// Commply with D1 business rules in spec
        /// </summary>
        /// <param name="requestModel"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult Register(SignupNewUserRequest requestModel)
        {
            if (Convert.ToString(ModelState["Profession"].Value.RawValue).IndexOf("How would you") != -1)
                ModelState.AddModelError("Profession", "Medical profession is required");

            requestModel.ModelState = ModelState;

            bool D1HasErrors = false;
            //((ModelState["FirstName"].Errors.Count() > 0) ? true : false)
            //     &&
            //     ((ModelState["LastName"].Errors.Count() > 0) ? true : false)
            //     &&
            //     (Convert.ToString(ModelState["Profession"].Value.RawValue).IndexOf("How would you") != -1
            //         || String.IsNullOrEmpty(Convert.ToString(ModelState["Profession"].Value.RawValue)) ? true : false)
            //     &&
            //     ((ModelState["Username"].Errors.Count() > 0) ? true : false)
            //     &&
            //   ((ModelState["Email"].Errors.Count() > 0) ? true : false)
            //     &&
            //     ((ModelState["Password"].Errors.Count() > 0) ? true : false)
            //     &&
            //     (Convert.ToString(ModelState["HowDidYouHearAbout"].Value.RawValue).IndexOf("How did you") != -1
            //         || String.IsNullOrEmpty(Convert.ToString(ModelState["HowDidYouHearAbout"].Value.RawValue)) ? true : false);

            //    if (Convert.ToString(ModelState["Profession"].Value.RawValue).IndexOf("How would you") != -1 
            //        &&
            //        Convert.ToString(ModelState["Profession"].Value.RawValue).IndexOf("Other") != -1)
            //        D1HasErrors = D1HasErrors 
            //            &&
            //        Convert.ToString(ModelState["IndividualMedicalSpecialty"].Value.RawValue).IndexOf("What is your") != -1
            //        || String.IsNullOrEmpty(Convert.ToString(ModelState["IndividualMedicalSpecialty"].Value.RawValue)) ? true : false;

            if (D1HasErrors)
                return View("~/Views/Account/D1SignupPagesEnrolleeDetails.cshtml", requestModel);
            else
                return RedirectToAction("Index", "Portfolio");


            //return View("~/Views/VivacareMainSite/Account/D2SignupPagesOrganization.cshtml", requestModel);

            //if (requestModel.TermsOfServiceAccepted == false)
            //{
            //    //ModelState.AddModelError("TermsOfServiceAccepted", "
            //}

            //if (ModelState.IsValid)
            //{
            //    requestModel.Username = requestModel.Email;
            //    // Attempt to register the user
            //    MembershipCreateStatus createStatus;
            //    Membership.CreateUser(requestModel.Username, requestModel.Password, requestModel.Email, null, null, true, null, out createStatus);

            //    if (createStatus == MembershipCreateStatus.Success)
            //    {
            //        FormsAuthentication.SetAuthCookie(requestModel.Username, false /* createPersistentCookie */);
            //        //SetupPatientLibraryModel patientLibrary = new SetupPatientLibraryModel(requestModel);

            //        return View("SetupPatientLibrary" /*, patientLibrary*/);
            //    }
            //    else
            //    {
            //        ModelState.AddModelError("", ErrorCodeToString(createStatus));
            //    }
            //}

            //// If we got this far, something failed, redisplay form
            //return View(requestModel);
        }

        public ActionResult Register()
        {
            //if (Request.IsAuthenticated)
            //{
            //    ViewBag.IsAuthenticated = true;
            //    return View("~/Views/MainSite/Account/CannotRegister.cshtml");

            //}

            SignupNewUserRequest registerModel = new SignupNewUserRequest();
            return View("~/Views/Account/D1SignupPagesEnrolleeDetails.cshtml", registerModel);

        }

        //
        // GET: /Account/Register

        //public ActionResult Register()
        //{
        //    return View();
        //}

        //
        // POST: /Account/Register

        //[HttpPost]
        //public ActionResult Register(RegisterModel model)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        // Attempt to register the user
        //        MembershipCreateStatus createStatus;
        //        Membership.CreateUser(model.UserName, model.Password, model.Email, null, null, true, null, out createStatus);

        //        if (createStatus == MembershipCreateStatus.Success)
        //        {
        //            FormsAuthentication.SetAuthCookie(model.UserName, false /* createPersistentCookie */);
        //            return RedirectToAction("Index", "Home");
        //        }
        //        else
        //        {
        //            ModelState.AddModelError("", ErrorCodeToString(createStatus));
        //        }
        //    }

        //    // If we got this far, something failed, redisplay form
        //    return View(model);
        //}

        //
        // GET: /Account/ChangePassword

        [Authorize]
        public ActionResult ChangePassword()
        {
            return View();
        }

        //
        // POST: /Account/ChangePassword

        [Authorize]
        [HttpPost]
        public ActionResult ChangePassword(ChangePasswordModel model)
        {
            if (ModelState.IsValid)
            {

                // ChangePassword will throw an exception rather
                // than return false in certain failure scenarios.
                bool changePasswordSucceeded;
                try
                {
                    MembershipUser currentUser = Membership.GetUser(User.Identity.Name, true /* userIsOnline */);
                    changePasswordSucceeded = currentUser.ChangePassword(model.OldPassword, model.NewPassword);
                }
                catch (Exception)
                {
                    changePasswordSucceeded = false;
                }

                if (changePasswordSucceeded)
                {
                    return RedirectToAction("ChangePasswordSuccess");
                }
                else
                {
                    ModelState.AddModelError("", "The current password is incorrect or the new password is invalid.");
                }
            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }

        //
        // GET: /Account/ChangePasswordSuccess

        public ActionResult ChangePasswordSuccess()
        {
            return View();
        }

        #region Status Codes
        private static string ErrorCodeToString(MembershipCreateStatus createStatus)
        {
            // See http://go.microsoft.com/fwlink/?LinkID=177550 for
            // a full list of status codes.
            switch (createStatus)
            {
                case MembershipCreateStatus.DuplicateUserName:
                    return "User name already exists. Please enter a different user name.";

                case MembershipCreateStatus.DuplicateEmail:
                    return "A user name for that e-mail address already exists. Please enter a different e-mail address.";

                case MembershipCreateStatus.InvalidPassword:
                    return "The password provided is invalid. Please enter a valid password value.";

                case MembershipCreateStatus.InvalidEmail:
                    return "The e-mail address provided is invalid. Please check the value and try again.";

                case MembershipCreateStatus.InvalidAnswer:
                    return "The password retrieval answer provided is invalid. Please check the value and try again.";

                case MembershipCreateStatus.InvalidQuestion:
                    return "The password retrieval question provided is invalid. Please check the value and try again.";

                case MembershipCreateStatus.InvalidUserName:
                    return "The user name provided is invalid. Please check the value and try again.";

                case MembershipCreateStatus.ProviderError:
                    return "The authentication provider returned an error. Please verify your entry and try again. If the problem persists, please contact your system administrator.";

                case MembershipCreateStatus.UserRejected:
                    return "The user creation request has been canceled. Please verify your entry and try again. If the problem persists, please contact your system administrator.";

                default:
                    return "An unknown error occurred. Please verify your entry and try again. If the problem persists, please contact your system administrator.";
            }
        }
        #endregion
    }
}

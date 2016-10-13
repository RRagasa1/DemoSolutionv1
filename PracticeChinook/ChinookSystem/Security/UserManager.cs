using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

#region Additional Namespaces
using Microsoft.AspNet.Identity.EntityFramework;  //userStore
using Microsoft.AspNet.Identity;  //userManager
using System.Linq;
#endregion

namespace ChinookSystem.Security
{
    public class UserManager : UserManager<ApplicationUser>
    {
        public UserManager()
            : base(new UserStore<ApplicationUser>(new ApplicationDbContext()))
        {
        }

        #region
        //the basic minimum information need for an asp.net user is:
        //Username, Password and E-mail
        private const string STR_WEBMASTER_USERNAME = "WebMaster";
        //asp.net has minimum level of characters required
        private const string STR_DEFAULT_PASSWORD = "Pa$$word1";
        //the {0} will be replaced with the respective username 
        private const string STR_EMAIL_FORMAT = "{0}@Chinook.ca";
        //the generic username will be made up of entity's firstname and lastname
        private const string STR_USERNAME_FORMAT = "{0}.{1}";

        #endregion

        //code to add a generic webmaster for the application
        public void AddWebMaster()
        {
            if (!Users.Any(u => u.UserName.Equals(STR_WEBMASTER_USERNAME)))
            {
                var webmasterAccount = new ApplicationUser()
                {
                    UserName = STR_WEBMASTER_USERNAME,
                    Email = string.Format(STR_EMAIL_FORMAT, STR_WEBMASTER_USERNAME)
                };

                //this adds to the User table
                this.Create(webmasterAccount, STR_DEFAULT_PASSWORD);
                //add to appropriate role
                this.AddToRole(webmasterAccount.Id, SecurityRoles.WebsiteAdmins);
            }
        }
    }
}

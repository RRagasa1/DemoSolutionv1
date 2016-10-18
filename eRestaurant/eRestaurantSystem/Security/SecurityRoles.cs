using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eRestaurantSystem.Security
{
    internal static class SecurityRoles  //one copy per application
    {
        public const string WebsiteAdmins = "WebsiteAdmins";
        public const string RegisteredUsers = "RegisteredUsers";
        public const string Staff = "Staff";
        public const string Auditor = "Auditor";
        //property that is readOnly which will return all of the roles in the application
        public static List<string> eRestaurantSecurityRoles
        {
            get
            {
                List<string> roleList = new List<string>();
                //add all of the system roles to the list of roles
                roleList.Add(WebsiteAdmins);
                roleList.Add(RegisteredUsers);
                roleList.Add(Staff);
                roleList.Add(Auditor);

                return roleList;
            }
        }

    }
}

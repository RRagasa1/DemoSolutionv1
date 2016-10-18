using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ChinookSystem.Security
{
    public enum UnRegisteredUserType { Undefined, Employee, Customer}
    public class UnRegisteredUserProfile
    {
        public int id { get; set; }
        public UnRegisteredUserType UserType { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string AssignedUserName { get; set; }
        public string AssignedEmail { get; set; }
    }
}

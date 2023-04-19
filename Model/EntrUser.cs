using CoverallsShop.DbEntity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoverallsShop.Model
{
    public static class EntrUser
    {

        private static User _user;
        public static User User
        {
            get => _user;
            set
            {
                _user = value;
            }
        }
        public static bool CheckOnTheAdmin() => _user?.UserRole.RoleName == "Администратор";
        
    }
}

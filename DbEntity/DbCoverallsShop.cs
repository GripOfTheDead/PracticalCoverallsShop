using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoverallsShop.DbEntity
{
    public class DbCoverallsShop
    {
        public static CoverallsEntities Db { get; set; } = new CoverallsEntities();
    }
}

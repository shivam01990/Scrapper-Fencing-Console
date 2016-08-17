using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FencingScrapper
{
    public class DBService
    {
        public static int SaveComany(Comany ud)
        {
            int ComanyID = 0;
            using (DBEntities db = new DBEntities())
            {
                if (ud.ComanyID > 0)
                {
                    Comany temp = db.Comanies.Where(u => u.ComanyID == ud.ComanyID).FirstOrDefault();

                    if (temp != null)
                    {
                        temp.ComanyID = ud.ComanyID;
                        temp.CompanyName = ud.CompanyName;
                        temp.State = ud.State;
                        temp.Email = ud.Email;
                    }
                }
                else
                {
                    db.Comanies.Add(ud);
                }

                int x = db.SaveChanges();
                if (x > 0)
                {
                    ComanyID = ud.ComanyID;
                }
            }

            return ComanyID;
        }
    }
}

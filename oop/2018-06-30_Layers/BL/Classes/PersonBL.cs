using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Common;
using DL;

namespace BL
{
    public class PersonBL : IPerson
    {
        PersonDB db = new PersonDB();
        public Person GetSinglePerson(int id)
        {
            return db.GetSinglePerson(id);
        }
    }
}

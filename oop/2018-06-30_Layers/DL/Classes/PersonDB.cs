using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Common;

namespace DL
{
    public class PersonDB : IPerson
    {
        public Person GetSinglePerson(int id)
        {
            Person p = new Person();
            p.ID = id;
            p.Name = "Max Muster";
            return p;
        }
    }
}

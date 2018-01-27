using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace notenbewertung
{
    abstract class Person
    {
        public string Vorname { get; set; }
        public string Name { get; set; }
        public Person(string _vorname, string _name)
        {
            this.Vorname = _vorname;
            this.Name = _name;
        }
    }
}

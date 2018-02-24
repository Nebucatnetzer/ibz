using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2018_02_24_sep
{
    class Company
    {
        public string name { get; }
        public string streetname { get; set; }
        public City city { get; set; }
        public Company(string name, string streetname, City city)
        {
            this.name = name;
            this.streetname = streetname;
            this.city = city;

        }
    }
}

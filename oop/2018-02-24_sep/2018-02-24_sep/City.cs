using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2018_02_24_sep
{
    class City
    {
        public string name { get; }
        public int zip_code { get; }

        public City(string name, int zip_code)
        {
            this.name = name;
            this.zip_code = zip_code;
        }
    }
}

﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2018_02_24_sep
{
    class Customer
    {
        public Company company { get; set; }
        public string name { get; set; }
        public string first_name { get; set; }
        public string streetname { get; set; }
        public City city { get; set; }

        public Customer(string name,
                        string first_name,
                        string streetname,
                        City city)
        {
            this.name = name;
            this.first_name = first_name;
            this.streetname = streetname;
            this.city = city;
        }
    }
}

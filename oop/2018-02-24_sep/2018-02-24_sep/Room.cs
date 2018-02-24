using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2018_02_24_sep
{
    class Room
    {
        public int capacity { get;}
        public decimal price { get;}
        public string name { get; }

        public Room(int capacity, decimal price, string name)
        {
            this.capacity = capacity;
            this.price = price;
            this.name = name;
        }
    }
}

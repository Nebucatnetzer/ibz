using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2018_03_02_hausbesitzer
{
    class HouseOwner
    {
        public string name { get; set; }
        public string address { get; set; }
        public List<Request> requests { get; set; }

        public HouseOwner(string _name, string _address)
        {
            this.name = _name;
            this.address = _address;
            this.requests = new List<Request>();
        }
    }
}

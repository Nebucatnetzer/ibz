using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2018_03_02_hausbesitzer
{
    class HouseOwner
    {
        private string _name;

        public string name
        {
            get { return _name; }
            set { _name = value; }
        }

        private string _address;

        public string address
        {
            get { return _address; }
            set { _address = value; }
        }

        public List<Request> requests { get; set; }

        public HouseOwner(string name, string address)
        {
            this.name = name;
            this.address = address;
            this.requests = new List<Request>();
        }
    }
}

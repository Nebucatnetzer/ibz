using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2018_02_24_sep
{
    class Hotel
    {
        public string name { get; set; }
        public List<Room> rooms { get; set; }

        public Hotel()
        {
            this.rooms = new List<Room>();
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2018_02_24_cargo
{
    class Palette
    {
        public List<Box> items { get; set; }

        public Palette()
        {
            this.items = new List<Box>();
        }
    }
}

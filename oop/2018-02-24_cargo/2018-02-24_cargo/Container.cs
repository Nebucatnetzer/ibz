﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2018_02_24_cargo
{
    class Container
    {
        public List<Palette> items { get; set; }
        public Container()
        {
            this.items = new List<Palette>();
        }
    }
}

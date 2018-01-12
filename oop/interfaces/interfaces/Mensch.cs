using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace interfaces
{
    class Mensch : ILebewesen
    {
        public int AnzahlBeine { get; set; }
        public string Ton { get; set; }

        public Mensch(int i, string s)
        {
            this.AnzahlBeine = i;
            this.Ton = s;
            
        }

        public void GibLaut()
        {
            Console.WriteLine(this.Ton);
        }
    }
}

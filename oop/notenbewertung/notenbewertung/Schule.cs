using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace notenbewertung
{
    class Schule
    {
        public string Standort { get; set; }
        public List<Klasse> Klassen { get; set; }
        public Schule(string _standort)
        {
            this.Standort = _standort;
            this.Klassen = new List<Klasse>();
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace notenbewertung
{
    class Schule
    {
        string Standort { get; set; }
        List<Klasse> klassen = new List<Klasse>();
        public Schule(string _standort)
        {
            this.Standort = _standort;
        }
    }
}

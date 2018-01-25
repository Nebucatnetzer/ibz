using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace notenbewertung
{
    class Schule : List<Klasse>
    {
        public string Standort { get; set; }
        public Schule(string _standort)
        {
            this.Standort = _standort;
        }
    }
}

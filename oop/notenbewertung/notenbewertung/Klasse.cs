using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace notenbewertung
{
    class Klasse
    {
        public string Klassenbezeichnung { get; set; }
        public List<Person> Personen { get; set; }

        public Klasse(string _Klassenbezeichnung)
        {
            this.Klassenbezeichnung = _Klassenbezeichnung;
            this.Personen = new List<Person>();
        }
    }
}

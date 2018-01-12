using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace notenbewertung
{
    class Klasse
    {
        List<Person> personen = new List<Person>();
        public string Klassenbezeichnung { get; set; }

        public Klasse(string _Klassenbezeichnung)
        {
            this.Klassenbezeichnung = _Klassenbezeichnung;
        }
    }
}

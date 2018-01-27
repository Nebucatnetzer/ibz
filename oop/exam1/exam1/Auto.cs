using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace exam1
{
    class Auto : Fahrzeug
    {
        public int AnzahlSitze { get; set; }
        public Auto(int _id, int _ps, int _sitze)
        {
            this.FahrzeugID= _id;
            this.PS = _ps;
            this.AnzahlSitze = _sitze;

        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace exam1
{
    class LKW : Fahrzeug
    {
        public int MaxGewicht { get; set; }
        public LKW(int _id, int _ps, int _gewicht)
        {
            this.FahrzeugID = _id;
            this.PS = _ps;
            this.MaxGewicht = _gewicht;
        }
    }
}

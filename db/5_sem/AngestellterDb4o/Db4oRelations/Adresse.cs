using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Db4oRelations
{
    public class Adresse
    {
        private string _strasse;
        private string _wohnort;
        private int _plz;

        public Adresse(string strasse, string wohnort, int plz)
        {
            Strasse = strasse;
            Wohnort = wohnort;
            Plz = plz;
        }

        public string Strasse { get => _strasse; set => _strasse = value; }
        public string Wohnort { get => _wohnort; set => _wohnort = value; }
        public int Plz { get => _plz; set => _plz = value; }

        public override string ToString()
        {
            return Strasse + "/" + Plz + " " + Wohnort;
        }
    }
}

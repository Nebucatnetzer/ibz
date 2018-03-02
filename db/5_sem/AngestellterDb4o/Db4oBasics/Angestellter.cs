using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Db4oBasics
{
    public class Angestellter
    {
        private int _persNr;
        private string _name;
        private int _salaer;

        public Angestellter(int persNr, string name, int salaer)
        {
            PersNr = persNr;
            Name = name;
            Salaer = salaer;
        }

        public int PersNr { get => _persNr; set => _persNr = value; }
        public string Name { get => _name; set => _name = value; }
        public int Salaer { get => _salaer; set => _salaer = value; }

        public override string ToString()
        {
            return _persNr + "/" + _name + "/" + _salaer;
        }
    }
}

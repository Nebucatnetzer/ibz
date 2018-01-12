using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace notenbewertung
{
    class Dozent : Person
    {
    public Dozent(string _vorname, string _name)
        {
            this.Vorname = _vorname;
            this.Name = _name;
        }
    }
}

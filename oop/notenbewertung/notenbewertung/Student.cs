using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace notenbewertung
{
    class Student : Person
    {
        public List<Testresultat> noten = new List<Testresultat>();
        double summe;
        public Student(string _vorname, string _name)
        {
            this.Vorname = _vorname;
            this.Name = _name;
        }

        public double GetNotenDurchSchnitt()
        {
            if (noten.Count > 0)
            {
                int counter = 0;
                this.summe = 0;
                foreach (var i in noten)
                {
                    this.summe += i.Note;
                    counter++;
                }
                return this.summe / counter;
            }
            return this.summe;
        }
    }
}

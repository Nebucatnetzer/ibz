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
        public Student(string _vorname, string _name) : base(_vorname, _name)
        {

        }

        public void GetNotenDurchSchnitt()
        {
            if (noten.Count > 0)
            {
                double result = Math.Round(this.noten.Average(n => n.Note), 2);
                Console.WriteLine(result);
            }
            else
            {
                Console.WriteLine("Der Student hat noch keine N0ten.");
            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace notenbewertung
{
    class Program
    {
        static void Main(string[] args)
        {
            Schule ibz = new Schule("Aarau");
            Klasse ti5 = new Klasse("TI5");
            Student andreas = new Student("Andreas", "Zweili");
            Dozent thomas = new Dozent("Thomas", "Steiner");
            Testresultat exam1 = new Testresultat(5.1);
            Testresultat exam2 = new Testresultat(5.2);
            Testresultat exam3 = new Testresultat(5.3);
            andreas.noten.Add(exam1);
            andreas.noten.Add(exam2);
            andreas.noten.Add(exam3);
            Console.WriteLine(andreas.GetNotenDurchSchnitt().ToString());
            Console.ReadKey();
        }
    }
}

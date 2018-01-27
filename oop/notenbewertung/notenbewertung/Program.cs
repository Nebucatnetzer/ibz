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
            // create some objects
            Schule ibz = new Schule("Aarau");
            Klasse ti5 = new Klasse("TI5");
            Klasse ti3 = new Klasse("TI3");
            Student andreas = new Student("Andreas", "Zweili");
            Student max = new Student("Max", "Muster");
            Dozent thomas = new Dozent("Thomas", "Steiner");
            Dozent herren = new Dozent("Herren", "Christian");
            Testresultat exam1 = new Testresultat(5.1);
            Testresultat exam2 = new Testresultat(5.2);
            Testresultat exam3 = new Testresultat(5.3);
            Testresultat exam4 = new Testresultat(4.3);
            Testresultat exam5 = new Testresultat(4.4);
            Testresultat exam6 = new Testresultat(5.3);

            // add connections between objects

            //give a student some exam results
            andreas.noten.Add(exam1);
            andreas.noten.Add(exam2);
            andreas.noten.Add(exam3);

            max.noten.Add(exam4);
            max.noten.Add(exam5);
            max.noten.Add(exam6);

            // each class needs a school
            ibz.Klassen.Add(ti5);
            ibz.Klassen.Add(ti3);

            // many people belong to a class
            ti5.Personen.Add(thomas);
            ti5.Personen.Add(andreas);

            ti3.Personen.Add(max);
            ti3.Personen.Add(herren);

            Console.WriteLine(ibz.Standort);
            Console.WriteLine();
            foreach (Klasse klasse in ibz.Klassen)
            {
                Console.WriteLine(klasse.Klassenbezeichnung);
                Console.WriteLine();
                foreach (Person person in klasse.Personen)
                {
                    Console.WriteLine(person.Name + " " + person.Vorname);
                    if (person is Student)
                    {
                        Student s = (Student)person;
                        Console.WriteLine("Notendurchschnitt: ");
                        s.GetNotenDurchSchnitt();
                    }
                    else
                    {
                        Console.WriteLine("Dozent");
                    }
                    Console.WriteLine();
                }
                Console.WriteLine("------");
            }
            Console.ReadKey();
        }
    }
}

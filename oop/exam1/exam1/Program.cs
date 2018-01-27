using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace exam1
{
    class Program
    {
        static void Main(string[] args)
        {
            List<Auto> autos = new List<Auto>();
            for (int i = 1; i < 25; i++)
            {
                autos.Add(new Auto(i, 150, 4));
            }
            var firsttencars = autos.Take(10);
            foreach (var auto in firsttencars)
            {
                Console.WriteLine("Fahrzeug ID: " + auto.FahrzeugID);
                Console.WriteLine("PS: " + auto.PS);
                Console.WriteLine("Anzahl Sitze: " + auto.AnzahlSitze);
                Console.WriteLine("-----");
                Console.WriteLine();

            }
            Console.ReadKey();
        }
    }
}

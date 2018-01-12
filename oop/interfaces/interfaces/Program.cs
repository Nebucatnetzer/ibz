using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace interfaces
{
    class Program
    {
        static void Main(string[] args)
        {
            Mensch mensch = new Mensch(2, "Hallo");
            Tier hund = new Tier(4, "Wuff");
            Tier katze = new Tier(4, "Miau");

            List<ILebewesen> viecher = new List<ILebewesen>();

            viecher.Add(mensch);
            viecher.Add(hund);
            viecher.Add(katze);

            foreach (var i in viecher)
            {
                i.GibLaut();
            }

            Console.ReadKey();

        }
    }
}

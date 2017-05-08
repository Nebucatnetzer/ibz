using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IBZ_Vererbung
{
    class Program
    {
        static void Main(string[] args)
        {
            Cat c = new Cat();
            c.ID = 5;

            Console.WriteLine(c.ID);
            Console.ReadKey();

            Dog d = new Dog();
            d.Name = "Sparky";
        }
    }
}

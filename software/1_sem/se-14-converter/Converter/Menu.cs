using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Converter
{
    static class Menu
    {
        public static double Print()
        {
            Console.WriteLine("What do you want to convert?");
            Console.WriteLine("Press 1 for cm to inches");
            Console.WriteLine("Press 2 for Miles to KM");
            Console.WriteLine("Press 0 to exit");
            var input = Console.ReadLine();
            return Convert.ToDouble(input);
        }
        public static void Continue()
        {
                Console.WriteLine("Press a key to continue.");
                Console.ReadKey();
        }
    }
}

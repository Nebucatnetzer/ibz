using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace string_length
{
    static class LengthCounter
    {
        public static void CountStringLength(string input)
            {
                if (input.Length <= 5 && input.Length > 0)
                { Console.WriteLine("1-5"); }
                else if (input.Length >= 6 && input.Length <= 15)
                {
                    Console.WriteLine("6-15");
                }
                else if (input.Length > 16)
                {
                    Console.WriteLine("16+");
                }
                else
                {
                    Console.WriteLine("Ungültig");
                }
            }
    }
}

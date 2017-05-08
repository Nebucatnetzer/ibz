using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace calculator
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(Converter.KmToNm(2345.5));
            Console.WriteLine(Converter.SquareRootOfPi());
            Console.WriteLine(Converter.ReturnLengthOfString("Dies ist ein Langer String"));
            Console.ReadKey();
        }
    }
}

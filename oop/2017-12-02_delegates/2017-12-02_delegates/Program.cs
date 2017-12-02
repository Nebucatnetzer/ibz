using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2017_12_02_delegates
{
    class Program
    {
        static void Main(string[] args)
        {
            delWrite dw;
            dw = WriteGreen;
            dw += WriteRed;
            dw("Hello World");
            Console.ReadKey();
        }

        public static void WriteGreen(string s)
        {
            Console.ForegroundColor = ConsoleColor.Green;
            Console.WriteLine(s);
        }

        public static void WriteRed(string s)
        {
            Console.ForegroundColor = ConsoleColor.Red;
            Console.WriteLine(s);
        }

        public delegate void delWrite(string s);

        
    }
}

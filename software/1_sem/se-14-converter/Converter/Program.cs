using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Converter
{
    class Program
    {

        static void Main(string[] args)
        {
            double UserInput = 3;
            do
            {
                UserInput = Menu.Print();
                if (UserInput == 1)
                {
                    Console.WriteLine("Please enter the amount");
                    string Amount = Console.ReadLine();
                    double Result = Converter.CmToInch(Convert.ToInt32(Amount));
                    Console.WriteLine(Result);
                    Menu.Continue();
                }
                if (UserInput == 2)
                {
                    Console.WriteLine("Please enter the amount");
                    string Amount = Console.ReadLine();
                    double Result = Converter.MilesToKM(Convert.ToInt32(Amount));
                    Console.WriteLine(Result);
                    Menu.Continue();
                }

                Console.Clear();
            } while (UserInput != 0);
           
        }
    }
}

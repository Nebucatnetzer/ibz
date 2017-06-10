using System;
using System.Collections.Generic;
using System.Data.SqlTypes;

namespace iterations
{
    internal class Program
    {
        public static void Main(string[] args)
        {
            string result = string.Empty;
            {
                Console.WriteLine("Please enter a number:");
                var input_number = int.Parse(Console.ReadLine());
                for (int i = 0; i < input_number; i++)
                {
                    if (i % 7 == 0)
                    {
                        result = result + i.ToString() + ",";
                    }
                }
                
                Console.WriteLine(result);
                
            }


        }
    }
}
using System;
using System.Collections.Generic;

namespace se_13_enumeration
{

    public enum Colors
    {
       Red,
       Green,
       Blue
    }
    
    
    internal class Program
    {
        public static void Main(string[] args)
        {
            Console.WriteLine("Please enter some text to colorize:");
            string consoleInput = Console.ReadLine();
            writeColoredText(Colors.Red, consoleInput);
            Console.ReadKey();
        }
        
        static void writeColoredText(Colors c, string s)
        {
            switch (c)
            {
                    case Colors.Blue:
                        Console.ForegroundColor = ConsoleColor.Blue;
                        break;
                    case Colors.Green:    
                        Console.ForegroundColor = ConsoleColor.Green;
                        break;
                    case Colors.Red:    
                        Console.ForegroundColor = ConsoleColor.Red;
                        break;
                     
            }
        Console.WriteLine(s);
    
        }
    }
}
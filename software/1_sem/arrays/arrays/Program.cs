using System;
using System.Collections.Generic;

namespace arrays
{
    internal class Program
    {
        public static void Main(string[] args)
        {
            int[] arr = new int[5];
            arr[0] = 1;
            arr[1] = 2;
            arr[2] = 3;
            arr[3] = 4;
            arr[4] = 5;

            for (int i = 0; i < 5; i++)
            {
                 Console.WriteLine(arr[i]);               
            } 
            
            Console.ReadLine();
        }
    }
}
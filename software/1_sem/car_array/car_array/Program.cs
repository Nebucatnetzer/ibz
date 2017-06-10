using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;

namespace car_array
{
    internal class Program
    {
        public static void Main(string[] args)
        {
            Auto[] arr = new Auto[5];
            for (int i = 0; i < 5; i++)
            {
                arr[i] = new Auto();
                arr[i].Autonummer = "BE12345" + i;
            }
            for (int i = 0; i < 3; i++)
            {
               Console.WriteLine(arr[i].Autonummer); 
            }
            for (int i = 0; i < 5; i++)
            {
                arr[i].Autonummer = "1";
               Console.WriteLine(arr[i].Autonummer); 
            } 
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace _2018_09_01_threads
{
    class Program
    {
        static void Main(string[] args)
        {
            Thread thread1 = new Thread(Method1);
            Thread thread2 = new Thread(Method2);
            thread1.Start();
            thread2.Start();
            Console.ReadLine();
        }
        static void Method1()
        {
            for (int i = 0; i < 500; i++)
            {
                lock (Locker)
                {
                    Console.WriteLine("T1 A " + Counter.ToString());
                    Counter += 1;
                    Console.WriteLine("T1 B " + Counter.ToString());
                    Console.WriteLine();
                }
            }
        }
        static void Method2()
        {
            for (int i = 0; i < 500; i++)
            {
                lock (Locker)
                {
                    Console.WriteLine("T2 A " + Counter.ToString());
                    Counter += 1;
                    Console.WriteLine("T2 B " + Counter.ToString());
                    Console.WriteLine();
                }
            }
        }
        public static int Counter { get; set; }
        static object Locker = new object();
    }
}
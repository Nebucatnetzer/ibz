using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2018_09_15_parallel_programming
{
    class Program
    {
        static void Main(string[] args)
        {
            var watch = System.Diagnostics.Stopwatch.StartNew();
            Console.WriteLine("Serial Start");
            SerialTest();
            watch.Stop();
            var serialelapsedMs = watch.ElapsedMilliseconds;
            var serialelapsedTicks = watch.ElapsedTicks;
            Console.WriteLine("Serial Stop");
            Console.WriteLine("Elapse Time: " + serialelapsedMs.ToString());
            Console.WriteLine("Elapsed Ticks: " + serialelapsedTicks.ToString());
            watch.Reset();
            Console.WriteLine("");
            Console.WriteLine("");
            Console.WriteLine("");
            Console.WriteLine("Parallel Start");
            watch.Start();
            ParallelTest();
            watch.Stop();
            var elapsedMs = watch.ElapsedMilliseconds;
            var elapsedTicks = watch.ElapsedTicks;
            Console.WriteLine("Parallel Stop");
            Console.WriteLine("Elapsed miliseconds: " + elapsedMs.ToString());
            Console.WriteLine("Elapsed Ticks: " + elapsedTicks.ToString());
            var factor = serialelapsedMs / elapsedMs;
            Console.WriteLine("Parallel is " + factor.ToString() + " times faster.");
            Console.ReadKey();
        }
        static void SerialTest()
        {
            double[] arr = new double[50000000];
            for (int i = 0; i < 50000000; i++)
            {
                arr[i] = Math.Pow(i, 0.333) * Math.Sqrt(Math.Sin(i));
            }
        }
        static void ParallelTest()
        {
            double[] arr = new double[50000000];
            Parallel.For(0, 50000000, i =>
            {
                arr[i] = Math.Pow(i, 0.333) * Math.Sqrt(Math.Sin(i));
            });
        }
    }
}

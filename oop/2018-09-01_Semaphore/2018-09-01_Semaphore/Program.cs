using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;

namespace _2018_09_01_Semaphore
{
    class Program
    {
        static Semaphore semaphoreObject = new Semaphore(3, 3);
        static void Main(string[] args)
        {
            for (int i = 0; i < 10; i++)
            {
                Thread thread = new Thread(DoWork);
                thread.Name = "Thread_" + i;
                thread.Start();
            }
            Console.ReadLine();
        }
        static void DoWork()
        {
            Console.WriteLine("{0} is waiting in QUEUE...", Thread.CurrentThread.Name);
            // Thread waits to get an available slot
            semaphoreObject.WaitOne();
            Console.WriteLine("{0} enters the Critical Section!", Thread.CurrentThread.Name);
            // Simulate work by waiting for a few seconds
            Thread.Sleep(5000);
            Console.WriteLine("{0} is leaving the Critical Section", Thread.CurrentThread.Name);
            // Release the slot.
            semaphoreObject.Release();
        }
    }
}

using System;
using System.Collections.Generic;

namespace collections
{
    internal class Program
    {
        public static void Main(string[] args)
        {
          List<CD> cdList = new List<CD>();
          cdList.Add(new CD("Amy McDonald", "This is the life"));
          cdList.Add(new CD("Arch Enemy", "This is War"));
          cdList.Add(new CD("Fleshgod Apocalypse", "Agony"));

            foreach (var item in cdList)
            {
               Console.WriteLine("List:" + item.Interpret + " " + item.AlbumTitel);
            }

          cdList.Add(new CD("Fleshgod Apocalypse", "Agony"));

         // example code for a queue
          Queue<CD> cdQueue = new Queue<CD>();
          cdQueue.Enqueue(new CD("Winterfyleth","Forest"));
          cdQueue.Enqueue(new CD("Einherjer","Winter"));
          cdQueue.Enqueue(new CD("Wintersun","Time 1"));

          CD result = cdQueue.Peek();
          Console.WriteLine("Queue before Dequeue:" + result.Interpret);
          cdQueue.Dequeue();
          CD result2 = cdQueue.Peek();
          Console.WriteLine("Queue after Dequeue:" + result2.Interpret);

          foreach (var queueitem in cdQueue)
          {
           Console.WriteLine("Queue:" + queueitem.Interpret);
          }

         //example code for a stack
          Stack<CD> cdStack = new Stack<CD>();
          cdStack.Push(new CD("Dimmu Borgir","Dimmu Borgir"));
          cdStack.Push(new CD("Children of Bodom","Are you dead yet"));
          cdStack.Push(new CD("Windir","1184"));

          CD topcd = cdStack.Peek();
          Console.WriteLine("Stack befor Pop:" + topcd.Interpret);

          CD takeawaycd = cdStack.Pop();
          CD topcd2 = cdStack.Peek();
          Console.WriteLine("Stack after Pop:" + topcd2.Interpret);

          foreach (var stackitem in cdStack)
          {
           Console.WriteLine("Stack:" + stackitem.Interpret);
          }
        }
    }
}

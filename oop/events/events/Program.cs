using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace events
{
    class Program
    {
        static void Main(string[] args)
        {
            Publisher pub = new Publisher();
            Subscriber sub1 = new Subscriber();
            Subscriber sub2 = new Subscriber();


            pub.Register(sub1.WriteMessage1);
            pub.Register(sub2.WriteMessage1);
            pub.Register(sub1.WriteMessage2);

            pub.Publish("Test");
            Console.ReadKey();

        }
    }
}

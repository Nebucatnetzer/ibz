using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace events
{
    public class Subscriber
    {
        public void WriteMessage1(EventArgument s)
        {
            Console.WriteLine(s.message + "Message 1");
        }
        public void WriteMessage2(EventArgument s)
        {
            Console.WriteLine(s.message + "Message 2");
        }
    }
}

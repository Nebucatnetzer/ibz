using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace events
{
    class Publisher
    {
        public delegate void EventDelegate(EventArgument s);
        public event EventDelegate eventHandler;

        public void Register(EventDelegate s)
        {
            eventHandler += s;
        }

        public void Publish (string m)
        {
            EventArgument ea = new EventArgument(m);
            eventHandler(ea);
        }
        
    }
}

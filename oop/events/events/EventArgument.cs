using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace events
{
    public class EventArgument : EventArgs
    {
        public string message;
        public EventArgument(string s)
        {
            this.message = s;
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace design_patterns
{
    public abstract class ClientAbstract
    {
        public Mediator mediator;

        public ClientAbstract(Mediator _m)
        {
            this.mediator = _m;
        }

        public void SendMessageToMediator(string _msg)
        {
            Console.WriteLine("Client send message to Mediator: " + _msg);
            this.mediator.ClientToDevTeam(_msg);
        }
        public void RecieveMessageFromMediator(string _msg)
        {
            Console.WriteLine("Client recievce message from Mediator: " + _msg);
        }
    }
    public class Client: ClientAbstract
    {
        public Client(Mediator _m) : base(_m)
        {

        }
    }
}

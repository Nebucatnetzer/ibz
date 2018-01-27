using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace design_patterns
{
    public class Mediator
    {
        public ClientAbstract client;
        public DevTeamAbstract devteam;

        public void ClientToDevTeam(string _msg)
        {
            Console.WriteLine("Mediator send message to devteam: " + _msg);
            devteam.RecieveMessageFromMediator(_msg);
        }

        public void DevTeamToClient(string _msg)
        {
            Console.WriteLine("Mediator send message to client: " + _msg);
            client.RecieveMessageFromMediator(_msg);
        }
    }
}

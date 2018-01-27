using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace design_patterns
{
    public abstract class DevTeamAbstract
    {
        public Mediator mediator;

        public DevTeamAbstract(Mediator _m)
        {
            this.mediator = _m;
        }

        public void SendMessageToMediator(string _msg)
        {
            Console.WriteLine("DevTeam send message to Mediator: " + _msg);
            this.mediator.DevTeamToClient(_msg);
        }
        public void RecieveMessageFromMediator(string _msg)
        {
            Console.WriteLine("DevTeam recievce message from Mediator: " + _msg);
        }
    }

    public class DevTeam : DevTeamAbstract
    {
        public DevTeam(Mediator _m) : base(_m)
        {

        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace design_patterns
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Trigger LazySingleton:");
            Console.ReadKey();
            LazySingleton.Instance.value = "Hello from LazySingleton";
            Console.WriteLine(LazySingleton.Instance.value);
            Console.WriteLine("--------");
            Console.WriteLine("Trigger EagerSingleton:");
            Console.ReadKey();
            EagerSingleton.Instance.value = "Hello from EagerSingleton";
            Console.WriteLine(EagerSingleton.Instance.value);
            Console.ReadKey();
            Console.WriteLine("--------");
            Console.WriteLine();
            Console.WriteLine();
            Console.WriteLine();
            Console.WriteLine("Proxys");
            Console.WriteLine("--------");
            Driver max = new Driver(17);
            Driver heinz = new Driver(12);
            ProxyCar ferarri = new ProxyCar();
            Console.WriteLine("Let max drive");
            ferarri.MoveCar(max);
            Console.WriteLine();
            Console.WriteLine("Let heinz drive");
            ferarri.MoveCar(heinz);
            Console.WriteLine();
            Console.WriteLine();
            Console.WriteLine();
            Console.WriteLine("Mediator");
            Console.WriteLine("--------");
            Mediator mediator = new Mediator();
            Client client = new Client(mediator);
            DevTeam devteam = new DevTeam(mediator);
            mediator.client = client;
            mediator.devteam = devteam;
            client.SendMessageToMediator("Hello DevTeam");
            devteam.SendMessageToMediator("Hello Client");
            Console.ReadKey();

        }
    }
}

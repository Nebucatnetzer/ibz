using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using _2018_05_18_wcf_client.Service;

namespace _2018_05_18_wcf_client
{
    class Program
    {
        static void Main(string[] args)
        {
            FirstServiceClient client = new FirstServiceClient();

            Console.WriteLine("Get Date");
            Console.WriteLine(client.GetCurrentDate());
            Console.WriteLine();
            Console.WriteLine("Multiply 2 and 8");
            Console.WriteLine(client.Multiply(2, 8));
            Console.WriteLine();
            Console.WriteLine("Get a bike");
            MotorCycle bike = client.GetMotorCycle();
            Console.WriteLine("Write Bike ID");
            Console.WriteLine(bike.ID);
            Console.WriteLine("Number of Wheels");
            Console.WriteLine(bike.NumberOfWheels);
            Console.WriteLine("Brand");
            Console.WriteLine(bike.Brand);
            Console.WriteLine("Has Side Cart");
            Console.WriteLine(bike.HasSideCart);
            // Use the 'client' variable to call operations on the service.

            // Always close the client.
            client.Close();
            Console.ReadKey();
        }
    }
}

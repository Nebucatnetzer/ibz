using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace first_app
{
    class Program
    {
        static void Main(string[] args)
        {

            Calculator c1 = new Calculator();

            Console.WriteLine("Please enter a number");
            string string1 = Console.ReadLine();
            Console.WriteLine("Please enter a second number");
            string string2 = Console.ReadLine();
            int value1 = int.Parse(string1);
            int value2 = int.Parse(string2);
            int result = c1.Add(value1,value2);
            Console.WriteLine("The sum of your numbers is: " + result);


            Console.WriteLine("Please enter your car number");
            string car_number = Console.ReadLine();
            Car first_car = new Car(car_number);
            Console.WriteLine(first_car.number);

            Console.ReadKey();

        }
    }
}

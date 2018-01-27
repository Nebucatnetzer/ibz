using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace design_patterns
{
    class ProxyCar : ICar
    {

        Car realCar = null;

        public void MoveCar(Driver _driver)
        {
            if (realCar == null)
            {
                realCar = new Car();
            }
            Console.WriteLine("The proxy is checking the driver age.");
            if (_driver.age > 16)
            {
                Console.WriteLine("Check passed.");
                realCar.MoveCar(_driver);
            }
            else
            {
                Console.WriteLine("You're not old enough");
            }
        }
    }
}

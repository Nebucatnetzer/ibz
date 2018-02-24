using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2018_02_24_cargo
{
    class Program
    {
        static void Main(string[] args)
        {
            Customer max = new Customer();
            max.first_name = "Max";
            max.name = "Muster";

            Container container_max = new Container();


            Order order_max = new Order();
            order_max.customer = max;
            order_max.container = container_max;
            order_max.price_per_box = 10;
            order_max.order_id = 1;

            for (int i = 0; i < 10 ; i++)
            {
                order_max.container.items.Add(new Palette());
                for (int ii = 0; ii < 5; ii++)
                {
                    order_max.container.items[i].items.Add(new Box());
                }

            }
            decimal order_price = order_max.price();
            decimal order_price_with_tax = order_max.price_with_tax();
            Console.WriteLine(order_price);
            Console.WriteLine(order_price_with_tax);
            Console.ReadKey();
        }
    }
}

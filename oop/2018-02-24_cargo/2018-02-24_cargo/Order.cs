using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2018_02_24_cargo
{
    class Order
    {
        public Customer customer { get; set; }
        public int order_id { get; set; }
        public Container container { get; set; }
        public decimal price_per_box { get; set;}

        public decimal price()
        {
            decimal price = 0;
            container = this.container;
            foreach (var palette in container.items)
            {
                foreach (var box in palette.items)
                {
                    price += this.price_per_box;
                }

            }

            return price;
        }
        public decimal price_with_tax()
        {
            decimal price = 0;
            container = this.container;
            foreach (var palette in container.items)
            {
                foreach (var box in palette.items)
                {
                    price += this.price_per_box;
                }

            }

            return (price * Convert.ToDecimal(1.077)) ;
        }
    }
}

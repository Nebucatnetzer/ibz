using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2018_02_24_sep
{
    class Order
    {
        public List<Room> rooms { get; set; }
        public Customer customer { get; set; }
        public Hotel hotel { get; set; }
        public int order_id { get; set; }
        public DateTime date { get; }

        public Order(Hotel hotel, Customer customer)
        {
            this.rooms = new List<Room>();
            this.date = DateTime.Now;
            this.hotel = hotel;
            this.customer = customer;
        }

        public decimal price(Boolean mwst)
        {
            decimal price = 0;
            foreach (var room in this.rooms)
            {
                price += room.price;
            }

        if (mwst)
            {
                return price * Convert.ToDecimal(1.08);
            }
        else
            {
                return price;
            }
        }
    }
}

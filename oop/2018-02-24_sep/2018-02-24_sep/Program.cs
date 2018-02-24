using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2018_02_24_sep
{
    class Program
    {
        static void Main(string[] args)
        {
            Room single_room = new Room(1, 100, "Einzelzimmer");
            Room double_room= new Room(2, 150, "Doppelzimmer");
            Room teaching_room = new Room(15, 500, "Schulungsraum");
            Room conference_room = new Room(50, 1500, "Konferenzraum");

            Hotel hotel = new Hotel("Alpenglühn");

            City company_city = new City("Musterstadt", 3600);
            City customer_city = new City("CustomerCity", 3700);

            Company company = new Company("Test AG", "Firmenstrasse 12", company_city);
            Customer customer = new Customer("Muster", "Max", "Musterstrasse", customer_city);
            customer.company = company;
            Order order = new Order(hotel, customer);

            hotel.rooms.Add(single_room);
            hotel.rooms.Add(double_room);
            hotel.rooms.Add(teaching_room);
            hotel.rooms.Add(conference_room);

            order.order_id = 1500;
            order.rooms.Add(single_room);
            order.rooms.Add(single_room);
            order.rooms.Add(double_room);
            order.rooms.Add(teaching_room);


            Console.WriteLine("Kunde: " + order.customer.company.name);
            Console.WriteLine("Hotel: " + order.hotel.name);
            Console.WriteLine("Bestellung Nr. " + order.order_id + " vom " + order.date);
            foreach (Room room in order.rooms)
            {
                Console.WriteLine(room.name + ", " + "Kapazität: " + room.capacity + " Person(en)" + " à CHF " + room.price);
            }
            Console.WriteLine();
            Console.WriteLine("Total ohne MwSt: " + order.price(false));
            Console.WriteLine("Total mit MwSt: " + order.price(true));
            Console.ReadKey();
        }
    }
}

using System;
using System.Linq;
using System.Collections.Generic;
using AirlineServer.Models;
using AirlineServer.Helper;

namespace AirlineServer
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change
    // the class name "AirlineService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please
    // select AirlineService.svc or AirlineService.svc.cs at the Solution
    // Explorer and start debugging.
    public class AirlineService : IAirlineService
    {

        public List<Flight> flights = new List<Flight>();

        public Flight BookFlight(Flight flight,
                                 int numberOfSeats)
        {
           Flight flightToBook = this.flights.Single(f => f == flight);
           if (flightToBook != null)
           {
              flightToBook.BookedSeats += numberOfSeats;
              return flightToBook;
           }
           else
           {
              return flight;
           }
        }
        public Flight CancelFlight(Flight flight, int numberOfSeats)
        {
           Flight flightToBook = this.flights.Single(f => f == flight);
           if (flightToBook != null)
           {
              flightToBook.BookedSeats -= numberOfSeats;
              return flightToBook;
           }
           else
           {
              return flight;
           }
        }
        public ICollection<IEnumerable<Flight>> GetFlights(DateTime startTime,
                                                           DateTime endTime,
                                                           string origin,
                                                           string destination,
                                                           int numberOfSeats)
        {
            ICollection<IEnumerable<Flight>> freeFlights = new List<IEnumerable<Flight>>();
            freeFlights = FindFlight.Search(this.flights, startTime,
                                            endTime, origin,
                                            destination, numberOfSeats);
            return freeFlights;
        }

        public AirlineService(){
            List<Flight> flights = new List<Flight>();

            Airline lufthansa = new Airline { Name = "Lufthansa" };
            Airline easyjet = new Airline { Name = "Easyjet" };

            City zurich = new City { Name = "Zurich", ZipCode = 9000 };
            City basel = new City { Name = "Basel", ZipCode = 3000 };
            City genf = new City { Name = "Genf", ZipCode = 1000 };
            City belp = new City { Name = "Belp", ZipCode = 5000 };

            Airport azurich = new Airport
            {
                ShortName = "ZRH",
                Name = "Zurich Airport",
                City = zurich
            };

            Airport abasel = new Airport
            {
                ShortName = "BSL",
                Name = "Basel Airport",
                City = basel
            };

            Airport agenf = new Airport
            {
                ShortName = "GNF",
                Name = "Geneva Airport",
                City = genf
            };

            Airport abelp = new Airport
            {
                ShortName = "BLP",
                Name = "Belp Airport",
                City = belp
            };

            DateTime zurichStartDate = new DateTime(2018, 08, 15, 12, 00,
                                                        00, 00);
            DateTime baselStartDate = new DateTime(2018, 08, 15, 12, 00,
                                                    00, 00);
            DateTime genfStartDate = new DateTime(2018, 08, 19, 12, 00,
                                                    00, 00);
            DateTime belpStartDate = new DateTime(2018, 08, 09, 12, 00,
                                                    00, 00);

            Flight zurich_basel = new Flight
            {
                Airline = lufthansa,
                Name = "LFH1206",
                StartTime = zurichStartDate,
                Duration = 2.50F,
                Origin = azurich,
                Destination = abasel,
                MaxSeats = 10,
                BookedSeats = 0
            };
            Flight basel_zurich = new Flight
            {
                Airline = easyjet,
                Name = "ESZ666",
                StartTime = baselStartDate,
                Duration = 7.20F,
                Origin = abasel,
                Destination = azurich,
                MaxSeats = 10,
                BookedSeats = 0
            };
            Flight genf_zurich = new Flight
            {
                Airline = easyjet,
                Name = "ESZ666",
                StartTime = genfStartDate,
                Duration = 7.20F,
                Origin = agenf,
                Destination = azurich,
                MaxSeats = 10,
                BookedSeats = 0
            };
            Flight belp_zurich = new Flight
            {
                Airline = easyjet,
                Name = "ESZ666",
                StartTime = belpStartDate,
                Duration = 7.20F,
                Origin = abelp,
                Destination = azurich,
                MaxSeats = 10,
                BookedSeats = 0
            };
            this.flights.Add(zurich_basel);
            this.flights.Add(basel_zurich);
            this.flights.Add(genf_zurich);
            this.flights.Add(belp_zurich);
        }
    }
}

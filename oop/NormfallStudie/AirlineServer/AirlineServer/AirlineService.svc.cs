using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
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
        public Flight BookFlight(Flight flight, int numberOfSeats)
        {
            throw new NotImplementedException();
        }
        public Flight CancelFlight(Flight flight, int numberOfSeats)
        {
            throw new NotImplementedException();
        }
        public ICollection<ICollection<Flight>> GetFlights(DateTime startTime,
                                              DateTime endTime,
                                              string cityName,
                                              int numberOfSeats)
        {
            ICollection<ICollection<Flight>> free_flights = new List<ICollection<Flight>>();
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
                City = zurich
            };

            Airport agenf = new Airport
            {
                ShortName = "GNF",
                Name = "Geneva Airport",
                City = zurich
            };

            Airport abelp = new Airport
            {
                ShortName = "BLP",
                Name = "Belp Airport",
                City = zurich
            };

            DateTime zurichStartDate = new DateTime(2018, 06, 15, 12, 00,
                                                        00, 00);
            DateTime baselStartDate = new DateTime(2018, 06, 16, 16, 00,
                                                      00, 00);
            DateTime genfStartDate = new DateTime(2018, 06, 19, 16, 00,
                                                      00, 00);
            DateTime belpStartDate = new DateTime(2018, 06, 09, 16, 00,
                                                      00, 00);

            Flight zurich_basel = new Flight
            {
                Airline = lufthansa,
                Name = "LFH1206",
                StartTime = zurichStartDate,
                Duration = 2.50F,
                FromAirport = azurich,
                ToAirport = abasel,
                MaxSeats = 10,
                BookedSeats = 0
            };
            Flight basel_belp = new Flight
            {
                Airline = easyjet,
                Name = "ESZ666",
                StartTime = baselStartDate,
                Duration = 7.20F,
                FromAirport = abasel,
                ToAirport = abelp,
                MaxSeats = 10,
                BookedSeats = 0
            };
            Flight genf_zurich = new Flight
            {
                Airline = easyjet,
                Name = "ESZ666",
                StartTime = genfStartDate,
                Duration = 7.20F,
                FromAirport = agenf,
                ToAirport = azurich,
                MaxSeats = 10,
                BookedSeats = 0
            };
            Flight belp_zurich = new Flight
            {
                Airline = easyjet,
                Name = "ESZ666",
                StartTime = belpStartDate,
                Duration = 7.20F,
                FromAirport = abelp,
                ToAirport = azurich,
                MaxSeats = 10,
                BookedSeats = 0
            };
            flights.Add(zurich_basel);
            flights.Add(basel_belp);
            flights.Add(genf_zurich);
            flights.Add(belp_zurich);
            FindFlight.Search(flights, startTime, endTime,
                                                   cityName);
        }
    }
}

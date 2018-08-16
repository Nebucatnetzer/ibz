using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AirlineServer.Models;

namespace AirlineServer.Helper
{
    public static class FindFlight
    {
        public static ICollection<IEnumerable<Flight>> Search(
                                                    ICollection<Flight> flights,
                                                    DateTime startTime,
                                                    DateTime endTime,
                                                    string destination,
                                                    string origin,
                                                    int numberOfSeats)
        {
            ICollection<IEnumerable<Flight>> free_flights =
               new List<IEnumerable<Flight>>();

            var flightsWithSeats = FindFlight
               .FlightsWithSeats(flights, numberOfSeats);
            var flightsTo= FindFlight
               .FlightsTo(flightsWithSeats, destination, origin, startTime);
            var flightsBack = FindFlight
               .FlightsBack(flightsWithSeats, destination, origin, endTime);

            free_flights.Add(flightsTo);
            free_flights.Add(flightsBack);
            return free_flights;
        }
        public static IEnumerable <Flight> FlightsWithSeats(
           ICollection<Flight> raw_flights,
           int numberOfSeats)
        {
            IEnumerable<Flight> flights = new List<Flight>();
            flights = raw_flights.Where(f => (f.MaxSeats - f.BookedSeats)
                                        > numberOfSeats);
            return flights;
        }
        public static IEnumerable <Flight> FlightsTo(IEnumerable<Flight> raw_flights,
                                                    string destination,
                                                    string origin,
                                                    DateTime startTime)
        {
            IEnumerable<Flight> flights = new List<Flight>();
            flights = raw_flights.Where(f =>
                                        f.Destination.City.Name == destination
                                        & f.Origin.City.Name == origin
                                        & f.StartTime == startTime);
            return flights;
        }
        // Since this function searches for a flight back the arguments
        // destination and origin get used in reverse.
        public static IEnumerable<Flight> FlightsBack(IEnumerable<Flight> raw_flights,
                                                      string destination,
                                                      string origin,
                                                      DateTime endTime)
        {
            IEnumerable<Flight> flights = new List<Flight>();
            flights = raw_flights.Where(f =>
                                        f.Destination.City.Name == origin
                                        & f.Origin.City.Name == destination
                                        & f.StartTime == endTime);
            return flights;
        }
    }
}

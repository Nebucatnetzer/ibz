using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AirlineServer.Models;

namespace AirlineServer.Helper
{
    public static class FindFlight
    {
        public static ICollection<ICollection<Flight>> Search(ICollection<Flight> flights,
                                                    DateTime startTime,
                                                    DateTime endTime,
                                                    string cityName)
        {
            ICollection<ICollection<Flight>> free_flights =
               new List<ICollection<Flight>>();

            var flightsWithSeats = FindFlight.FlightsWithSeats(flights);
            var flightsTo = FindFlight.FlightsTo(flightsWithSeats,
                                                 cityName, startTime);
            var flightsFrom = FindFlight.FlightsFrom(flightsWithSeats,
                                                     cityName, endTime);
            free_flights.Add(flightsTo);
            free_flights.Add(flightsFrom);
            return free_flights;
        }
        public static ICollection<Flight> FlightsWithSeats(ICollection<Flight> raw_flights)
        {
            ICollection<Flight> flights = new List<Flight>();
            foreach (var flight in raw_flights)
            {
                if (flight.MaxSeats > flight.BookedSeats)
                {
                    flights.Add(flight);
                }
            }
            return flights;
        }
        public static ICollection<Flight> FlightsTo(ICollection<Flight> raw_flights,
                                                    string cityName,
                                                    DateTime startTime)
        {
            ICollection<Flight> flights = new List<Flight>();
            foreach (var flight in raw_flights)
            {
                if (flight.ToAirport.City.Name == cityName
                    && flight.StartTime == startTime)
                {
                    flights.Add(flight);
                }
            }
            return flights;
        }
        public static ICollection<Flight> FlightsFrom(ICollection<Flight> raw_flights,
                                                    string cityName,
                                                    DateTime endTime)
        {
            ICollection<Flight> flights = new List<Flight>();
            foreach (var flight in raw_flights)
            {
                if (flight.ToAirport.City.Name == cityName
                    && flight.StartTime == endTime)
                {
                    flights.Add(flight);
                }
            }
            return flights;
        }
    }
}

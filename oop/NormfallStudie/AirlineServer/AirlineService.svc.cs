using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using AirlineServer.Models;

namespace AirlineServer
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "AirlineService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select AirlineService.svc or AirlineService.svc.cs at the Solution Explorer and start debugging.
    public class AirlineService : IAirlineService
    {
        public List<Flight> GetFreeFlights()
        {
            List<Flight> free_flights = new List<Flight>();
            Airline lufthansa = new Airline { name = "Lufthansa" };
            Airline easyjet = new Airline { name = "Easyjet" };
            DateTime lufthansa_startdate = new DateTime(2018, 06, 15, 12, 00, 00, 00);
            DateTime easyjet_startdate = new DateTime(2018, 06, 11, 16, 00, 00, 00);

            Flight hamburg_zurich = new Flight
            {
                Airline = lufthansa,
                Name = "LFH1206",
                StartTime = lufthansa_startdate,
                Duration = 2.50F,
                FromCityShortName = "HAM",
                ToCityShortName = "ZRH"
            };
            Flight edingburgh_moskow = new Flight
            {
                Airline = easyjet,
                Name = "ESZ666",
                StartTime = easyjet_startdate,
                Duration = 7.20F,
                FromCityShortName = "EDI",
                ToCityShortName = "MOS"
            };
            free_flights.Add(hamburg_zurich);
            free_flights.Add(edingburgh_moskow);
            return free_flights;
        }
    }
}

using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using System.Linq;
using System.Web;
using Plattform;

namespace Plattform.Models
{
    [DataContract]
    public class Flight
    {
        [DataMember]
        public int FlightID { get; set; }
        [DataMember]
        public Airline Airline { get; set; }
        [DataMember]
        public string Name { get; set; }
        [DataMember]
        public DateTime StartTime { get; set; }
        [DataMember]
        public float Duration { get; set; }
        [DataMember]
        public string FromCityShortName { get; set; }
        [DataMember]
        public string ToCityShortName { get; set; }

        public Flight (AirlineService.Flight flight)
        {
            this.Airline = new Airline(flight.Airline);
            this.Name = flight.Name;
            this.StartTime = flight.StartTime;
            this.Duration = flight.Duration;
            this.FromCityShortName = flight.FromCityShortName;
            this.ToCityShortName = flight.ToCityShortName;
        }
    }
}
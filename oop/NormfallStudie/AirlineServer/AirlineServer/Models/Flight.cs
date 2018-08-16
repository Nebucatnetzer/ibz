using System;
using System.Runtime.Serialization;

namespace AirlineServer.Models
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
        public Airport Origin { get; set; }
        [DataMember]
        public Airport Destination { get; set; }
        public int MaxSeats { get; set; }
        public int BookedSeats { get; set; }
    }
}

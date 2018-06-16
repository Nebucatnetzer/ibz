using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using System.Linq;
using System.Web;

namespace AirlineServer.Models
{
    [DataContract]
    public class Flight
    {
        [DataMember]
        public int ID { get; set; }
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
    }
}
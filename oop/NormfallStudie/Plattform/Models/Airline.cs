using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;
using Plattform;

namespace Plattform.Models
{
    [DataContract]
    public class Airline
    {
        [DataMember]
        public int AirlineID { get; set; }
        [DataMember]
        public string Name { get; set; }
        public Airline(AirlineService.Airline airline)
        {
            this.Name = airline.Name;
        }
    }
}

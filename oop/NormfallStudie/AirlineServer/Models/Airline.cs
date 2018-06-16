using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;

namespace AirlineServer.Models
{
    [DataContract]
    public class Airline
    {
        [DataMember]
        public int ID { get; set; }
        [DataMember]
        public string name { get; set; }
    }
}
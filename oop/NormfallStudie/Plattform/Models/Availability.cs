using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Web;

namespace Plattform.Models
{
    [DataContract]
    public class Availability
    {
        [DataMember]
        public int AvailabilityID { get; set; }
        [DataMember]
        public DateTime From { get; set; }
        [DataMember]
        public DateTime To { get; set; }
        public ICollection<Room> Rooms { get; set; }
    }
}
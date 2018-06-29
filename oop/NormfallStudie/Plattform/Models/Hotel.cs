using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Web;

namespace Plattform.Models
{
    [DataContract]
    public class Hotel
    {
        [DataMember]
        public int HotelID { get; set; }
        [DataMember]
        public int Name { get; set; }
        [DataMember]
        public City City { get; set; }
    }
}
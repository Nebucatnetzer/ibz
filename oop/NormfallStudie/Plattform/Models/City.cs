using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Web;

namespace Plattform.Models
{
    [DataContract]
    public class City
    {
        [DataMember]
        public int CityID { get; set; }
        [DataMember]
        public string Name { get; set; }
        [DataMember]
        public int ZipCode { get; set; }
        [DataMember]
        public string ShortName { get; set; }
    }
}
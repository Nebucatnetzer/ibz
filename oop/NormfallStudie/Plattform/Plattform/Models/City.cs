﻿using System.Runtime.Serialization;

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
        public City() { }
        public City(string name, int zipCode, string shortName)
        {
            this.Name = name;
            this.ZipCode = zipCode;
            this.ShortName = shortName;
        }
    }
}

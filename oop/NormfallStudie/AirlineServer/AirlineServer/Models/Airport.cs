using System.Runtime.Serialization;

namespace AirlineServer.Models
{
    [DataContract]
    public class Airport
    {
        [DataMember]
        public string ShortName { get; set; }
        [DataMember]
        public string Name { get; set; }
        [DataMember]
        public City City { get; set; }
    }
}

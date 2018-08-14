using System.Runtime.Serialization;

namespace AirlineServer.Models
{
    [DataContract]
    public class Airline
    {
        [DataMember]
        public int AirlineID { get; set; }
        [DataMember]
        public string Name { get; set; }
    }
}

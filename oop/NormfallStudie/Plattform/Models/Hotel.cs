using System.Runtime.Serialization;

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

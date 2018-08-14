using System.Runtime.Serialization;

namespace Plattform.Models
{
    [DataContract]
    public class RoomAvailability
    {
        [DataMember]
        public Room Room;
        [DataMember]
        public Availability Availability;
        [DataMember]
        public Customer Customer;
    }
}

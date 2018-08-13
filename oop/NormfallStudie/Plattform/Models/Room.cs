using System.Collections.Generic;
using System.Runtime.Serialization;

namespace Plattform.Models
{
    [DataContract]
    public class Room
    {
        [DataMember]
        public int RoomID { get; set; }
        [DataMember]
        public RoomType RoomType { get; set; }
        [DataMember]
        public Hotel Hotel { get; set; }
        [DataMember]
        public ICollection<Availability> Availability { get; set; }
    }
}

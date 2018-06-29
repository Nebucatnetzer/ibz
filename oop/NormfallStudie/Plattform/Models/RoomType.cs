using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Web;

namespace Plattform.Models
{
    [DataContract]
    public class RoomType
    {
        [DataMember]
        public int RoomTypeID { get; set; }
        [DataMember]
        public string Name { get; set; }
    }
}
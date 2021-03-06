﻿using System.Runtime.Serialization;

namespace Plattform.Models
{
    [DataContract]
    public class RoomType
    {
        [DataMember]
        public int RoomTypeID { get; set; }
        [DataMember]
        public string Name { get; set; }
        public RoomType() { }
        public RoomType(string name)
        {
            this.Name = name;
        }
    }
}

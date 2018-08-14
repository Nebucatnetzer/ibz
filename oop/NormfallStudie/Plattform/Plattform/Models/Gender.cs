using System.Runtime.Serialization;

namespace Plattform.Models
{
    [DataContract]
    public class Gender
    {
        [DataMember]
        public int GenderID { get; set; }
        [DataMember]
        public string Name { get; set; }
        public Gender(string name)
        {
            this.Name = name;
        }
    }
}

using System.Runtime.Serialization;

namespace Plattform.Models
{
    [DataContract]
    public class Salutation
    {
        [DataMember]
        public int SalutationID { get; set; }
        public string Name { get; set; }

        public Salutation(string name)
        {
            this.Name = name;
        }
    }
}

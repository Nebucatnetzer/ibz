using System.Collections.Generic;
using System.Runtime.Serialization;

namespace Plattform.Models
{
    [DataContract]
    [KnownType(typeof(Customer))]
    public class Person
    {
        [DataMember]
        public int PersonID { get; set; }
        [DataMember]
        public string FirstName { get; set; }
        [DataMember]
        public string LastName { get; set; }
        [DataMember]
        public virtual Gender Gender { get; set; }
        [DataMember]
        public virtual Salutation Salutation { get; set; }
        [DataMember]
        public string StreetName { get; set; }
        [DataMember]
        public string StreetNumber { get; set; }
        [DataMember]
        public virtual City City { get; set; }

        public Person() { }
        public Person (string firstName, string lastName, Gender gender,
                       Salutation salutation, string streetName, string
                       streetNumber, City city)
        {
            this.FirstName = firstName;
            this.LastName = lastName;
            this.Gender = gender;
            this.Salutation = salutation;
            this.StreetName = streetName;
            this.StreetNumber = streetNumber;
            this.City = city;
        }
    }
}

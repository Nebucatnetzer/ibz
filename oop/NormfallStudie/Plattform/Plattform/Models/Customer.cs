using System.Runtime.Serialization;
using System.ComponentModel.DataAnnotations.Schema;

namespace Plattform.Models
{
    [Table("Customers")]
    [DataContract]
    public class Customer : Person
    {
        public Customer() { }
        public Customer(string firstName, string lastName, Gender gender,
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

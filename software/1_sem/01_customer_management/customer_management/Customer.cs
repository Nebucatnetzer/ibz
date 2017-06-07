using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace customer_management
{
    class Customer
    {
        public int ID { get; set; }
        public string Adresse { get; set; }


    }

    class PrivatCustomer : Customer
    {
        public DateTime Birthday { get; set; }
        public string ReturnBirthday()
        {
            return Birthday.Year.ToString();
        }

    }

    class BusinessCustomer : Customer
    {
        public bool MwstRequired { get; set; }
        public decimal MwstValue { get; set; }
        public decimal PriceWithMwst { get; set; }
        public decimal CalculateMwstValue(decimal _input)
        {

            return _input * (MwstValue / 100);
        }

    }
}

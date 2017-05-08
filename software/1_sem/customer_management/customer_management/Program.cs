using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace customer_management
{
    class Program
    {
        static void Main(string[] args)
        {

            PrivatCustomer pc = new PrivatCustomer();
            pc.ID = 5;
            pc.Adresse = "Untertrasse 14";
            pc.Birthday = Convert.ToDateTime("1989-07-31");

            Console.WriteLine(pc.ReturnBirthday());

            BusinessCustomer bc = new BusinessCustomer();
            bc.ID = 6;
            bc.MwstRequired = true;
            bc.MwstValue = Convert.ToDecimal("8.0");

            Console.WriteLine(bc.CalculateMwstValue(120));

            Console.ReadKey();


        }
    }
}

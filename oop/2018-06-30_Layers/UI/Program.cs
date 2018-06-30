using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BL;
using Common;

namespace UI
{
    class Program
    {
        static void Main(string[] args)
        {
            PersonBL bl = new PersonBL();            
            Person person = bl.GetSinglePerson(5);
            Console.WriteLine(person.ID);
            Console.WriteLine(person.Name);
            Console.ReadKey();
        }
    }
}

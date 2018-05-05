using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace _2018_05_05_services
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "FirstService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select FirstService.svc or FirstService.svc.cs at the Solution Explorer and start debugging.
    public class FirstService : IFirstService
    {
        public Person GetPerson()
        {
            Person person = new Person();
            person.firstName = "Max";
            person.lastName = "Muster";
            return person;
        }

        public string HelloWorld()
        {
            return "Hello World";
        }
    }
}

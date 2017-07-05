using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IBZ_Vererbung
{
    abstract class Animal
    {
        public int ID { get; set; }
        public string GibLaut()
        {
            return "";
        }
    }
    class Cat : Animal
    {

    }

    class Dog : Animal
    {
        public string Name { get; set; }
    }
}

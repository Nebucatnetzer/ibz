using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace first_app
{
    class Car
    {
// neue methode
        public string number { set; get; }

// alte methode
//        private string _number;
//
//        public string number
//        {
//            get { return _number; }
//            set { _number = value; }
//        }
  
        public Car(string _number = "999")
        {
            this.number = _number;
        }
    }
}

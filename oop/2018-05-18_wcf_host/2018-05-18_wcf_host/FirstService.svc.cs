using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace _2018_05_18_wcf_host
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "FirstService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select FirstService.svc or FirstService.svc.cs at the Solution Explorer and start debugging.
    public class FirstService : IFirstService
    {
        public DateTime GetCurrentDate()
        {
            return DateTime.Now;
        }

        public MotorCycle GetMotorCycle()
        {
            MotorCycle m = new MotorCycle
            {
                ID = 1,
                NumberOfWheels = 2,
                Brand = "Harley",
                HasSideCart = false
            };
            return m;
        }

        public int Multiply(int _a, int _b)
        {
            return (_a * _b);
        }
    }
}

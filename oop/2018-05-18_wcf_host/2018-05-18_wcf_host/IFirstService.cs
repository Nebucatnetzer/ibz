using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace _2018_05_18_wcf_host
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IFirstService" in both code and config file together.
    [ServiceContract]
    public interface IFirstService
    {
        [OperationContract]
        DateTime GetCurrentDate();
        [OperationContract]
        int Multiply(int _a, int _b);
        [OperationContract]
        MotorCycle GetMotorCycle();
    }

    [DataContract]
    public class MotorCycle
    {
        [DataMember]
        public int ID { get; set; }
        [DataMember]
        public int NumberOfWheels { get; set; }
        [DataMember]
        public string Brand { get; set; }
        [DataMember]
        public bool HasSideCart { get; set; }
    }
}
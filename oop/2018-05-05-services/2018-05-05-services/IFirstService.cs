using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace _2018_05_05_services
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IFirstService" in both code and config file together.
    [ServiceContract]
    public interface IFirstService
    {
        [OperationContract]
        string HelloWorld();
    }
}

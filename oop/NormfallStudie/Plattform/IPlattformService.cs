using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Plattform
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IPlattformService" in both code and config file together.
    [ServiceContract]
    public interface IPlattformService
    {
        [OperationContract]
        void DoWork();
    }
}

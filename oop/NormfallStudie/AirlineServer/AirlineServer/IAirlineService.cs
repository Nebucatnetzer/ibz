﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using AirlineServer.Models;

namespace AirlineServer
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change
    // the interface name "IAirlineService" in both code and config file
    // together.
    [ServiceContract]
    public interface IAirlineService
    {
        [OperationContract]
        ICollection<IEnumerable<Flight>> GetFlights(DateTime startTime,
                                                    DateTime endTime,
                                                    string origin,
                                                    string destination,
                                                    int numberOfSeats);
        [OperationContract]
        Flight BookFlight(Flight flight, int numberOfSeats);
        Flight CancelFlight(Flight flight, int numberOfSeats);
    }
}

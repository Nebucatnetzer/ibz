using System;
using System.Collections.Generic;
using System.Linq;
using Plattform.Models;
using Plattform.AirlineService;

namespace Plattform.DB
{
    public class FlightDB
    {
        public ICollection<Flight> GetAllFlights()
        {
            using (Context ctx = new Context())
            {
                return ctx.Flights.ToList();
            }
        }
        public bool CreateFlight(Flight city)
        {
            try
            {
                using (Context ctx = new Context())
                {
                    ctx.Flights.Add(city);
                    ctx.SaveChanges();
                }
                return true;
            }
            catch (Exception e)
            {
                System.Diagnostics.Trace.WriteLine(e);
                return false;
            }
        }

        public bool UpdateFlight(Flight city)
        {
            try
            {
                using (Context ctx = new Context())
                {
                    ctx.Flights.Attach(city);
                    ctx.Entry(city).State = System.Data.Entity.EntityState.Modified;
                    ctx.SaveChanges();
                }
                return true;
            }
            catch (Exception e)
            {
                System.Diagnostics.Trace.WriteLine(e);
                return false;
            }

        }
        public bool DeleteFlight(Flight city)
        {
            try
            {
                using (Context ctx = new Context())
                {
                    ctx.Flights.Attach(city);
                    ctx.Flights.Remove(city);
                    ctx.SaveChanges();
                }
                return true;
            }
            catch (Exception e)
            {
                System.Diagnostics.Trace.WriteLine(e);
                return false;
            }
        }
    }
}

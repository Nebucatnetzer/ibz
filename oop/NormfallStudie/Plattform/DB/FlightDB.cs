using System;
using System.Collections.Generic;
using System.Linq;
using Plattform.Models;

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
        public bool CreateFlight(Flight flight)
        {
            try
            {
                using (Context ctx = new Context())
                {
                    ctx.Flights.Add(flight);
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
        public bool DeleteFlight(Flight flight)
        {
            try
            {
                using (Context ctx = new Context())
                {
                    ctx.Flights.Attach(flight);
                    ctx.Flights.Remove(flight);
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

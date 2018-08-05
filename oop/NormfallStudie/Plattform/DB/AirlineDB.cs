using System;
using System.Collections.Generic;
using System.Linq;
using Plattform.Models;

namespace Plattform.DB
{
    public class AirlineDB
    {
        public ICollection<Airline> GetAllAirlines()
        {
            using (Context ctx = new Context())
            {
                return ctx.Airlines.ToList();
            }
        }
        public bool CreateAirline(Airline airline)
        {
            try
            {
                using (Context ctx = new Context())
                {
                    ctx.Airlines.Add(airline);
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

        public bool UpdateAirline(Airline airline)
        {
            try
            {
                using (Context ctx = new Context())
                {
                    ctx.Airlines.Attach(airline);
                    ctx.Entry(airline).State = System.Data.Entity.EntityState.Modified;
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
        public bool DeleteAirline(Airline airline)
        {
            try
            {
                using (Context ctx = new Context())
                {
                    ctx.Airlines.Attach(airline);
                    ctx.Airlines.Remove(airline);
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

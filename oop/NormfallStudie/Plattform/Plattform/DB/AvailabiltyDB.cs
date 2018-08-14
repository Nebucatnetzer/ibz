using System;
using System.Collections.Generic;
using System.Linq;
using Plattform.Models;
using Plattform.AirlineService;

namespace Plattform.DB
{
    public class AvailabilityDB
    {
        public ICollection<Availability> GetAllAvailabilities()
        {
            using (Context ctx = new Context())
            {
                return ctx.Availabilities.ToList();
            }
        }
        public bool CreateAvailability(Availability city)
        {
            try
            {
                using (Context ctx = new Context())
                {
                    ctx.Availabilities.Add(city);
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

        public bool UpdateAvailability(Availability city)
        {
            try
            {
                using (Context ctx = new Context())
                {
                    ctx.Availabilities.Attach(city);
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
        public bool DeleteAvailability(Availability city)
        {
            try
            {
                using (Context ctx = new Context())
                {
                    ctx.Availabilities.Attach(city);
                    ctx.Availabilities.Remove(city);
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

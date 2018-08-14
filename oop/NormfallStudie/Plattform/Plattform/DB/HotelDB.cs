using System;
using System.Collections.Generic;
using System.Linq;
using Plattform.Models;
using Plattform.AirlineService;

namespace Plattform.DB
{
    public class HotelDB
    {
        public ICollection<Hotel> GetAllHotels()
        {
            using (Context ctx = new Context())
            {
                return ctx.Hotels.ToList();
            }
        }
        public bool CreateHotel(Hotel city)
        {
            try
            {
                using (Context ctx = new Context())
                {
                    ctx.Hotels.Add(city);
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

        public bool UpdateHotel(Hotel city)
        {
            try
            {
                using (Context ctx = new Context())
                {
                    ctx.Hotels.Attach(city);
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
        public bool DeleteHotel(Hotel city)
        {
            try
            {
                using (Context ctx = new Context())
                {
                    ctx.Hotels.Attach(city);
                    ctx.Hotels.Remove(city);
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

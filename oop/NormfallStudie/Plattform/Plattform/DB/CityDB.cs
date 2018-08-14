using System;
using System.Collections.Generic;
using System.Linq;
using Plattform.Models;
using Plattform.AirlineService;

namespace Plattform.DB
{
    public class CityDB
    {
        public ICollection<City> GetAllCities()
        {
            using (Context ctx = new Context())
            {
                return ctx.Cities.ToList();
            }
        }
        public bool CreateCity(City city)
        {
            try
            {
                using (Context ctx = new Context())
                {
                    ctx.Cities.Add(city);
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

        public bool UpdateCity(City city)
        {
            try
            {
                using (Context ctx = new Context())
                {
                    ctx.Cities.Attach(city);
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
        public bool DeleteCity(City city)
        {
            try
            {
                using (Context ctx = new Context())
                {
                    ctx.Cities.Attach(city);
                    ctx.Cities.Remove(city);
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

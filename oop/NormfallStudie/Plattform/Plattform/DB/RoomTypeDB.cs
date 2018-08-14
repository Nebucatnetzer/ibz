using System;
using System.Collections.Generic;
using System.Linq;
using Plattform.Models;
using System.Diagnostics;

namespace Plattform.DB
{
    public class RoomTypeDB
    {
        public ICollection<RoomType> GetAllRoomTypes()
        {
            using (Context ctx = new Context())
            {
                return ctx.RoomTypes.ToList();
            }
        }
        public bool CreateRoomType(RoomType city)
        {
            try
            {
                using (Context ctx = new Context())
                {
                    ctx.RoomTypes.Add(city);
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

        public bool UpdateRoomType(RoomType city)
        {
            try
            {
                using (Context ctx = new Context())
                {
                    ctx.RoomTypes.Attach(city);
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
        public bool DeleteRoomType(RoomType city)
        {
            try
            {
                using (Context ctx = new Context())
                {
                    ctx.RoomTypes.Attach(city);
                    ctx.RoomTypes.Remove(city);
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

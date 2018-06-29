using System;
using System.Collections.Generic;
using System.Linq;
using Plattform.Models;

namespace Plattform.DB
{
    public class RoomDB
    {
        public ICollection<Room> GetAllRooms()
        {
            using (Context ctx = new Context())
            {
                return ctx.Rooms.ToList();
            }
        }
        public bool CreateRoom(Room city)
        {
            try
            {
                using (Context ctx = new Context())
                {
                    ctx.Rooms.Add(city);
                    ctx.SaveChanges();
                }
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool UpdateRoom(Room city)
        {
            try
            {
                using (Context ctx = new Context())
                {
                    ctx.Rooms.Attach(city);
                    ctx.Entry(city).State = System.Data.Entity.EntityState.Modified;
                    ctx.SaveChanges();
                }
                return true;
            }
            catch (Exception)
            {
                return false;
            }

        }
        public bool DeleteRoom(Room city)
        {
            try
            {
                using (Context ctx = new Context())
                {
                    ctx.Rooms.Attach(city);
                    ctx.Rooms.Remove(city);
                    ctx.SaveChanges();
                }
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
using System.Data.Entity;
using Plattform.Models;
using Plattform.Helper;
using Plattform.AirlineService;

namespace Plattform.DB
{
    public class Context : DbContext
    {
        public Context() : base("PlattformDB") { }

        public DbSet<City> Cities { get; set; }
        public DbSet<Airline> Airlines { get; set; }
        public DbSet<Flight> Flights { get; set; }
        public DbSet<Hotel> Hotels { get; set; }
        public DbSet<Room> Rooms { get; set; }
        public DbSet<RoomType> RoomTypes { get; set; }
        public DbSet<Availability> Availabilities { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<City>()
                .Property(c => c.Name)
                .HasMaxLength(50)
                .IsRequired();

            modelBuilder.Entity<City>()
                .Property(c => c.ZipCode)
                .IsRequired()
                .IsUnique();

            modelBuilder.Entity<Room>()
                .HasMany<RoomAvailability>(r => r.RoomAvailability)
                .WithRequired()
                .HasForeignKey(r => r.FoodPlaceID);

        }
    }
}
using System.Data.Entity;
using Plattform.Models;
using Plattform.Helper;

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

            modelBuilder.Entity<Airline>()
                .Property(a => a.AirlineID)
                .IsRequired()
                .IsUnique();

            modelBuilder.Entity<Airline>()
                .Property(a => a.Name)
                .IsRequired();

            modelBuilder.Entity<Flight>()
                .Property(f => f.Name)
                .IsRequired();

            modelBuilder.Entity<Flight>()
                .Property(f => f.Duration)
                .IsRequired();

            modelBuilder.Entity<Flight>()
                .Property(f => f.FromCityShortName)
                .IsRequired();

            modelBuilder.Entity<Flight>()
                .Property(f => f.StartTime)
                .IsRequired();

            modelBuilder.Entity<Flight>()
                .Property(f => f.ToCityShortName)
                .IsRequired();
        }
    }
}
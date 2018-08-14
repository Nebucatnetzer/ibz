using System.Data.Entity;
using Plattform.DB;

namespace Plattform.Helper
{
    public class EntitiesContextInitializer : DropCreateDatabaseIfModelChanges<Context>
    {
        protected override void Seed(Context context)
        {
            //var cities = GenerateData.CreateCities();
            var types = GenerateData.CreateRoomTypes();

            //foreach (var c in cities)
            //{
            //    context.Cities.Add(c);
            //}
            foreach (var t in types)
            {
                context.RoomTypes.Add(t);
            }
            context.SaveChanges();
        }
    }
}
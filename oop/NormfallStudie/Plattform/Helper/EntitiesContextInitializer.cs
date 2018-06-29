using System.Data.Entity;
using Plattform.DB;

namespace Plattform.Helper
{
    public class EntitiesContextInitializer : DropCreateDatabaseIfModelChanges<Context>
    {
        protected override void Seed(Context context)
        {
            var cities = GenerateData.CreateCities();

            foreach (var c in cities)
            {
                context.Cities.Add(c);
            }
            context.SaveChanges();

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using Plattform.Models;

namespace Plattform.Helper
{
    public static class GenerateData
    {
        private static ICollection<City> Cities;
        public static ICollection<City> CreateCities()
        {
            return Cities;
        }
    }
}
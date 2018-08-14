using System;
using System.Collections.Generic;
using System.Linq;
using Plattform.Models;

namespace Plattform.Helper
{
    public static class GenerateData
    {
        private static List<City> Cities = new List<City>();
        private static List<RoomType> RoomTypes = new List<RoomType>();
        private static List<string> ListRoomTypes = new List<string>(new string[]
        {
            "Single Bed", "Double Bed", "Suite"
        });
        private static List<string> ListCities = new List<string>(new string[]
        {
            "Bern"
        });
        public static List<RoomType> CreateRoomTypes()
        {
            foreach (var item in ListRoomTypes)
            {
                RoomTypes.Add(new RoomType(item));
            }
            return RoomTypes;
        }
        public static List<City> CreateCities()
        {
            foreach (var item in ListCities)
            {
                Cities.Add(new City(item, 3300, "xtz"));
            }
            return Cities;
        }
    }
}
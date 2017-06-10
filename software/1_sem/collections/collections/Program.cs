using System;
using System.Collections.Generic;

namespace collections
{
    internal class Program
    {
        public static void Main(string[] args)
        {
          List<CD> cdList = new List<CD>();
          cdList.Add(new CD("Amy McDonald", "This is the life")); 
          cdList.Add(new CD("Arch Enemy", "This is War")); 
          cdList.Add(new CD("Fleshgod Apocalypse", "Agony"));

            foreach (var item in cdList)
            {
               Console.WriteLine(item.Interpret + " " + item.AlbumTitel); 
            }
            
          cdList.Add(new CD("Fleshgod Apocalypse", "Agony"));
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Db4objects.Db4o;

namespace _2018_03_02_hausbesitzer
{
    class Program
    {
        static string tempPath = System.IO.Path.GetTempPath();
        readonly static string DbPath = System.IO.Path.Combine(
                       tempPath,
                       "hausbesitzer.db");

        static void Main(string[] args)
        {
            HouseOwner owner = new HouseOwner("Max Muster", "Unterstrasse 14");
            Request request = new Request(1);
            request.Check();
        }
    }
}

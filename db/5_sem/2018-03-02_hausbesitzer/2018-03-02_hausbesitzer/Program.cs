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
            System.IO.File.Delete(DbPath);
            IObjectContainer db = Db4oEmbedded.OpenFile(Db4oEmbedded.NewConfiguration(), DbPath);
            HouseOwner owner = new HouseOwner("Max Muster", "Unterstrasse 14");
            Request request = new Request(1);
            owner.requests.Add(request);
            db.Store(owner);
            db.Store(request);

            if (request.status != Request.Status.final_data_delivered)
            {
                IObjectSet result = db.QueryByExample(request);
                request = (Request)result.Next();
                request.Check();
                db.Store(request);
            }
            IObjectSet final_result = db.QueryByExample(request);
            request = (Request)final_result.Next();
            request.AllocateSubsidies();
            db.Store(request);
            db.Close();
            Console.ReadLine();
        }
    }
}

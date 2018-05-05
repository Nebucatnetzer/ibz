using Db4objects.Db4o;
using System;

namespace _2018_03_02_hausbesitzer
{
    class Program
    {
        readonly static string YapFileName = System.IO.Path.Combine(
                               Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData),
                               "formula1.yap");

        static void Main(string[] args)
        {
            System.IO.File.Delete(YapFileName);
            IObjectContainer db = Db4oEmbedded.OpenFile(Db4oEmbedded.NewConfiguration(), YapFileName);
            HouseOwner owner = new HouseOwner("max muster", "Unterstrasse 14");
            Request request = new Request(1);
            owner.requests.Add(request);
            db.Store(owner);
            db.Store(request);
            while (request.status != Request.Status.final_data_delivered)
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
            Console.ReadKey();
        }

    }
}

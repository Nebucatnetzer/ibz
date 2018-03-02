using Db4objects.Db4o;
using Db4objects.Db4o.Config;
using System;
using System.IO;

namespace Db4oRelations
{
    class Program
    {
        /// <summary>
        /// Datenbankdatei
        /// </summary>
        private static string DB4OFILENAME = "database.db4o";

        static void Main(string[] args)
        {
            // Datenbankdatei löschen
            if (File.Exists(DB4OFILENAME))
                File.Delete(DB4OFILENAME);

            IEmbeddedConfiguration config = Db4oEmbedded.NewConfiguration();
            IObjectContainer db = Db4oEmbedded.OpenFile(config, DB4OFILENAME);

            try
            {
                Angestellter ang1 = new Angestellter(1, "Ruedi Loosli", 4200);
                db.Store(ang1);
                Angestellter ang2 = new Angestellter(2, "Fritz Münger", 4500);
                db.Store(ang2);
                Angestellter ang3 = new Angestellter(3, "Meinrad Hardegger", 3900);
                db.Store(ang3);

                ang1.Adresse = new Adresse("Brüederstrasse 12", "Roggwil", 1234);
                db.Store(ang1);
                ang2.Adresse = new Adresse("Hartmatt 3", "Lochbüehl", 1516);
                db.Store(ang2);
                ang3.Adresse = new Adresse("Postweg 31", "Rupolding", 1235);
                db.Store(ang3);

                // funktioniert
                Adresse adr2 = ang2.Adresse;
                adr2.Strasse = "Horstgasse 45";
                db.Store(adr2);

                // funktioniert nur mit cascade
                ang1.Adresse.Strasse = "Horstgasse 44";
                db.Store(ang1);

                // Ausgabe mit neuem Container
                db.Close();

                //
                // Delete
                //

                config = Db4oEmbedded.NewConfiguration();
                config.Common.ObjectClass(typeof(Angestellter)).CascadeOnDelete(true);
                db = Db4oEmbedded.OpenFile(config, DB4OFILENAME);


                listResult(db.Query(typeof(Angestellter)));

                listResult(db.Query(typeof(Adresse)));
                IObjectSet result = db.QueryByExample(new Angestellter(1, null, 0));
                ang1 = (Angestellter) result.Next();
                db.Delete(ang1);
                listResult(db.Query(typeof(Angestellter)));
            }
            finally
            {
                db.Close();
            }
        }

        private static void listResult(IObjectSet result)
        {
            Console.WriteLine($"----- {result.Count} -----");
            foreach (object item in result)
            {
                Console.WriteLine(item);
            }
        }
    }
}

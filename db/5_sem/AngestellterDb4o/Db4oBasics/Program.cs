using Db4objects.Db4o;
using Db4objects.Db4o.Config;
using System;
using System.IO;

namespace Db4oBasics
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

                // Anzeige, Ruedi u. Fritz
                ListAngestellte(db);

                // Suche Fritz
                IObjectSet result = db.QueryByExample(new Angestellter(2, null, 0));
                Angestellter found = (Angestellter) result.Next();
                found.Salaer = 5100;
                db.Store(found);

                // Anzeige, Fritz mit neuem Gehalt
                ListAngestellte(db);

                // Suche Ruedi
                result = db.QueryByExample(new Angestellter(1, null, 0));
                found = (Angestellter) result.Next();
                db.Delete(found);

                // Anzeige, Fritz, Ruedi wurde gelöscht
                ListAngestellte(db);
            }
            finally
            {
                db.Close();
            }

        /// <summary>
        /// Alle Angestellte auf die Konsole ausgeben
        /// </summary>
        /// <param name="db">Datenbank</param>
        private static void ListAngestellte(IObjectContainer db)
        {
            IObjectSet result = db.Query(typeof(Angestellter));
            Console.WriteLine($"----- {result.Count} -----");
            foreach (object item in result)
            {
                Console.WriteLine(item);
            }
        }
    }
}

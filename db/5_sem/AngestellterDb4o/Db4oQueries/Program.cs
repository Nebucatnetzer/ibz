using Db4objects.Db4o;
using Db4objects.Db4o.Config;
using Db4objects.Db4o.Query;
using System;
using System.Collections.Generic;
using System.IO;

namespace Db4oQueries
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

                queryByExample(db);

                nativeQueries(db);

                sodaQueries(db);
            }
            finally
            {
                db.Close();
            }
        }

        /// <summary>
        /// Query by example
        /// </summary>
        /// <param name="db"></param>
        private static void queryByExample(IObjectContainer db)
        {
            listAngestellte(db.QueryByExample(new Angestellter(1, null, 0)));
            listAngestellte(db.QueryByExample(new Angestellter(0, "Ruedi Loosli", 0)));
            listAngestellte(db.QueryByExample(new Angestellter(0, null, 4200)));
        }

        /// <summary>
        /// Native queries
        /// </summary>
        /// <param name="db"></param>
        private static void nativeQueries(IObjectContainer db)
        {
            IList<Angestellter> angestellte = db.Query<Angestellter>(delegate (Angestellter angestellter)
            {
                {
                    return angestellter.Salaer > 4000;
                }
            });
            listAngestellte(angestellte);

            angestellte = db.Query<Angestellter>(delegate (Angestellter angestellter)
            {
                {
                    return angestellter.Name.StartsWith("Ruedi");
                }
            });
            listAngestellte(angestellte);

            angestellte = db.Query<Angestellter>(delegate (Angestellter angestellter)
            {
                {
                    return angestellter.Salaer > 4000
                        && angestellter.Adresse.Strasse.Contains("1");
                }
            });
            listAngestellte(angestellte);
        }

        /// <summary>
        /// SODA Simple Object Database Access queries
        /// </summary>
        /// <param name="db"></param>
        private static void sodaQueries(IObjectContainer db)
        {
            IQuery query = db.Query();
            query.Constrain(typeof(Angestellter));
            listAngestellte(query.Execute());

            query = db.Query();
            query.Constrain(typeof(Angestellter));
            query.Descend("Name").Constrain("Ruedi Loosli");
            listAngestellte(query.Execute());

            query = db.Query();
            query.Constrain(typeof(Angestellter));
            query.Descend("Salaer").Constrain(4000).Greater();
            listAngestellte(query.Execute());

            query = db.Query();
            query.Constrain(typeof(Angestellter));
            query.Descend("Salaer").Constrain(4000).Greater();
            query.Descend("Adresse").Descend("Strasse").Constrain("1").Contains();
            listAngestellte(query.Execute());
        }

        /// <summary>
        /// Alle Angestellte auf die Konsole ausgeben
        /// </summary>
        /// <param name="db">Datenbank</param>
        private static void listAngestellte(IObjectSet result)
        {
            Console.WriteLine($"----- {result.Count} -----");
            foreach (object item in result)
            {
                Console.WriteLine(item);
            }
        }

        /// <summary>
        /// Alle Angestellte auf die Konsole ausgeben
        /// </summary>
        /// <param name="db">Datenbank</param>
        private static void listAngestellte(IList<Angestellter> result)
        {
            Console.WriteLine($"----- {result.Count} -----");
            foreach (object item in result)
            {
                Console.WriteLine(item);
            }
        }
    }
}

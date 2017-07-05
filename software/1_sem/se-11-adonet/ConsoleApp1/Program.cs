using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;
                                                    Initial Catalog=Abo;
                                                    Integrated Security=True");
            Console.WriteLine(con);
            try
            {
                con.Open();
                //string sql = "insert into ort (postleizahl,ortsname) values (5000, 'Aarau')";
                //SqlCommand cmd = new SqlCommand(sql, con);
                //cmd.ExecuteNonQuery();

                string sql = "select postleizahl, ortsname from ort order by postleizahl";
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    Console.WriteLine(dr["postleizahl"] + "\t" + dr["ortsname"]);
                }
                Console.ReadKey();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}

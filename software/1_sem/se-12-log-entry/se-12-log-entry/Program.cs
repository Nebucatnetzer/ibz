using System;
using System.Collections.Generic;
using System.Security.Policy;

namespace se_12_log_entry
{
    internal class Program
    {
        public static void Main(string[] args)
        {
            Stack<LogEntry> logEntries = new Stack<LogEntry>();
            int id_counter = 0;
            while (id_counter < 11)
            {
                logEntries.Push(new LogEntry(id_counter, DateTime.Now));
                    id_counter++;

                LogEntry newestEntry = logEntries.Peek();
                Console.WriteLine("ID:"
                                  + newestEntry.ID
                                  + " Date:"
                                  + newestEntry.Date);
                System.Threading.Thread.Sleep(2000);
            }
        }
    }
}

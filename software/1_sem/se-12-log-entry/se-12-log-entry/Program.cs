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
            int idCounter = 0;
            for (int i = 0; i < 20; i++)
            {
                logEntries.Push(new LogEntry(i, DateTime.Now));

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

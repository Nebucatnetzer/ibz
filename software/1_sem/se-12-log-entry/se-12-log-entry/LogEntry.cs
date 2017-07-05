using System;

namespace se_12_log_entry
{
    public class LogEntry
    {
        public int ID { get; set; }
        public DateTime Date { get; set; }

        public LogEntry(int _id, DateTime _date)
        {
            this.ID = _id;
            this.Date = _date;
        }
    }
}

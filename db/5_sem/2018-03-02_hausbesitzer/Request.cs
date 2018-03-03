using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2018_03_02_hausbesitzer
{
    class Request
    {
        public enum Status {
            undefined,
            first_data_delivered,
            first_data_checked,
            detail_data_delivered,
            subsidies_delivered,
            final_data_delivered
        }

        private Status _status = Status.undefined;
        public Status status
        {
            get { return _status; }
        }

        // propfull
        private int _id;
        public int id 
        {
            get { return _id; }
            set
            {
                if (value > 0)
                {
                    _id = value;
                }
                else
                {
                    new Exception("ID can't be lower than 0");
                }
            }
        }
        public Request(int id)
        {
            this.id = id;
        }

        public void Check()
        {
           
           switch (this._status)
            {
                case Status.undefined:
                    this._status = Status.first_data_delivered;
                    Console.WriteLine("Status " + this._status + " wurde gesetzt.");
                    break;

                case Status.first_data_delivered:
                    this._status = Status.first_data_checked;
                    Console.WriteLine("Status " + this._status + " wurde gesetzt.");
                    break;

                case Status.first_data_checked:
                    this._status = Status.detail_data_delivered;
                    Console.WriteLine("Status " + this._status + " wurde gesetzt.");
                    break;

                case Status.detail_data_delivered:
                    this._status = Status.final_data_delivered;
                    Console.WriteLine("Status " + this._status + " wurde gesetzt.");
                    break;
            }
        }

        public void AllocateSubsidies() { 
            if (this._status == Status.final_data_delivered)
            {
                this._status = Status.subsidies_delivered;
                Console.WriteLine("Subvention von 300 CHF wird augezahlt."); }
        }
    }
}

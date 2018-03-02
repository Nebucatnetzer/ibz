using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2018_03_02_hausbesitzer
{
    class Request
    {
        private int id { get; set; }
        private Status status { get; set; }
        private enum Status {
            undefined,
            first_data_delivered,
            first_data_checked,
            detail_data_delivered,
            subsidies_delivered,
            final_data_delivered
        }

        public Request(int _id)
        {
            this.id = _id;
            this.status = Status.undefined;
        }

        public void Check()
        {
           
           switch (this.status)
            {
                case Status.undefined:
                    Console.WriteLine("Status " + this.status + " wurde gesetzt.");
                    this.status = Status.first_data_delivered;
                    break;

                case Status.first_data_delivered:
                    this.status = Status.first_data_checked;
                    Console.WriteLine("Status " + this.status + " wurde gesetzt.");
                    break;

                case Status.first_data_checked:
                    this.status = Status.detail_data_delivered;
                    Console.WriteLine("Status " + this.status + " wurde gesetzt.");
                    break;

                case Status.detail_data_delivered:
                    this.status = Status.final_data_delivered;
                    Console.WriteLine("Status " + this.status + " wurde gesetzt.");
                    break;
            }
        }

        private void AllocateSubsidies() { 
            if (this.status == Status.final_data_delivered)
            {
                this.status = Status.subsidies_delivered;
                Console.WriteLine("Subvention von 300 CHF wird augezahlt.");
            }

        }
    }
}

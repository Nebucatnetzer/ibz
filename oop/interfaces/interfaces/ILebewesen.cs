using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace interfaces
{
    interface ILebewesen
    {
       int AnzahlBeine { get; set; }
       string Ton { get; set; }
       void GibLaut();
    }
}

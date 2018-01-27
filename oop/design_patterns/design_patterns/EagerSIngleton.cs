using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace design_patterns
{
    class EagerSingleton
    {
        public static readonly EagerSingleton eagerinstance = new EagerSingleton();
        public string value;

        //private constructor!
        private EagerSingleton() { }

        public static EagerSingleton Instance
        {
            get
            {
                return eagerinstance;
            }
        }
    }
}

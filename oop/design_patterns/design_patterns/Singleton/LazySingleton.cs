using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace design_patterns
{
    public class LazySingleton
    {
        private static LazySingleton lazyinstance;
        public string value;

        //private constructor!
        private LazySingleton() { }

        public static LazySingleton Instance
        {
            get
            {
                if (lazyinstance == null)
                {
                    lazyinstance = new LazySingleton();
                }
                return lazyinstance;
            }
        }
    }
}

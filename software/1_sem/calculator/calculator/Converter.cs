using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace calculator
{
    static class Converter
    {
        public static double NauticalMiles = 0.566;
      public static double KmToNm (double _input)
      {
            return _input * NauticalMiles;
      }

      public static double SquareRootOfPi ()
        {
            return Math.Sqrt(Math.PI);
        }


      public static int ReturnLengthOfString(string _input)
        {
            return _input.Length;
        }
  
    }
}

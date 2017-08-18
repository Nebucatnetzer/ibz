using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Converter
{
    static class Converter
    {
        public static double Inches = 0.3937008;
        public static double Miles = 1.609344;
        public static double CmToInch (double _input)
        {
            return _input * Inches;
        }

        public static double MilesToKM (double _input)
        {
            return _input * Miles; 
        }
    }
}

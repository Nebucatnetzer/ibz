using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace first_webform
{
    static class StringConverter
    {
        public static string ConStr(string _input)
        {
            string date = DateTime.Now.ToString();
            return _input.ToUpper() + " " + date;
        }
    }
}
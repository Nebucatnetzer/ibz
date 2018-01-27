using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace asp_textfile
{
    public static class ReadFile
    {
        public string Read(string _path)
        {
            string[] lines = System.IO.File.ReadAllLines(_path)
        }
    }
}
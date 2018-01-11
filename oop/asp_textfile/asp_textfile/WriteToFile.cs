using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp_textfile
{
    public static class WriteToFile
    {
        public static void SaveToFile(string _input, string path)
        {
            File.WriteAllText(path, _input);
        }
    }
}
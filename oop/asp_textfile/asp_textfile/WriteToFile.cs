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
        public static void Write(string _input, string path)
        {
            using (StreamWriter _rawData = new StreamWriter(path, true))
            {
                _rawData.WriteLine(_input); // Write the file.
            }
            File.WriteAllText(path, _input);
        }
    }
}

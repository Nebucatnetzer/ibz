using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Diagnostics;

namespace ConsoleApp1
{
    class Calculator
    {
        public static void StartCalc()
        {
            var processInfo = new ProcessStartInfo
            {
                FileName = "calc.exe",
            };

            using (var process = Process.Start(processInfo))
            {
                process.Start();
            }
        }
        public static void  IsProcessRunning(string sProcessName)
        {
            Process[] proc = System.Diagnostics.Process.GetProcessesByName(sProcessName);
            while (proc.Length > 0)
            {
                Console.WriteLine("calc.exe beendet");
            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FencingScrapper
{
    public class Helper
    {
        #region--Generate Logs--
        public static void AddtoLogFile(string Message)
        {
            try
            {
                string LogPath = AppDomain.CurrentDomain.BaseDirectory;
                string filename = "\\Log.txt";
                string filepath = LogPath + filename;
                if (!File.Exists(filepath))
                {
                    StreamWriter writer = File.CreateText(filepath);
                    writer.Close();
                }
                using (StreamWriter writer = new StreamWriter(filepath, true))
                {
                    writer.WriteLine(Message);
                    Console.WriteLine(Message);
                }
            }
            catch
            { }
        }
        #endregion

        #region--Get Site URL--
        public static string GetSiteURL()
        {
            return @"http://www.manta.com/mb_35_E00D37N7_000/fencing";
        }
        #endregion
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FencingScrapper
{
    class Program
    {
        [STAThread]
        static void Main(string[] args)
        {
            Helper.AddtoLogFile("=============Import Start " + DateTime.Now + "============");
            // BrowseStates.GrabData();
            //UpdateEmails.UpdateStart();
            GenrateReport.StartGenerate();
            Helper.AddtoLogFile("=============Import End " + DateTime.Now + "============");
        }
    }
}

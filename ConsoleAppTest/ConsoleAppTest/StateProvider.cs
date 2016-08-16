using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WatiN.Core;

namespace ConsoleAppTest
{
    public class StateProvider
    {
        public static void StartScrap(string scrapUrl, IE ie)
        {
            ie.GoTo(scrapUrl);
        }
    }
}

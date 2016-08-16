using HtmlAgilityPack;
using OfficeOpenXml;
using OfficeOpenXml.Style;
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
        public static void StartScrap(string scrapUrl, IE ie, ExcelWorksheet ws, int RowNum, int ColNum)
        {
            ie.GoTo(scrapUrl);
            System.Threading.Thread.Sleep(5000);
            HtmlDocument doc = new HtmlDocument();
            string outhtml = ie.Html;
            doc.LoadHtml(outhtml);

            ws.Cells[RowNum, ColNum].Value = scrapUrl;
       

        }
    }
}

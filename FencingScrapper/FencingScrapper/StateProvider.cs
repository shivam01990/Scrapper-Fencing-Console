using HtmlAgilityPack;
using OfficeOpenXml;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using WatiN.Core;

namespace FencingScrapper
{
    public class StateProvider
    {

        public static void StartScrapFirstPage(string scrapUrl, ExcelWorksheet ws, int RowNum, int ColNum)
        {
            string outhtml = Helper.OpenIEURL(scrapUrl);
           
            HtmlDocument doc = new HtmlDocument();
           
            doc.LoadHtml(outhtml);

            int totalPages = 1;
            HtmlNode LastPageNode = doc.DocumentNode.SelectNodes("//ul[@class='pagination']//li//a").LastOrDefault();
            if (LastPageNode!=null)
            {
               string link =LastPageNode.Attributes["href"].Value;
               var parsedQuery = HttpUtility.ParseQueryString(link);
               int.TryParse(parsedQuery[0], out totalPages);
            }
            ws.Cells[RowNum, ColNum].Value = scrapUrl;
            
        }

        public static List<string> GetCompanyNavigationLink()
        {
            List<string> _lstlink = new List<string>();
            return _lstlink;
        }
    }
}

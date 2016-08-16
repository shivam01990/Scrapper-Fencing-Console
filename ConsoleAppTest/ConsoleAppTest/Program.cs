using HtmlAgilityPack;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WatiN.Core;

namespace ConsoleAppTest
{
    class Program
    {
        [STAThread]
        static void Main(string[] args)
        {
            IE ie = new IE("http://www.manta.com/mb_35_E00D37N7_000/fencing");
            {
                // Open an new Internet Explorer Window and
                // goto the google website.
                //IE ie = new IE("http://www.manta.com/mb_35_E00D37N7_000/fencing");
                System.Threading.Thread.Sleep(5000);
                // Write out the HTML text of the body
                Console.WriteLine(ie.Html);

                string outhtml = ie.Html;
                
                HtmlDocument doc = new HtmlDocument();
                doc.LoadHtml(outhtml);
                //HtmlNode divState = doc.DocumentNode.SelectNodes("//div[contains(@class, 'well') and contains(@class, 'well-sm')]//div[@class='row phn']")[1];
                HtmlNodeCollection anchorStates = doc.DocumentNode.SelectNodes("(//div[contains(@class, 'well') and contains(@class, 'well-sm')]//div[@class='row phn'])[2]//ul//li//a");
                if (anchorStates != null)
                {
                    foreach (var link in anchorStates)
                    {
                        string hrefValue = link.Attributes["href"].Value;
                        string textValue = link.InnerText;
                    }
                }
                
                // Close Internet Explorer and the console window immediately.
                ie.Close();
            }

           
           

       
            Console.ReadKey();
        }
    }
}

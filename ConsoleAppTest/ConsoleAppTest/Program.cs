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

                List<StateList> _statelist = new List<StateList>();
                if (anchorStates != null)
                {
                    foreach (var link in anchorStates)
                    {
                        StateList temp = new StateList();
                        temp.StateUrl = link.Attributes["href"].Value;
                        temp.StateName = link.InnerText;
                        _statelist.Add(temp);
                    }
                }

                // Close Internet Explorer and the console window immediately.
                ie.Close();
            }





            Console.ReadKey();
        }


    }


    public class StateList
    {
        public string StateName { get; set; }
        public string StateUrl { get; set; }
    }
}

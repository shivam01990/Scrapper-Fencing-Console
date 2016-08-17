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

        public static void StartScrapFirstPage(StateList State)
        {
            try
            {
                string outhtml = Helper.OpenIEURL(State.StateUrl);

                HtmlDocument doc = new HtmlDocument();

                doc.LoadHtml(outhtml);

                int totalPages = 1;
                HtmlNode LastPageNode = doc.DocumentNode.SelectNodes("//ul[@class='pagination']//li//a").LastOrDefault();
                if (LastPageNode != null)
                {
                    string link = LastPageNode.Attributes["href"].Value;
                    var parsedQuery = HttpUtility.ParseQueryString(link);
                    int.TryParse(parsedQuery[0], out totalPages);
                }

                List<Comany> _lstCompany = GetCompanyNavigationLink(doc,State.StateName);

                foreach (Comany item in _lstCompany)
                {
                    try
                    {
                        DBService.SaveComany(item);
                    }
                    catch { }
                }

                for (int i = 2; i < totalPages; i++)
                {
                    string pageingscrapurl = State.StateUrl + "?pg=" + i;
                    StartScrapOtherPage(pageingscrapurl, State.StateName);
                }
            }
            catch { }
            //ws.Cells[RowNum, ColNum].Value = scrapUrl;

        }

        public static void StartScrapOtherPage(string scrapUrl,string StateName)
        {
            try
            {
                string outhtml = Helper.OpenIEURL(scrapUrl);

                HtmlDocument doc = new HtmlDocument();

                doc.LoadHtml(outhtml);

                int totalPages = 1;
                HtmlNode LastPageNode = doc.DocumentNode.SelectNodes("//ul[@class='pagination']//li//a").LastOrDefault();
                if (LastPageNode != null)
                {
                    string link = LastPageNode.Attributes["href"].Value;
                    var parsedQuery = HttpUtility.ParseQueryString(link);
                    int.TryParse(parsedQuery[0], out totalPages);
                }

                List<Comany> _lstCompany = GetCompanyNavigationLink(doc,StateName);

                foreach (Comany item in _lstCompany)
                {
                    try
                    {
                        DBService.SaveComany(item);
                    }
                    catch { }
                }
            }
            catch { }

            //ws.Cells[RowNum, ColNum].Value = scrapUrl;

        }

        public static List<Comany> GetCompanyNavigationLink(HtmlDocument doc,string StateName)
        {

            List<Comany> _lstCompany = new List<Comany>();
            try
            {
                HtmlNodeCollection collection = doc.DocumentNode.SelectNodes("//ul//li[@class='list-group-item organic-result pln']");
                foreach (var item in collection)
                {
                    Comany temp = new Comany();
                    var templink = item.SelectSingleNode("//a[@class='media-heading text-primary h4']");
                    string link = "http://www.manta.com" + templink.Attributes["href"].Value;
                    temp.ComanyURL = link;
                    temp.CompanyName = templink.InnerText;
                    temp.State = StateName;
                    GetCompanyEmail(temp);
                    _lstCompany.Add(temp);

                }
            }
            catch { }
            return _lstCompany;
        }

        public static void GetCompanyEmail(Comany _company)
        {
            try
            {
                string outhtml = Helper.OpenIEURL(_company.ComanyURL);
                HtmlDocument doc = new HtmlDocument();
                doc.LoadHtml(outhtml);
                HtmlNode divEmail = doc.DocumentNode.SelectNodes("//div[@rel='contact']//div[@itemprop='email']").FirstOrDefault();
                string Email = divEmail.InnerText.Replace("Email:", "");
                _company.Email = Email;
            }
            catch { }
        }


    }
}

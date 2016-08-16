using HtmlAgilityPack;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace FencingScrapper
{
    public class BrowseStates
    {
        public static void GrabData()
        {
            try
            {
                //var document = new HtmlDocument();
                //document.OptionReadEncoding = true;

                //var url =new Uri(Helper.GetSiteURL());
                //var request = (HttpWebRequest)WebRequest.Create(url);
                //request.Method = "GET";
                //using (var response = (HttpWebResponse)request.GetResponse())
                //{
                //    using (var stream = response.GetResponseStream())
                //    {
                //        document.Load(stream, Encoding.GetEncoding("iso-8859-9"));
                //    }
                //}

                //string urlAddress = "http://www.manta.com/mb_35_E00D37N1_000/bathroom_fixtures_equipment_and_supplies";

                //HttpWebRequest request = (HttpWebRequest)WebRequest.Create(urlAddress);
                ////request.Headers[HttpRequestHeader.UserAgent] = "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13";
                //HttpWebResponse response = (HttpWebResponse)request.GetResponse();

                //if (response.StatusCode == HttpStatusCode.OK)
                //{
                //    Stream receiveStream = response.GetResponseStream();
                //    StreamReader readStream = null;

                //    if (response.CharacterSet == null)
                //    {
                //        readStream = new StreamReader(receiveStream);
                //    }
                //    else
                //    {
                //        readStream = new StreamReader(receiveStream, Encoding.GetEncoding(response.CharacterSet));
                //    }

                //    string data = readStream.ReadToEnd();

                //    response.Close();
                //    readStream.Close();
                //}

                HtmlWeb fencingweb = new HtmlWeb();
                string path = Helper.GetSiteURL();
                HtmlDocument fencingdoc = fencingweb.Load(path,"POST");



                //HtmlNodeCollection rowcollection = fencingdoc.DocumentNode.SelectNodes("//div[contains(@class, 'well') and contains(@class, 'well-sm')]");
                //Helper.AddtoLogFile("fetching data from" + Helper.GetSiteURL());



            }
            catch(Exception ex)
            {
                Helper.AddtoLogFile("Error:" + ex.ToString());
            }
        }
    }
}

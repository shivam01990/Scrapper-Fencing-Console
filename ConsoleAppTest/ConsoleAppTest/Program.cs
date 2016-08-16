using HtmlAgilityPack;
using OfficeOpenXml;
using OfficeOpenXml.Style;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
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

                string LogPath = AppDomain.CurrentDomain.BaseDirectory;
                string filename = "\\Finance.xlsx";
                string filepath = LogPath + filename;
                var file = new FileInfo(filepath);
                using (var package = new ExcelPackage(file))
                {
                    int RowNum = 1;
                    int ColNum = 1;
                    ExcelWorksheet ws = package.Workbook.Worksheets.Add("Finance - " + DateTime.Now.ToShortDateString());
                    //Merging cells and create a center heading for out table
                    ws.Cells[RowNum, ColNum].Value = "Finance Companies"; // Heading Name
                    RowNum++;


                    ws.Cells[RowNum, ColNum].Value = "Comany Name"; // Heading Name
                    ws.Cells[RowNum, ColNum, RowNum + 1, ColNum].Merge = true; //Merge columns start and end range
                    ws.Cells[RowNum, ColNum, RowNum + 1, ColNum].Style.Fill.PatternType = ExcelFillStyle.Solid;
                    ws.Cells[RowNum, ColNum, RowNum + 1, ColNum].Style.Fill.BackgroundColor.SetColor(Color.Black);
                    ws.Cells[RowNum, ColNum, RowNum + 1, ColNum].Style.Font.Bold = true; //Font should be bold    
                    ws.Cells[RowNum, ColNum, RowNum + 1, ColNum].Style.Font.Color.SetColor(Color.White);
                    ws.Cells[RowNum, ColNum, RowNum + 1, ColNum].Style.HorizontalAlignment = ExcelHorizontalAlignment.Center; // Aligmnet is center

                    ws.Cells[RowNum, ColNum + 1].Value = "Email"; // Heading Name
                    ws.Cells[RowNum, ColNum + 1, RowNum + 1, ColNum + 1].Merge = true; //Merge columns start and end range
                    ws.Cells[RowNum, ColNum + 1, RowNum + 1, ColNum + 1].Style.Fill.PatternType = ExcelFillStyle.Solid;
                    ws.Cells[RowNum, ColNum + 1, RowNum + 1, ColNum + 1].Style.Fill.BackgroundColor.SetColor(Color.Black);
                    ws.Cells[RowNum, ColNum + 1, RowNum + 1, ColNum + 1].Style.Font.Bold = true; //Font should be bold    
                    ws.Cells[RowNum, ColNum + 1, RowNum + 1, ColNum + 1].Style.Font.Color.SetColor(Color.White);
                    ws.Cells[RowNum, ColNum + 1, RowNum + 1, ColNum + 1].Style.HorizontalAlignment = ExcelHorizontalAlignment.Center; // Aligmnet is center
                    RowNum++;
                    package.Save();
                    //foreach (StateList state in _statelist)
                    //{
                    //    string tempurl = "http://www.manta.com"+state.StateUrl;
                    //    StateProvider.StartScrap(tempurl, ie, ws, RowNum, ColNum);
                    //    RowNum++;
                    //}
                    // save our new workbook and we are done!
                    package.Save();
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

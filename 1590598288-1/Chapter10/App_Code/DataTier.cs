using System;
using System.Web;
using System.Collections;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Data;
using System.Net;
using System.Text;
using System.IO;


/// <summary>
/// Summary description for DataTier
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
public class DataTier : System.Web.Services.WebService {

    public DataTier () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public DataTable GetFullPriceHistory(string strTicker, int nDays)
    {
        WebClient client = new WebClient();
        StringBuilder strURI = new StringBuilder("http://ichart.finance.yahoo.com/table.csv?s=");
        strURI.Append(strTicker);
        strURI.Append("&d=7&e=2&f=2007&g=d&a=8&b=28&c=2005&ignore=.csv");
        Stream data = client.OpenRead(strURI.ToString());
        StreamReader reader = new StreamReader(data);
        string s = reader.ReadToEnd();
        DataTable theTable = CsvParser.Parse(s);
        if (nDays > 0)
        {
            int i = nDays + 1;
            while (theTable.Rows.Count > i)
            {
                theTable.Rows.RemoveAt(i);
            }
        }
        data.Close();
        reader.Close();
        return theTable;
    }

    
}


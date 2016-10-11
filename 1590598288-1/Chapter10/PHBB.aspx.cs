using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.ComponentModel;
using System.Drawing;
using ZedGraph;

public partial class PHBB : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public double GetAverage(double[] num)
    {
        double sum = 0.0;
        for (int i = 0; i < num.Length; i++)
        {
            sum += num[i];
        }
        double avg = sum / System.Convert.ToDouble(num.Length);

        return avg;
    }


    public double GetStandardDeviation(double[] num)
    {
        double Sum = 0.0, SumOfSqrs = 0.0;
        for (int i = 0; i < num.Length; i++)
        {
            Sum += num[i];
            SumOfSqrs += Math.Pow(num[i], 2);
        }
        double topSum = (num.Length * SumOfSqrs) - (Math.Pow(Sum, 2));
        double n = (double)num.Length;
        return Math.Sqrt(topSum / (n * (n - 1)));
    }
 
    protected void ZedGraphWeb1_RenderGraph(System.Drawing.Graphics g, ZedGraph.MasterPane mPane)
    {
        int nDays = 0;
        int nRows = 0;
        GraphPane pane = mPane[0];


        string days = (string)Page.Request.Params["days"];
        string ticker = (string)Page.Request.Params["ticker"];

        if (ticker != null)
        {
            ticker = ticker.Trim();
            DataTier theDataTier = new DataTier();
            if (days == null)
                nDays = 0;
            else
                nDays = Convert.ToInt32(days);

            DataTable dtTable = theDataTier.GetFullPriceHistory(ticker, nDays);
            nRows = dtTable.Rows.Count;
            double[] nx = new double[nRows-1];
            double[] ny = new double[nRows-1];
            double[] bbh = new double[nRows-1];
            double[] bbl = new double[nRows-1];
            double[] pht = new double[20];
            int nIndex = 0;
            for (int i = nRows-1; i > 0; i--)
            {
                ny[nIndex] = Convert.ToDouble(dtTable.Rows[i].ItemArray[1]);
                XDate tmpDate = new XDate(Convert.ToDateTime(dtTable.Rows[i].ItemArray[0]));
                nx[nIndex] = (double)tmpDate;
                if (nIndex > 20)
                {
                    int x = 0;
                    for (int n = nIndex - 20; n < nIndex; n++)
                    {
                        pht[x] = ny[n];
                        x++;
                    }
                    bbh[nIndex] = GetAverage(pht) + (2 * GetStandardDeviation(pht));
                    bbl[nIndex] = GetAverage(pht) - (2 * GetStandardDeviation(pht));
                        
                }
                else
                {
                    bbh[nIndex] = ny[nIndex];
                    bbl[nIndex] = ny[nIndex];
                }
                nIndex++;
            }
            pane.XAxis.Type = AxisType.Date;
            pane.XAxis.GridDashOff = 0;
            pane.AddCurve("Closing Price", nx,ny, Color.SlateBlue, SymbolType.None);
            
            pane.AddCurve("High BB", nx, bbh, Color.Red, SymbolType.None);
            pane.AddCurve("Low BB", nx, bbl, Color.Red, SymbolType.None);
            
            pane.AxisFill = new Fill(Color.White, Color.AntiqueWhite);
            Axis.Default.MinGrace = 0;
            Axis.Default.MaxGrace = 0;
            pane.AxisChange(g);
        }
    }
}

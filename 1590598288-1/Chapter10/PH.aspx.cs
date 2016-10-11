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

public partial class PH : System.Web.UI.Page
{

    protected void ZedGraphWeb1_RenderGraph(System.Drawing.Graphics g, ZedGraph.MasterPane mPane)
    {
        int nDays = 0;
        int nRows = 0;
        GraphPane pane = mPane[0];
        PointPairList pt = new PointPairList();
        double nx;
        double ny;

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

            DataTable dtTable = theDataTier.GetFullPriceHistory(ticker,nDays);
            nRows = dtTable.Rows.Count;

            
            for (int i = 1; i < nRows; i++)
            {
                ny = Convert.ToDouble(dtTable.Rows[i].ItemArray[1]);
                XDate tmpDate = new XDate(Convert.ToDateTime(dtTable.Rows[i].ItemArray[0]));
                nx = (double)tmpDate;
                pt.Add(nx, ny);
            }
            pane.XAxis.Type = AxisType.Date;
            pane.XAxis.GridDashOff = 0;
            LineItem priceCurve = pane.AddCurve("Closing Price", pt, Color.SlateBlue, SymbolType.None);
            priceCurve.Line.Width = 2.0F;
            pane.AxisFill = new Fill(Color.White, Color.AntiqueWhite);
            pane.XAxis.MinGrace = 0;
            pane.XAxis.MaxGrace = 0;
            pane.YAxis.MinGrace = 0;
            pane.YAxis.MaxGrace = 0;
            pane.AxisChange(g);
        }
    }

}

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
using System.Text;

public partial class Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    if (!Page.IsPostBack)
            {               
                GetCompanyInfo(txtTicker.Text.Trim());
                //Default to first tab
                Update(0);
            }
    }
    protected void TabContainer1_ActiveTabChanged(object sender, EventArgs e)
    {
        Update(TabContainer1.ActiveTabIndex);
    }

    private void Update(int selectedTabIndex)
    {
        switch (selectedTabIndex)
        {
            case 0: //Basic Quote
                lblBasicQuote.Text = GetBasicQuote(txtTicker.Text.Trim());
                break;
            case 1: //Price History
                GetPriceHistory(txtTicker.Text.Trim());
                break;

            case 2: //Analytics
                GetAnalytics(txtTicker.Text.Trim());
                break;
        }
    }

    private string GetBasicQuote(string strTicker)
    {
        companyInfo.CompanyInfoService service = new companyInfo.CompanyInfoService();
        companyInfo.CompanyInfoResult result = service.doCompanyInfo("UID", "PWD", strTicker);
        StringBuilder theHTML = new StringBuilder();
        theHTML.Append("<table width='100%' cellspacing='0' cellpadding='0' style='border-width: 0'>");
        theHTML.Append("<tr><td  width='40%'>");
        theHTML.Append("Bid ");
        theHTML.Append("</td><td  width='40%'>");
        theHTML.Append(result.bid);
        theHTML.Append("</td></tr>");

        theHTML.Append("<tr><td  width='40%'>");
        theHTML.Append("Ask ");
        theHTML.Append("</td><td  width='40%'>");
        theHTML.Append(result.ask);
        theHTML.Append("</td></tr>");

        theHTML.Append("<tr><td  width='40%'>");
        theHTML.Append("Open ");
        theHTML.Append("</td><td  width='40%'>");
        theHTML.Append(result.open);
        theHTML.Append("</td></tr>");

        theHTML.Append("<tr><td  width='40%'>");
        theHTML.Append("Year High ");
        theHTML.Append("</td><td  width='40%'>");
        theHTML.Append(result.yearHigh);
        theHTML.Append("</td></tr>");

        theHTML.Append("<tr><td  width='40%'>");
        theHTML.Append("Year Low ");
        theHTML.Append("</td><td  width='40%'>");
        theHTML.Append(result.yearLow);
        theHTML.Append("</td></tr>");

        theHTML.Append("</table>");
        return theHTML.ToString();
    }
    private void GetPriceHistory(string strTicker)
    {
        DataTier data = new DataTier();
        DataTable priceData = data.GetFullPriceHistory(strTicker, 20);
        grdPriceHistory.DataSource = priceData;
        grdPriceHistory.DataBind();
    }

    private void GetAnalytics(string strTicker)
    {
        imgPriceHistory.ImageUrl = "PH.aspx?ticker=" + strTicker + "&days=100";
        imgAnalyticGraph.ImageUrl = "PHBB.aspx?ticker=" + strTicker + "&days=100";
    }
     

    private void GetCompanyInfo(string strTicker)
    {
        companyInfo.CompanyInfoService service = new companyInfo.CompanyInfoService();
        companyInfo.CompanyInfoResult result = service.doCompanyInfo("anything", "anything", strTicker);
        lblQuote.Text = result.company + "<BR>Current Price: " + result.lastPrice + "<BR>Change: " +result.change;
    }

    
    private void GetNewsItems(string strTicker)
    {
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        GetCompanyInfo(txtTicker.Text.Trim());
    }

}

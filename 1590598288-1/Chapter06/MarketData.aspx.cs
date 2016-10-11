using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class MarketData : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        System.Threading.Thread.Sleep(1000);
        lblDowJones.Text = ((int.Parse(lblDowJones.Text)) + 1).ToString();
        lblNasdaq.Text = ((float.Parse(lblNasdaq.Text)) + .5).ToString();
        lblSnp.Text = ((float.Parse(lblSnp.Text)) + .25).ToString();

    }
}
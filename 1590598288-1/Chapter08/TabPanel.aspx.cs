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

public partial class TabPanel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TabContainer1.Tabs[0].HeaderText = "New First";
    }

    protected void TabContainer1_ActiveTabChanged(object sender, EventArgs e)
    {
        Label1.Text = TabContainer1.ActiveTab.HeaderText + "; " + TabContainer1.ActiveTabIndex.ToString();
        TemplateBuilder t = new TemplateBuilder();
       
        t.InstantiateIn(TabPanel2);
        
    }
}

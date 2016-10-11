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

public partial class ErrorHandling : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        throw new ArgumentException("Please don't push that button again.", "Button1");
    }

    protected void ScriptManager1_AsyncPostBackError(object sender, AsyncPostBackErrorEventArgs e)
    {
        Label1.Text = e.Exception.Message;
    }
}


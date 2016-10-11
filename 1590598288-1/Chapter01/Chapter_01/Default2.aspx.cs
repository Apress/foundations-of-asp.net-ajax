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

    public partial class Default2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int a = 0;
            int b = 0;
            if (Request.QueryString["A"] != null)
            {
                a = Convert.ToInt16(Request.QueryString["A"].ToString());
            }
            if (Request.QueryString["B"] != null)
            {
                b = Convert.ToInt16(Request.QueryString["B"].ToString());
            }
            Response.Write(a + b);
        }
    }

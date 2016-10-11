using System;
using System.Web;
using System.Collections;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Collections.Generic;


/// <summary>
/// Summary description for AutoComplete
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
public class AutoComplete : System.Web.Services.WebService {

    public AutoComplete () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string[] GetSuggestedStrings(string prefixText, int count)
    {
        //Default to 3 if the count is zero
        if (count == 0)
            count = 3;
        List<string> stringList = new List<string>(count);
        for (int i = 0; i < count; i++)
        {
            stringList.Add(prefixText + i.ToString());
        }
        return stringList.ToArray();
    }

    
}


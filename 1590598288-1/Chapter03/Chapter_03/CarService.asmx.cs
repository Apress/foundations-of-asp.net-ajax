using System;
using System.Data;
using System.Web;
using System.Collections;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Web.Script;
using System.Web.Script.Services;

namespace Chapter_03
{
    [ScriptService]
    [WebService]
    public class CarService : System.Web.Services.WebService
    {
        [WebMethod]
        public int getCarValue(string strCarMake, string strCarModel, int strCarYear)
        {
            int nReturn = 0;

            if (strCarMake == "Honda")
            {
                if (strCarModel == "Pilot")
                {
                    nReturn = 40000;
                }
                else
                {
                    nReturn = 30000;
                }
            }
            else
            {
                nReturn = 20000;
            }

            int nDepreciation = (System.DateTime.Now.Year - strCarYear) * 2000;

            nReturn -= nDepreciation;

            return Math.Max(0, nReturn);
        }
    }
}
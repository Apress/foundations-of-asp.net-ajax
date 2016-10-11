<%@ Page language="C#" CodeFile="Default.aspx.cs" AutoEventWireup="false" Inherits="_Default" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
    <head>
        <title>WebForm1</title>
 
        <script language="javascript" type="text/javascript">
        
            var xmlHttp;
            
            function createXMLHttpRequest() {
                if (window.ActiveXObject) {
                    xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
                   }
                else if (window.XMLHttpRequest) {
                    xmlHttp = new XMLHttpRequest();
                }
            }
           
            function updateTotal() {
                frm = document.forms[0];
                url="Default2.aspx?A=" + frm.elements['A'].value + "&B=" + frm.elements['B'].value;
            
                xmlHttp.open("GET",url,true);
                xmlHttp.onreadystatechange=doUpdate;
                xmlHttp.send();
                return false;
            }
            
            function doUpdate() {
                if (xmlHttp.readyState==4 && xmlHttp.status == 200) {
                    document.forms[0].elements['TOT'].value=xmlHttp.responseText;
                }
            }
        </script>
    </head>
    <body onload="createXMLHttpRequest();">
        <form>
            <table height="143" cellspacing="0" cellpadding="0" width="300" border="0" >
                <tr valign="top">
                    <td height="32">
                        First Value
                    </td>
                    <td>
                        <input type="text" id="A" value="0" onkeyup="updateTotal();">
                    </td>
                </tr>
                <tr valign="top">
                    <td height="32">
                        Second Value
                    </td>
                    <td>
                        <input type="text" id="B" value="0" onkeyup="updateTotal();">
                    </td>
                </tr>
                <tr valign="top">
                    <td height="23">
                        Returned Total
                    </td>
                    <td>
                        <input type="text" id="TOT" value="0">
                    </td>
                </tr>
            </table>
        </form>
</body>
</html>
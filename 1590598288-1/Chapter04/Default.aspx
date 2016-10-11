<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASP.NET Ajax Client Samples</title>
 <script type="text/javascript"  language=javascript>
 
    function ArraySample() {
    //Instantiate a JavaScript array object
    var myArray = []; 
    myArray[0] = 'First';
    Array.add(myArray, 'Second');
    var newArray = ['Third','Fourth','Fifth'];
    
    //Add the newArray object to the myArray
    Array.addRange(myArray,newArray);   
    
    //Remove the last item from the Array
    Array.removeAt(myArray, 4);
    DisplayArray(myArray);

    }
    function DisplayArray(arr) {
        var i;
        var strArray='';
        for (i in arr) 
        {    strArray+=(i+':'+arr[i]+', ');
        }
        alert (strArray);
     }    
     
     function BooleanSample() {
     
     boolVar = Boolean.parse("false");
     if (!boolVar)
        alert ('False');
     
     }
     
     function DisplayDate() {
       var today = new Date();
       alert (today.format('D'));
     }
     
     function GenerateError() {
          try {
            throw Error.create('A custom error was generated');
            }
         catch(e) {
            alert(e.message);
            var errParms = {source: 'GenerateError', ErrorID: '999'};
         }
     }
   
     function DisplayCurrency() {
        var num = Number.parseInvariant("130.52");
        alert (num.localeFormat("c"));
     }      
     
     function BrowserDetection() {
     if(Sys.Browser.agent == Sys.Browser.InternetExplorer) 
         alert ('Your browser is Microsoft Internet Explorer!');
     else
        alert ('You are running: ' + Sys.Browser.name);
     }
         
      function pageLoad() {
          alert ('Loading Page...');
          //load components
      }
      
      function pageUnload() {
          alert ('Page unloading...');
      }
</script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" EnableScriptGlobalization=true  runat="server" />
        <div>
        <input type=button value="Array" onclick='ArraySample()' /><br />
        <input type=button value="Boolean" onclick='BooleanSample()' /><br />
        <input type=button value="Currency" onclick='DisplayCurrency()' /><br />
         <input type=button value="Date" onclick='DisplayDate()' /><br />
         <input type=button value="Generate Error" onclick='GenerateError()' /><br />
         <input type=button value="Browser Detection" onclick='BrowserDetection()' /><br />
        </div>
    </form>
</body>
</html>

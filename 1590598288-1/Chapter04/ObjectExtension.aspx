<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ObjectExtension.aspx.cs" Inherits="ObjectExtension" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <script language=javascript type="text/javascript">
            var num = new Number(4);
            var date = new Date('05/31/2007');
            function DisplayTypeInfo(obj) {
               document.writeln("Value: " + obj + "  | Type: "+ Object.getType(obj)+"  | Type Name: " + Object.getTypeName(obj));
               document.writeln("<BR>");
            }
            DisplayTypeInfo(num);
            DisplayTypeInfo(date);
        </script>
        
        
    <div>
    
    </div>
    </form>
</body>
</html>

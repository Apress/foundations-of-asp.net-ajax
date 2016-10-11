<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FilteredTextbox.aspx.cs" Inherits="FilteredTextbox" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>FilteredTextBox Extender Sample</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        
    You can only type numbers here: &nbsp;<asp:TextBox ID="TextBox1" runat="server" />
    </div><cc1:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender1"
           runat="server"
           TargetControlID="TextBox1"
           FilterType="Numbers" />
    </form>
</body>
</html>

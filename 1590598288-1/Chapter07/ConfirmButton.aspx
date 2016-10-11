<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ConfirmButton.aspx.cs" Inherits="ConfirmButton" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>ConfirmButton Sample</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />&nbsp;
        <cc1:ConfirmButtonExtender ID="ConfirmButtonExtender1" 
             TargetControlID="Button1" ConfirmText="Are you sure ?"
              runat="server">
        </cc1:ConfirmButtonExtender><br />
        <asp:Label ID="Label1" runat="server" Width="360px"></asp:Label></div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Confirm.aspx.cs" Inherits="Confirm" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <cc1:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" TargetControlID="Button1" ConfirmText="Are you Sure ?">
        </cc1:ConfirmButtonExtender>
    
    </div>
    </form>
</body>
</html>

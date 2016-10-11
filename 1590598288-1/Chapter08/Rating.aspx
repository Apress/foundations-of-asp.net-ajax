<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Rating.aspx.cs" Inherits="Rating" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    
    <form id="form1" runat="server"><asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Arial"
            Font-Size="Small" Text="Please rate your customer service experience with us:"
            Width="353px"></asp:Label>
        <cc1:Rating ID="Rating1" runat="server" CurrentRating="2">
        </cc1:Rating>
  
    </div>
    </form>
</body>
</html>

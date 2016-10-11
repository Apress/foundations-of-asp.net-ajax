<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AlwaysVisible.aspx.vb" Inherits="AlwaysVisible" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>AlwaysVisibleControlExtender</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
    </div>
        <cc1:AlwaysVisibleControlExtender ID="AlwaysVisibleControlExtender1" runat="server" 
        TargetControlID="Label1" HorizontalOffset="2" ScrollEffectDuration="1" HorizontalSide=Right VerticalSide=Top >
        </cc1:AlwaysVisibleControlExtender>
        <asp:Label ID="Label1" runat="server" BackColor="#0000C0" Font-Bold="True" Font-Size="Larger"
            ForeColor="White" Height="28px" Text="ASP.NET Ajax" Width="127px"></asp:Label>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            
            <br>
            <br>
            <br>
            <br>
            <br>
    </form>
</body>
</html>

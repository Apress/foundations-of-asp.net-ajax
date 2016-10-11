<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Timer.aspx.cs" Inherits="Timer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Timer Control Example</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
    </div>
        <asp:Timer ID="Timer1" runat="server"  Interval="4000" OnTick="Timer1_Tick">
        </asp:Timer>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
            </Triggers>
            <ContentTemplate>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>

    </form>
</body>
</html>

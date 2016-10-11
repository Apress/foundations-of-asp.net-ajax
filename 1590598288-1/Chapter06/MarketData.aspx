<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MarketData.aspx.cs" Inherits="MarketData" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Market Summary</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>    
    </div>
        <u>Market Summary:</u>
    <br /><br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
            </Triggers>
            <ContentTemplate>
            <table border="1">
            <tr>
                <td><asp:Label ID="Label1" runat="server" Text="DJIA"></asp:Label></td>
                <td align=right><asp:Label ID="lblDowJones" runat="server" Text="12000"></asp:Label></td>
            </tr>
             <tr>
                <td><asp:Label ID="Label2" runat="server" Text="NASDAQ"></asp:Label></td>
                <td align=right><asp:Label ID="lblNasdaq" runat="server" Text="2500"></asp:Label></td>
            </tr>
             <tr>
                <td><asp:Label ID="Label3" runat="server" Text="S&P 500"></asp:Label></td>
                <td align=right><asp:Label ID="lblSnp" runat="server" Text="1400"></asp:Label></td>
            </tr>
             </table>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <ProgressTemplate>Updating...</ProgressTemplate>
        </asp:UpdateProgress>
        <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick" />
 
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Chapter 10 Sample Application</title>
    
    <style type="text/css">
.style1 {
	font-family: Tahoma;
	font-size: small;
}
.style2 {
	font-family: Tahoma;
	font-size: small;
	color: #FFFFFF;
}
.draggable{
        cursor: move;
        font-weight: bold;
        width: 100%;
  
}
</style>
</head>
<body>
    <form id="form1" runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    <div>
    <table width="100%" cellspacing="0" cellpadding="0" style="border-width: 0">
	<tr>
		<td style="width: 122px; background-color: #1077AD"></td>
		<td style="background-color: #1077AD" valign="middle" class="style2">
		<strong>&nbsp; Foundations of ASP.NET Ajax Chapter 10 </strong></td>
	</tr>
</table><br /> 

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
<asp:Timer ID="Timer1" runat="server" Interval="5000" OnTick="Timer1_Tick"></asp:Timer>
<table width="100%" cellpadding="2" style="border-width: 0">
	<tr>
		<td style="width: 117px" class="style1"><strong>Stock Ticker</strong></td>
		<td style="width: 133px">
            <asp:TextBox ID="txtTicker" runat="server" MaxLength="4" >MSFT</asp:TextBox>
          
        </td>
		<td class="style1" style="width: 289px"><b>
                    <asp:Label ID="lblQuote" runat="server" Width="144px"></asp:Label>&nbsp;&nbsp;
            
             
        </b></td>
        <td class="style1" style="width: 147px">               
        </td>
        <td align=right>
	        <asp:UpdateProgress runat="server" ID="prog1" DisplayAfter="300" AssociatedUpdatePanelID="UpdatePanel1">
                <ProgressTemplate>
                    <span style="color: #ffff00; background-color: #3300ff">
                    Loading...</span>
                </ProgressTemplate>
            </asp:UpdateProgress>
	</td>
	</tr>
</table>
        <cc1:TabContainer ID="TabContainer1" runat="server"  ActiveTabIndex=2 AutoPostBack=true OnActiveTabChanged="TabContainer1_ActiveTabChanged">
            <cc1:TabPanel ID="TabPanel1" runat="server" HeaderText="TabPanel1">
                <HeaderTemplate>
                    Basic Quote
                </HeaderTemplate>
                <ContentTemplate> 
                    <asp:Label ID="lblBasicQuote" runat="server"></asp:Label>
                    </ContentTemplate>
            </cc1:TabPanel>
            <cc1:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2">
                <HeaderTemplate>
                    Price History
                </HeaderTemplate>
                <ContentTemplate>
                 <asp:GridView ShowHeader=False  ID="grdPriceHistory" runat="server" BackColor="White" BorderColor="#CCCCCC"
                  BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="119px" Width="470px" Font-Size="9pt">
                   <RowStyle ForeColor="#000066" />
                  <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                  </asp:GridView>
                  </ContentTemplate>
           </cc1:TabPanel>
            <cc1:TabPanel ID="TabPanel3" runat="server" HeaderText="TabPanel3">
                <HeaderTemplate>
                   Charts & Analytics
                </HeaderTemplate>
                <ContentTemplate>
                <table width="400" cellspacing="0" cellpadding="0" style="border-width: 0">
	        <tr>
		        <td style="background-color: #1077ad"><span class="style2">Price History 
		        Graph</span></td>
	        </tr>
	        <tr>
		        <td>
		         <asp:Image ID="imgPriceHistory" Width="800px" Height="400px" runat="server" />
                </td>
	        </tr>
        </table>
              <br />
       <table width="400" cellspacing="0" cellpadding="0" style="border-width: 0">
	        <tr>
		        <td style="background-color: #1077AD; height: 5px;"><span class="style2">Bollinger 
		        Band Analytics</span></td>
	        </tr>
	        <tr>
		        <td>
                    <asp:Image ID="imgAnalyticGraph" Width="800px" Height="400px" runat="server" />
                </td>
	        </tr>
        </table>
                </ContentTemplate>
            </cc1:TabPanel>
        </cc1:TabContainer>
           </ContentTemplate>
            </asp:UpdatePanel>
         </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TabPanel.aspx.cs" Inherits="TabPanel" %>

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
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> <br><br>
    </div>
        <cc1:TabContainer ID="TabContainer1" runat="server"  OnActiveTabChanged="TabContainer1_ActiveTabChanged">
       
        <cc1:TabPanel ID="TabPanel1" runat="server" HeaderText="First">
        </cc1:TabPanel>
        <cc1:TabPanel ID="TabPanel2" runat="server" HeaderText="Second"></cc1:TabPanel>
        <cc1:TabPanel ID="TabPanel3" runat="server" HeaderText="Third"></cc1:TabPanel>
        <cc1:TabPanel ID="TabPanel4" runat="server" HeaderText="Fourth">
        </cc1:TabPanel> </cc1:TabContainer>
    </form>
</body>
</html>

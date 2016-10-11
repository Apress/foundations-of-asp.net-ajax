<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdatePanel.aspx.cs" Inherits="UpdatePanel" %>

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
        <asp:Label ID="Label1" runat="server" Text="First Number: "></asp:Label>
        <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Second Number: "></asp:Label>
        <asp:TextBox ID="txt2" runat="server"></asp:TextBox><br />
    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" /><br />
<br />

    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode=Conditional >
        <ContentTemplate> 
            The answer to your question is: <br /><asp:Label ID="lblResult" runat="server"></asp:Label> <br /><br />
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        </ContentTemplate>
        <Triggers>
             <asp:AsyncPostBackTrigger ControlID="btnAdd" EventName="Click" />
        </Triggers>

       </asp:UpdatePanel>

    </div>
    </form>
</body>
</html>

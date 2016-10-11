<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateProgress.aspx.cs" Inherits="UpdateProgress" %>

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
    
    </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Calculate" />
            </ContentTemplate>
            
        </asp:UpdatePanel>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
        <ProgressTemplate>
            Calculating...
        </ProgressTemplate>

        </asp:UpdateProgress>
    </form>
</body>
</html>

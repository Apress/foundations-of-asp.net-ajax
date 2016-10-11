<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <asp:ScriptManager ID="ScriptManager1" runat="server" AsyncPostBackErrorMessage="An error has occured within the ScriptManger tag." OnAsyncPostBackError="ScriptManager1_AsyncPostBackError">
        <Services>
        <asp:ServiceReference Path="wstest.asmx"/>
        </Services>
        </asp:ScriptManager>
        &nbsp;
    <asp:ScriptManagerProxy > </asp:ScriptManagerProxy>
    </div>
    </form>
</body>
</html>

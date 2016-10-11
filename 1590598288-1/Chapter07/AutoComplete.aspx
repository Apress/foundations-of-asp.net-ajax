<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AutoComplete.aspx.cs" Inherits="AutoComplete" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>AutoCompleteExtender Sample</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
    </div>
        <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType=None></asp:TextBox>
        <cc1:AutoCompleteExtender ID="AutoCompleteExtender1" ServicePath="AutoComplete.asmx"
            ServiceMethod="GetSuggestedStrings" MinimumPrefixLength="3" TargetControlID="TextBox1"
            CompletionInterval="10" CompletionSetCount="3" EnableCaching="true" runat="server">
        </cc1:AutoCompleteExtender>
        
        </form>
</body>
</html>

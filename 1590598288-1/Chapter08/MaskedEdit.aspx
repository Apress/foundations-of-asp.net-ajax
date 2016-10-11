<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MaskedEdit.aspx.cs" Inherits="MaskedEdit" %>

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
        Please enter your SSN number: &nbsp;<asp:TextBox ID="TextBox1" runat="server" />
        <cc1:MaskedEditExtender ID="MaskedEditExtender1" runat="server"
                                 TargetControlID="TextBox1"
                                  MaskType= "Number"
                                   Mask="999-99-9999"
                                   MessageValidatorTip="true">
        </cc1:MaskedEditExtender>
        <ajaxToolkit:MaskedEditValidator
    ControlExtender="MaskedEditExtender1"
    ControlToValidate="TextBox1" 
    IsValidEmpty="False" 
    MaximumValue="12000" 
    EmptyValueMessage="Number is required"
    InvalidValueMessage="Number is invalid"
    MaximumValueMessage="Number > 12000"
    MinimumValueMessage="Number < -100"
    EmptyValueBlurredText="*" 
    InvalidValueBlurredMessage="*" 
    MaximumValueBlurredMessage="*" 
    MinimumValueBlurredText="*"
    Display="Dynamic" 
    TooltipMessage="Input a number: -100 up to 12.000"/>
    </div>
    </form>
</body>
</html>

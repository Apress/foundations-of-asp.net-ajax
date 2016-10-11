<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LengthAnimation.aspx.cs" Inherits="LengthAnimation" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Length Animation Sample</title>
</head>
<body>
    <form id="form1" runat="server">
   
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        
        <asp:Image ID="Image1" runat="server" ImageUrl="sample.jpg" />
        <cc1:AnimationExtender ID="AnimationExtender1" TargetControlID="Image1" runat="server">
            <Animations>
        
                <OnClick> 
               <Sequence>
                   <Length AnimationTarget="Image1" fps="30" property="style" propertyKey="width" startValue="800" endValue="200" duration="15" unit="px" />
                </Sequence>
                 </OnClick>
        
            </Animations>
        </cc1:AnimationExtender>
        </form>
</body>
</html>

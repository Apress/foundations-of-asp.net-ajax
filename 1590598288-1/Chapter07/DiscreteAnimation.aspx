<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DiscreteAnimation.aspx.cs" Inherits="DiscreteAnimation" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Discrete Animation Sample</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        
    </div>
     <asp:Image ID="Image1" runat="server" ImageUrl="sample.jpg" />
       <cc1:AnimationExtender ID="AnimationExtender1" runat="server" TargetControlID="Image1">
            <Animations>
            <OnClick> 
               <Sequence>
                   <Discrete fps="30" duration="10" property="style" propertyKey="width" ValuesScript="['700', '600', '500', '400', '300']"/>
                </Sequence>
                 </OnClick>
        
            </Animations>
        </cc1:AnimationExtender>
    </form>
</body>
</html>

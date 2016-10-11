<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FadeAnimation.aspx.cs" Inherits="FadeAnimation" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
   
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
        <asp:Label ID="Label1" runat="server" BackColor="Yellow" Font-Size="X-Large" ForeColor="Blue"
            Height="68px" Text="Fading In & Out" Width="165px"></asp:Label>
        <cc1:AnimationExtender ID="AnimationExtender1"  TargetControlID="Label1" runat="server">
            <Animations>
                <OnMouseOver>
                  <FadeOut Duration="1.5" Fps="30"  />
                </OnMouseOver>
                 <OnMouseOut>
                  <FadeIn Duration="1.5" Fps="30"  />
                </OnMouseOut>
              </Animations>
         </cc1:AnimationExtender>
    </form>
</body>
</html>

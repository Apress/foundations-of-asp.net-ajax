<%@ Page Language="VB" AutoEventWireup="true" CodeFile="Accordion.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Accordion sample</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div>
            <cc1:Accordion ID="Accordion1" runat="server" FadeTransitions="true" 
            FramesPerSecond="30" TransitionDuration="100" AutoSize=None>
          <Panes>
            <cc1:AccordionPane ID="AccordionPane1" runat="server">
            <Header><div style="background-color:Black; color:White; font-weight:bold;">
            Section 1</div></Header>
            <Content>Item 1 <br>
            Item 2 <br>
            Item 3 <br>
            Item 4 <br></Content>
            </cc1:AccordionPane>
            <cc1:AccordionPane ID="AccordionPane2" runat="server">
             <Header><div style="background-color:Gray; color:White; font-weight:bold;">
            Section 2</div></Header>
            <Content>
            Item 1 <br>
            Item 2 <br>
            Item 3 <br>
            Item 4<br>
            </Content>
            </cc1:AccordionPane>
            <cc1:AccordionPane ID="AccordionPane3" runat="server">
             <Header><div style="background-color:LightGrey; color:White; font-weight:bold;">
            Section 3</div></Header>
            <Content>Item 1 <br>
            Item 2 <br>
            Item 3 <br>
            Item 4<br></Content>
            </cc1:AccordionPane>
         </Panes></cc1:Accordion>
         </div>
    </form>
</body>
</html>

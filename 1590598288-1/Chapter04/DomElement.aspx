<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DomElement.aspx.cs" Inherits="DomElement" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Chapter 4- Using the DomElement</title>
<script language="javascript" type="text/javascript">
<!--
function repositionPanel() 
{
    var panel = $get('MovePanel');
    var newX = Number.parseInvariant($get('txtX').value);
    var newY = Number.parseInvariant($get('txtY').value);
    Sys.UI.DomElement.setLocation(panel, newX,newY);
    
    //Now use getLocation to retrieve the new coordinates
    var newPos = Sys.UI.DomElement.getLocation(panel);
    alert(String.format("Moved to: {0}, {1}", newPos.x, newPos.y));
}
// -->
//Sys.UI.DomElement.addHandler(Button1, "click", repositionPanel);

</script>
 <script language=javascript type="text/javascript">
    function display()
    {
        alert ($get('Select1').value);
    
    }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div id="MovePanel">
            <b>Move me to:</b> <br />
            X Coordinate
            <input type="text" id="txtX" />  <br />
            Y Coordinate
            <input type="text" id="txtY" /><br />
            <input id="Button1" type="button" value="Move" onclick="repositionPanel()" />
        </div>
        
    </form>
</body>
</html>

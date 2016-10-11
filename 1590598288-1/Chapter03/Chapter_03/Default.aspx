<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    
    <script type="text/javascript" language="javascript">
        
        function Button1_onClick()
        {
            var testCar = new AJAXBook.Car('Honda', 'Pilot', '2005');

            alert(testCar.get_Year());    
        }
        
    </script>
    
</head>
    <body >
        <form id="form1" runat="server">

            <asp:ScriptManager ID="ScriptManager1" runat="server">
                <Scripts>
                    <asp:ScriptReference Path="~/AJAXBook.js" />
                </Scripts>
                <Services>
                    <asp:ServiceReference Path="~/CarService.asmx" />
                </Services>
            </asp:ScriptManager>

            <div>
                <input id="Button1" type="button" value="button" onclick="return Button1_onClick()" />
            </div>
            
        </form>
    </body>
</html>

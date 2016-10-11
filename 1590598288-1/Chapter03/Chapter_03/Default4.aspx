<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default4.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    
    <script type="text/javascript" language="javascript">
        
        function Button1_onClick()
        {
            requestValue = Chapter_03.CarService.getCarValue(form1.txtMake.value,
                                                             form1.txtModel.value,
                                                             form1.txtYear.value,
                                                             onComplete,
                                                             onError);
            return false;
        }
        
        function onComplete(result)
        {
            alert("The car is worth $" + result);
        }
        
        function onError(error)
        {
            alert(error.get_message());
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

            <div title="Make">
                <br />
                <asp:Label ID="Label1" runat="server" Text="Make"></asp:Label>
                <asp:TextBox ID="txtMake" runat="server"></asp:TextBox>
                <br />
                
                <asp:Label ID="Label2" runat="server" Text="Model"></asp:Label>
                <asp:TextBox ID="txtModel" runat="server"></asp:TextBox>
                <br />
                
                <asp:Label ID="Label3" runat="server" Text="Year"></asp:Label>
                <asp:TextBox ID="txtYear" runat="server"></asp:TextBox><br />
                
                <input id="Button1" type="button" value="Get Value" onclick="return Button1_onClick()" />
            </div>
            
        </form>
    </body>
</html>


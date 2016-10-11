<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    
    <script type="text/javascript" language="javascript">
        
        function Button1_onClick()
        {
            var testSportsCar = new AJAXBook.SportsCar('Porsche','999','2005','6');
            var testImitationSportsCar = new AJAXBook.ImitationSportsCar('Shorspe', '123', '2005');

            ProcessCar(testSportsCar);
            ProcessCar(testImitationSportsCar);

            return false;
        }
        
        function ProcessCar(theCar)
        {
            if(AJAXBook.IStickShift.isImplementedBy(theCar))
            {
                alert("Current Car: " + theCar.get_MakeandModel() + 
                " This is a good sports car " + 
                " -- I can change gears with a stick shift.");
        
                theCar.set_CurrentGear(5);
                
                alert(theCar.get_MakeandModel() + " is now cruising in gear number: " + theCar.get_CurrentGear());
            }
            else
            {
                alert("Current Car: " + theCar.get_MakeandModel() +
                " This is an imitation sports car " +
                " -- it's an automatic with a sleek body.");
            }
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

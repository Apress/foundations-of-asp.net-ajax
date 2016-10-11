<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Panning.aspx.cs" Inherits="Panning" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Panning in VE</title>
    <script src="http://dev.virtualearth.net/mapcontrol/mapcontrol.ashx?v=5"></script>
     
</head>
<script>
    var newMap=null;
       function DisplayMap()
       {            
          newMap = new VEMap('MapPane');
          newMap.LoadMap(new VELatLong(47.7512121212, -122.43234), 9 ,'r');         
       }   
        
        function PanXY()
        {
            newMap.Pan(txtX.value, txtY.value);
        } 
        
        function PanLatLong()
        {
            newMap.PanToLatLong(new VELatLong(txtLat.value, txtLong.value));
        }
    </script>

</head>
<body onload="DisplayMap();">
    <div id='MapPane' style="position:relative; width:600px; height:400px;"></div>
    Pixels X:
    <input id="txtX" style="width: 50px" value="100" />&nbsp;&nbsp;|&nbsp;&nbsp; Pixels
    Y:
    <input id="txtY" style="width: 50px" value="100" />&nbsp;&nbsp;
    <input id="btnPanPixels" type="button" value="Pan by X/Y pixels" name="btnPanXY" onclick="PanXY()" />
    <br />
    Lat:
    <input id="txtLat" value="47.757014822032184" />&nbsp;&nbsp;|&nbsp;&nbsp; Long:
    <input id="txtLong" value="-122.4300390625" />&nbsp;&nbsp;
    <input id="btnPanLL" type="button" value="Pan to Lat/Long" name="btnPanLatLong" onclick="PanLatLong()" />
</body>

</html>

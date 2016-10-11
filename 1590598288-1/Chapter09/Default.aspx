<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chapter 9 Demos</title>
     <script src="http://dev.virtualearth.net/mapcontrol/mapcontrol.ashx?v=5"></script>
     <script language=javascript type="text/javascript">
      function DisplayMap()
      {            
          var newMap;
          newMap = new VEMap('MapPane');
          newMap.LoadMap(new VELatLong(47.7512121212, -122.43234), 9 ,'h' ,false,VEMapMode.Mode2D, true);         
      }        
      </script>
</head>
<body onload='DisplayMap();'>
    <form id="form1" runat="server">
        <div><!--
        <virtualEarthMap id="MyMap" latitude="48"
                 longitude="-122" mapStyle="Road"
                 zoomLevel="9">
</virtualEarthMap>-->

        </div>
        <div id='MapPane' style="position:relative; width:800px; height:600px;"></div>
    </form>
</body>
</html>

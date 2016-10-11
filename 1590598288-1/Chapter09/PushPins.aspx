<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PushPins.aspx.cs" Inherits="PushPins" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Pushpin Example</title>
    <script src="http://dev.virtualearth.net/mapcontrol/mapcontrol.ashx?v=5"></script>
</head>
<script>
    var newMap=null;
       function DisplayMap()
       {            
          newMap = new VEMap('MapPane');
          newMap.LoadMap(new VELatLong(47.7512121212, -122.43234), 9 ,'r');         
       }   
       function AddPin()
       { 
         var loc = new VELatLong(47.75, -122.43);
         var pin = newMap.AddPushpin(loc);
         pin.SetTitle(txtTitle.value);
         pin.SetDescription(txtDescription.value);
       }
    </script>
<body onload="DisplayMap();">
    <div id='MapPane' style="position:relative; width:600px; height:400px;"></div>
    Title: <input id="txtTitle" value="" /><br />
    Description <input id="txtDescription" value="" />
    <input id="btnAddPin" type="button" value="Add Pushpin" onclick="AddPin()" />
</body>

</html>

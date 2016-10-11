<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StringExtension.aspx.cs" Inherits="StringExtension" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body onload='stringBuilderSample()'>
    <form id="form1" runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <script language=javascript type="text/javascript">
        
            function StringExtension() {
                var asp = " ASP";
                var dotnet =".NET "; 
                var ajax = " Ajax ";
                alert (String.format("{0}{1} {2} String Extension!",asp.trimStart(),dotnet.trimEnd(),ajax.trim()));
            }
            
            function StringBuilderSample() {
               var sb = new Sys.StringBuilder("<html>");
               sb.appendLine('<head></head>');
               sb.appendLine('<body>');                 
               sb.appendLine('<div align=center>');
               sb.appendLine('Chapter 4 - ASP.NET Ajax Client Libraries');
               sb.append('</div>');
               sb.append('</body></html>');
               document.write(sb.toString());
            }
            
        </script>
    </form>
</body>
</html>

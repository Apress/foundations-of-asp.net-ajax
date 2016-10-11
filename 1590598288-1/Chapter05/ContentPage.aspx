<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeFile="ContentPage.aspx.cs" Inherits="ContentPage" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
    </asp:ScriptManagerProxy>
    <cc1:DragPanelExtender ID="DragPanelExtender1" runat="server" EnableViewState="False"
        TargetControlID="Label1">
    </cc1:DragPanelExtender>
    &nbsp;
    <asp:Label ID="Label1" runat="server" Text="You can drag and drop this label."></asp:Label>
</asp:Content>

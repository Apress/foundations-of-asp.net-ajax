<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PH.aspx.cs" Inherits="PH" %>

<%@ Register Assembly="ZedGraph" Namespace="ZedGraph" TagPrefix="zgw" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <zgw:ZedGraphWeb ID="ZedGraphWeb1" runat="server" Height="400" 
            OnRenderGraph="ZedGraphWeb1_RenderGraph" OutputFormat="Png" Width="800" MarginBottom="0" MarginLeft="0" MarginRight="0" MarginTop="0">
            <XAxis Color="Black" Cross="0" CrossAuto="True" GridColor="Black" GridDashOff="5"
                GridDashOn="1" GridPenWidth="1" IsInsideTic="True" IsMinorInsideTic="True" IsMinorOppositeTic="True"
                IsMinorTic="True" IsOmitMag="False" IsOppositeTic="True" IsPreventLabelOverlap="False"
                IsReverse="False" IsShowGrid="False" IsShowMinorGrid="False" IsShowTitle="True"
                IsTic="True" IsTicsBetweenLabels="True" IsUseTenPower="False" IsVisible="True"
                IsZeroLine="False" Max="0" MaxAuto="True" MaxGrace="0.1" Min="0" MinAuto="True"
                MinGrace="0.1" MinorGridColor="Gray" MinorGridDashOff="10" MinorGridDashOn="1"
                MinorGridPenWidth="1" MinorStepAuto="True" MinorTicSize="2.5" MinSpace="0" ScaleAlign="Center"
                ScaleFormat="g" ScaleFormatAuto="True" ScaleMag="0" ScaleMagAuto="True" StepAuto="True"
                TicPenWidth="1" TicSize="5" Title="" Type="Linear">
                <TitleFontSpec Angle="0" Family="Arial" FontColor="Black" IsBold="True" IsItalic="False"
                    IsUnderline="False" Size="14" StringAlignment="Center">
                    <Fill AlignH="Center" AlignV="Center" Color="White" IsScaled="True" IsVisible="True"
                        RangeMax="0" RangeMin="0" Type="None" />
                    <Border Color="Black" InflateFactor="0" IsVisible="False" PenWidth="1" />
                </TitleFontSpec>
                <ScaleFontSpec Angle="0" Family="Arial" FontColor="Black" IsBold="False" IsItalic="False"
                    IsUnderline="False" Size="14" StringAlignment="Center">
                    <Fill AlignH="Center" AlignV="Center" Color="White" IsScaled="True" IsVisible="True"
                        RangeMax="0" RangeMin="0" Type="None" />
                    <Border Color="Black" InflateFactor="0" IsVisible="False" PenWidth="1" />
                </ScaleFontSpec>
            </XAxis>
            <AxisBorder Color="Black" InflateFactor="0" IsVisible="True" PenWidth="1" />
            <Y2Axis Color="Black" Cross="0" CrossAuto="True" GridColor="Black" GridDashOff="5"
                GridDashOn="1" GridPenWidth="1" IsInsideTic="True" IsMinorInsideTic="True" IsMinorOppositeTic="True"
                IsMinorTic="True" IsOmitMag="False" IsOppositeTic="True" IsPreventLabelOverlap="False"
                IsReverse="False" IsShowGrid="False" IsShowMinorGrid="False" IsShowTitle="True"
                IsTic="True" IsTicsBetweenLabels="True" IsUseTenPower="False" IsVisible="False"
                IsZeroLine="True" Max="0" MaxAuto="True" MaxGrace="0.1" Min="0" MinAuto="True"
                MinGrace="0.1" MinorGridColor="Gray" MinorGridDashOff="10" MinorGridDashOn="1"
                MinorGridPenWidth="1" MinorStepAuto="True" MinorTicSize="2.5" MinSpace="0" ScaleAlign="Center"
                ScaleFormat="g" ScaleFormatAuto="True" ScaleMag="0" ScaleMagAuto="True" StepAuto="True"
                TicPenWidth="1" TicSize="5" Title="" Type="Linear">
                <TitleFontSpec Angle="0" Family="Arial" FontColor="Black" IsBold="True" IsItalic="False"
                    IsUnderline="False" Size="14" StringAlignment="Center">
                    <Fill AlignH="Center" AlignV="Center" Color="White" IsScaled="True" IsVisible="True"
                        RangeMax="0" RangeMin="0" Type="None" />
                    <Border Color="Black" InflateFactor="0" IsVisible="False" PenWidth="1" />
                </TitleFontSpec>
                <ScaleFontSpec Angle="-90" Family="Arial" FontColor="Black" IsBold="False" IsItalic="False"
                    IsUnderline="False" Size="14" StringAlignment="Center">
                    <Fill AlignH="Center" AlignV="Center" Color="White" IsScaled="True" IsVisible="True"
                        RangeMax="0" RangeMin="0" Type="None" />
                    <Border Color="Black" InflateFactor="0" IsVisible="False" PenWidth="1" />
                </ScaleFontSpec>
            </Y2Axis>
            <AxisFill AlignH="Center" AlignV="Center" Color="White" IsScaled="True" IsVisible="True"
                RangeMax="0" RangeMin="0" Type="Brush" />
            <PaneBorder Color="Black" InflateFactor="0" IsVisible="False" PenWidth="1" />
            <AxisRect Height="0" Width="0" X="0" Y="0" />
            <PieRect Height="0" Width="0" X="0" Y="0" />
            <YAxis Color="Black" Cross="0" CrossAuto="True" GridColor="Black" GridDashOff="5"
                GridDashOn="1" GridPenWidth="1" IsInsideTic="True" IsMinorInsideTic="True" IsMinorOppositeTic="True"
                IsMinorTic="True" IsOmitMag="False" IsOppositeTic="True" IsPreventLabelOverlap="False"
                IsReverse="False" IsShowGrid="False" IsShowMinorGrid="False" IsShowTitle="True"
                IsTic="True" IsTicsBetweenLabels="True" IsUseTenPower="False" IsVisible="True"
                IsZeroLine="True" Max="0" MaxAuto="True" MaxGrace="0.1" Min="0" MinAuto="True"
                MinGrace="0.1" MinorGridColor="Gray" MinorGridDashOff="10" MinorGridDashOn="1"
                MinorGridPenWidth="1" MinorStepAuto="True" MinorTicSize="2.5" MinSpace="0" ScaleAlign="Center"
                ScaleFormat="g" ScaleFormatAuto="True" ScaleMag="0" ScaleMagAuto="True" StepAuto="True"
                TicPenWidth="1" TicSize="5" Title="" Type="Linear">
                <TitleFontSpec Angle="-180" Family="Arial" FontColor="Black" IsBold="True" IsItalic="False"
                    IsUnderline="False" Size="14" StringAlignment="Center">
                    <Fill AlignH="Center" AlignV="Center" Color="White" IsScaled="True" IsVisible="True"
                        RangeMax="0" RangeMin="0" Type="None" />
                    <Border Color="Black" InflateFactor="0" IsVisible="False" PenWidth="1" />
                </TitleFontSpec>
                <ScaleFontSpec Angle="90" Family="Arial" FontColor="Black" IsBold="False" IsItalic="False"
                    IsUnderline="False" Size="14" StringAlignment="Center">
                    <Fill AlignH="Center" AlignV="Center" Color="White" IsScaled="True" IsVisible="True"
                        RangeMax="0" RangeMin="0" Type="None" />
                    <Border Color="Black" InflateFactor="0" IsVisible="False" PenWidth="1" />
                </ScaleFontSpec>
            </YAxis>
            <PaneFill AlignH="Center" AlignV="Center" Color="White" IsScaled="True" IsVisible="True"
                RangeMax="0" RangeMin="0" Type="Solid" />
            <FontSpec Angle="0" Family="Arial" FontColor="Black" IsBold="True" IsItalic="False"
                IsUnderline="False" Size="16" StringAlignment="Center">
                <Fill AlignH="Center" AlignV="Center" Color="White" IsScaled="True" IsVisible="True"
                    RangeMax="0" RangeMin="0" Type="None" />
                <Border Color="Black" InflateFactor="0" IsVisible="False" PenWidth="1" />
            </FontSpec>
            <Legend IsHStack="True" IsVisible="True" Position="Top">
                <Location AlignH="Left" AlignV="Center" CoordinateFrame="AxisFraction" Height="0"
                    Width="0" X="0" X1="0" Y="0" Y1="0">
                    <Rect Height="0" Width="0" X="0" Y="0" />
                    <TopLeft X="0" Y="0" />
                    <BottomRight X="0" Y="0" />
                </Location>
                <Fill AlignH="Center" AlignV="Center" Color="White" IsScaled="True" IsVisible="True"
                    RangeMax="0" RangeMin="0" Type="Brush" />
                <Rect Height="0" Width="0" X="0" Y="0" />
                <Border Color="Black" InflateFactor="0" IsVisible="True" PenWidth="1" />
                <FontSpec Angle="0" Family="Arial" FontColor="Black" IsBold="False" IsItalic="False"
                    IsUnderline="False" Size="12" StringAlignment="Center">
                    <Fill AlignH="Center" AlignV="Center" Color="White" IsScaled="True" IsVisible="True"
                        RangeMax="0" RangeMin="0" Type="Solid" />
                    <Border Color="Black" InflateFactor="0" IsVisible="False" PenWidth="1" />
                </FontSpec>
            </Legend>
        </zgw:ZedGraphWeb>
    
    </div>
    </form>
</body>
</html>

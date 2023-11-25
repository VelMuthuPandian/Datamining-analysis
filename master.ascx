<%@ Control Language="C#" AutoEventWireup="true" CodeFile="master.ascx.cs" Inherits="master" %>

 <style type="text/css">        
        .style3
        {
            background-image: url('images/27.jpeg');
            position: absolute;
            top: 34px;
            left: 46px;
            height: 4px;
            width: 935px;
            margin-right: 0px;
        }
        .style4
        {
        	height:5px;
        }
        .style6
        {
            width: 64px;
        }
        .style7
        {
            height: 25px;
            width: 268435456px;
        }
        .style8
        {
        }
        .style10
        {
            width: 103px;
        }
        .style12
        {
            width: 268435456px;
        }
        .style13
     {
         width: 756px;
     }
        </style>
        
    <table class="style3">
    <tr>
    <td class="style6" rowspan="3">
        <center>
            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/border.jpg" 
                Height="118px" Width="55px" /></center>
    </td>
    <td class="style8" colspan="3">
          
    <hr size="10" color="Green" />
          
    </td>
    <td class="style6" rowspan="3">          
        <asp:Image ID="Image3" runat="server" Height="122px" 
            ImageUrl="~/images/border1.jpg"/>
        </td>
    </tr>
    <tr>
    <td rowspan="2" class="style10">
          
    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/EB Logi.png"
            Height="99px" /> 
          
    </td>
    <td class="style7" colspan="2">
        <asp:Label ID="Label1" runat="server" Font-Names="Book Antiqua" 
            Font-Size="24px" ForeColor="#6600FF" Text="Horizontal Aggregations in SQL"></asp:Label>            
    </td>
    </tr>
    <tr>
    <td colspan="2" class="style12">
     <marquee><asp:Label ID="Label2" runat="server" Font-Bold="True" 
            Font-Names="Monotype Corsiva" Font-Size="25px" ForeColor="#0066FF" 
            Text="To Prepare Data Sets for Data Mining Analysis"></asp:Label></marquee>
    </td>
    </tr>
    <tr>
    <td class="style4" colspan="5">
    <hr size="10" color="Green" /> 
    </td>    
    </tr>   
    </table><br />
    <table style="position:absolute; top: 194px; left: 45px; height: 25px; width: 938px;">
    <tr style="background-image:url(images/27.jpeg);">
    <td class="style13">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/Homess.png" 
            Width="84px" Height="22px" onclick="ImageButton1_Click" />&nbsp;&nbsp;
            <asp:ImageButton 
            ID="ImageButton3" runat="server" Width="115px" Height="22px" 
            ImageUrl="~/images/Password.png" onclick="ImageButton3_Click"/>
        <asp:ImageButton ID="ImageButton2" runat="server" Height="19px" 
            ImageUrl="~/images/Viewss.png" Width="75px" onclick="ImageButton2_Click" />&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton4" runat="server" Height="19px" 
            ImageUrl="~/images/Detailss.png" Width="114px" 
            onclick="ImageButton4_Click" />&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton5" runat="server" Height="21px" 
            ImageUrl="~/images/Billss.png" Width="87px" onclick="ImageButton5_Click" />&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton6" runat="server" Height="22px" Width="105px" 
            ImageUrl="~/images/signout.png" onclick="ImageButton6_Click" />
    </td>
    <td>
      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Timer ID="Timer1" runat="server" Interval="1000" ontick="Timer1_Tick">
        </asp:Timer>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <Triggers>
        <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
        </Triggers>
        <ContentTemplate>
        <p align="right">
            <asp:Label ID="Label3" runat="server" Font-Names="DigifaceWide" 
            Font-Bold="True" ForeColor="Black"></asp:Label></p>
        </ContentTemplate>
        </asp:UpdatePanel>        
    </td>
    </tr>
    </table>
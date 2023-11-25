<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Src="~/Header.ascx" TagName="header" TagPrefix="uc1" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Horizontal Aggregation</title>
     <link rel="icon" href="images/EB.jpg" />    
    <style type="text/css">
        .style3
        {
            width: 242px;
        }
        .style16
        {
            width: 331px;
        }
        .style17
        {
        }
        .style18
        {
            width: 117px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
      <script runat="Server" type="text/C#">
        [System.Web.Services.WebMethod]
        [System.Web.Script.Services.ScriptMethod]
        public static AjaxControlToolkit.Slide[] GetSlides()
        {
            return new AjaxControlToolkit.Slide[] { 
            new AjaxControlToolkit.Slide("images/c1.jpeg", "Blue Hills", "Go Blue"),
            new AjaxControlToolkit.Slide("images/c2.jpeg", "Sunset", "Setting sun"),
            new AjaxControlToolkit.Slide("images/c3.jpeg", "Winter", "Wintery..."),
            new AjaxControlToolkit.Slide("images/c4.jpeg", "Water lillies", "Lillies in the water"),
            new AjaxControlToolkit.Slide("images/c5.jpeg", "Sedona", "Portrait style picture")};
        }       
    </script>
    <div>
        <%--<asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>--%>
    <uc1:header ID="Header1" runat="server" />
    <asp:Panel ID="Panel1" runat="server" 
            
            style="position:absolute; top: 213px; left: 46px; width: 703px; background-image:url('images/27.jpeg');">
    <table style="width: 704px">
    <tr>
    <td class="style18">
        &nbsp;</td>
        <td class="style16">
            &nbsp;</td>
        <td rowspan="5">
            <asp:Image ID="Image1" runat="server" Height="246px" 
                ImageUrl="~/images/c1.jpeg" Width="281px" />
            <cc1:SlideShowExtender ID="SlideShowExtender1" runat="server" AutoPlay="true" 
                ImageDescriptionLabelID="Label1" ImageTitleLabelID="Label2" Loop="true" 
                SlideShowServiceMethod="GetSlides" TargetControlID="Image1">
            </cc1:SlideShowExtender>
        </td>
        </tr>
        <tr>
            <td class="style18">
                <asp:Image ID="Image3" runat="server" Height="49px" 
                    ImageUrl="~/images/register.png" Width="80px" ImageAlign="Right" />
            </td>
            <td class="style16">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                    Font-Names="SaiMeera" Font-Size="20px" onclick="LinkButton1_Click">Registration</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="style18">
                <asp:Image ID="Image4" runat="server" Height="43px" 
                    ImageUrl="~/images/Login.png" Width="75px" ImageAlign="Right" />
            </td>
            <td class="style16">
                <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" 
                    Font-Names="SaiMeera" Font-Size="20px" onclick="LinkButton2_Click">Login</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="style18">
                <asp:Image ID="Image5" runat="server" Height="41px" 
                    ImageUrl="~/images/Forms.png" Width="75px" ImageAlign="Right" />
            </td>
            <td class="style16">
                <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" 
                    Font-Names="SaiMeera" Font-Size="20px" onclick="LinkButton3_Click">New 
                Connection</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="style18">
                <asp:Image ID="Image6" runat="server" Height="43px" 
                    ImageUrl="~/images/Price.png" Width="75px" ImageAlign="Right" />
            </td>
            <td class="style16">
                <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" 
                    Font-Names="SaiMeera" Font-Size="20px" onclick="LinkButton4_Click">Amount 
                Details</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td>
            <%--<marquee direction="up"><h3><center>
            <font color="blue" style="font-family:Book Antiqua;">Basic Queries</font></h3>
                <b>
                <ul>
                    <li>CASE Query</li>
                    <li>PIVOT Query</li>
                    <li>SPJ Query</li>
                </ul></center>
                </b></font></marquee>--%>
                </td>
        </tr>
        <tr>
            <td class="style17" colspan="3">
            <hr size="10" color="Green" />
            </td>
        </tr>
        </table>
         </asp:Panel>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label" Visible="false"></asp:Label>   
    </div>
    </form>
</body>
</html>

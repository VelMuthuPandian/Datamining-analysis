<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Src="~/Header.ascx" TagName="header" TagPrefix="uc1" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Horizontal Aggregation</title>
     <link rel="icon" href="images/EB.jpg" />
    <style type="text/css">
        .style13
        {
            width: 290px;
        }
        .style15
        {
            width: 123px;
        }
        .style18
        {
        }
        .style19
        {
            width: 106px;
        }
        .style20
        {
            width: 94px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <uc1:header ID="Header1" runat="server" />
    <asp:Panel ID="Panel1" runat="server" 
            
            
            style="position:absolute; top: 203px; left: 44px; width: 705px; height: 290px; margin-right: 71px;">
    <table style="width: 702px; height: 225px;">
    <tr>
    <td class="style15">
    
        &nbsp;</td>
        <td class="style20">
            &nbsp;</td>
        <td class="style19">
            &nbsp;</td>
        <td class="style13">
            &nbsp;</td>
        <td>
        </td>
    </tr>
        <tr>
            <td class="style15" rowspan="5">
                <asp:Image ID="Image1" runat="server" Height="81px" 
                    ImageUrl="~/images/Clients.png" Width="148px" ImageAlign="Bottom" />
            </td>
            <td class="style18" style="background-color:Aqua;" colspan="3">
                <center>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Garamond" 
                        Font-Size="20px" ForeColor="#0066FF" Text="Login"></asp:Label>
                </center>
            </td>
            <td rowspan="5">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/admin.png" 
                    Height="114px" ImageAlign="Bottom" />
            </td>
        </tr>
        <tr>
            <td class="style20">
                &nbsp;</td>
            <td class="style19">
             
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style20">
                &nbsp;</td>
            <td class="style19">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" 
                   Font-Names="Palatino Linotype" ForeColor="#0066FF" Text="Meter No."></asp:Label>
            </td>
            <td class="style13">
            <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFFFCC" 
                   BorderColor="#0099CC" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" 
                   Font-Names="Bookman Old Style" ForeColor="#FF3300"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style20">
                &nbsp;</td>
            <td class="style19">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" 
                    Font-Names="Palatino Linotype" ForeColor="#0066FF" Text="Password" ></asp:Label>
            </td>
            <td class="style13">
            <asp:TextBox ID="TextBox2" runat="server" BackColor="#FFFFCC" 
                   BorderColor="#0099CC" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" 
                   Font-Names="Bookman Old Style" ForeColor="#FF3300" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style20">
                &nbsp;</td>
            <td class="style19">
            <p align="right">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                   ImageUrl="~/images/login_icon.png" onclick="ImageButton1_Click" Width="70px" 
                            style="margin-left: 0px" /></p>
            </td>
            <td class="style13">
             &nbsp; &nbsp; &nbsp; &nbsp;
               <asp:ImageButton ID="ImageButton2" runat="server" Height="29px" 
                   ImageUrl="~/images/back.png" onclick="ImageButton2_Click" Width="61px" />            </td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="style18" style="background-color:Aqua;" colspan="3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table><br /><br />
   <table style="width: 708px">
   <tr style="background-image:url(images/27.jpeg);">
   <td>
   <hr size="10" color="green" />
   </td>
   </tr>
   </table>
    </asp:Panel> 
    </div>
    </form>
</body>
</html>

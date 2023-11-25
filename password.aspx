<%@ Page Language="C#" AutoEventWireup="true" CodeFile="password.aspx.cs" Inherits="password" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register TagName="master" Src="~/master.ascx" TagPrefix="uc1" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Horizontal Aggregation</title>
     <link rel="icon" href="images/EB.jpg" /> 
     <style type="text/css">
         .style1
         {
             width: 165px;
         }
         .style2
         {
         }
         .style4
         {
             width: 277px;
         }
     </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <uc1:master ID="master1" runat="server" />
    <asp:Panel ID="Panel1" runat="server"             
            
            style="position:absolute; top: 216px; left: 48px; width: 704px; height: 278px;">
    <table style="width: 704px;">
    <tr>
    <td>
    
        &nbsp;</td>
        <td class="style1">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
        </td>
    </tr>    
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" Font-Size="Larger" ForeColor="#993333" 
                    Text="Change Password"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Nina" 
                    ForeColor="#993333" Text="Old Password"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="169px" 
                    TextMode="Password" BackColor="#CCFFFF" BorderColor="#FF3399" 
                    BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Nina" 
                    ForeColor="#993333" Text="New Password"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="169px" 
                    TextMode="Password" BackColor="#CCFFFF" BorderColor="#FF3399" 
                    BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Nina" 
                    ForeColor="#993333" Text="Retype New Password"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox3" runat="server" Height="24px" Width="169px"  
                    TextMode="Password" BackColor="#CCFFFF" BorderColor="#FF3399" 
                    BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                <p align="right">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" 
                        Width="74px" ImageUrl="~/images/pass.png" onclick="ImageButton1_Click"/></p>
            </td>
            <td class="style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:ImageButton ID="ImageButton2" runat="server" Height="24px" 
                    ImageUrl="~/images/BACK.png" Width="74px" onclick="ImageButton2_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" colspan="4" style="background-image:url('images/27.jpeg');">
            <hr size="10" color="green" />
            </td>
        </tr>
    </table>
    </asp:Panel>
        <asp:Label ID="Label5" runat="server" Visible="false"></asp:Label>
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bill.aspx.cs" Inherits="Bill" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Src="~/master.ascx" TagName="header" TagPrefix="uc1" %>

<link rel="Stylesheet" href="styles.css" type="text/css" />

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Horizontal Aggregation</title>
     <link rel="icon" href="images/EB.jpg" />
     </head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:header ID="Master" runat="server" />
     <asp:Panel ID="Panel1" runat="server"             
            style="position:absolute; top: 332px; left: 36px; height: 336px; width: 729px;">
        <table style="height: 29px; width: 721px">        
        <tr>
        <td colspan="4">
        <hr size="10" color="green" />
        </td>
        </tr>
            <tr>
                <td>
                   <center>
                   <asp:Image ID="Image1" runat="server" Height="56px" Width="67px" 
                           ImageUrl="~/images/EB Logi.png" />
                </center>
                </td>
                <td>
                    <center>
                        <asp:Label ID="Label25" runat="server" Font-Size="Larger" 
                        Text="EB Bill" Font-Bold="True" Font-Names="Lucida Sans"></asp:Label></center>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Receipt Number  :" 
                        CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" CssClass="output"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Name  :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" CssClass="output"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Meter Number  :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server" CssClass="output"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Address  :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label8" runat="server" CssClass="output"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Date  :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label10" runat="server" CssClass="output"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Distribution Area :" 
                        CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label12" runat="server" CssClass="output"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="Month :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label14" runat="server" CssClass="output"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label15" runat="server" CssClass="input" Text="Year  :"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label16" runat="server" CssClass="output"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label17" runat="server" CssClass="input" Text="Amount  :"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label18" runat="server" CssClass="output"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label19" runat="server" Text="Tax  :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label20" runat="server" CssClass="output"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label21" runat="server" Text="Fine  :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label22" runat="server" CssClass="output"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label23" runat="server" Text="Total Amount  :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label24" runat="server" CssClass="output"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                <hr size="10" color="green" />
                </td>
            </tr>
        </table>
        </asp:Panel>
    <asp:Label ID="Label26" runat="server" Visible="False"></asp:Label>
    </div>
    </form>
</body>
</html>

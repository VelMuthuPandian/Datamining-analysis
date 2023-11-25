<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Downloadlist.aspx.cs" Inherits="Downloadlist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Src="~/Admin.ascx" TagName="Header" TagPrefix="uc1" %>

<link rel="Stylesheet" href="styles.css" type="text/css" />

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Horizontal Aggregation</title>
     <link rel="icon" href="images/EB Logi.png" />
    <style type="text/css">
        .style13
        {}
        .style14
        {
            width: 653px;
        }
        .style15
        {
            width: 368px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <uc1:Header ID="Header1" runat="server" />
    <asp:Panel ID="Panel1" runat="server" 
            
            style="position:absolute; top: 278px; left: 47px; height: 410px; width: 653px;">
    <table style="width: 650px">
    <tr>
    <td class="style13" colspan="3">
    <hr size="10" color="green" />
    </td>
    </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                <asp:Label ID="Label1" runat="server" CssClass="input" 
                    Text="Upload the New Application  :"></asp:Label>
            </td>
            <td class="style15">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="text" />
                </td>
            <td class="style15">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" 
                    ImageUrl="~/images/Clients.png" onclick="ImageButton1_Click" Width="40px" />
            </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13" colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#006600" BorderStyle="Solid" BorderWidth="2px" 
                    CellPadding="5" GridLines="Horizontal" Width="372px" 
                    onrowdeleting="GridView1_RowDeleting" CellSpacing="2" 
                    HorizontalAlign="Center">
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="Form ID" />
                        <asp:BoundField DataField="names" HeaderText="Form Name" />
                        <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13" colspan="3">
            <hr size="10" color="green" />
            </td>
        </tr>
    </table>
    </asp:Panel>
        <asp:Label ID="Label2" runat="server" Visible=false></asp:Label>
    </div>
    </form>
</body>
</html>

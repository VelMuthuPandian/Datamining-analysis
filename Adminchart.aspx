<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adminchart.aspx.cs" Inherits="Adminchart" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Src="~/Admin.ascx" TagName="Header" TagPrefix="uc1" %>

<link href="styles.css" rel="Stylesheet" />

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Horizontal Aggregation</title>
     <link rel="icon" href="images/EB Logi.png" />
     <style type="text/css">
         .style14
         {
             width: 188px;
         }
     </style>
   </head>
<body>
    <form id="form1" runat="server">
    <div>       
        <asp:Label ID="Label20" runat="server" Visible="False"></asp:Label>
    <uc1:Header ID="Header1" runat="server" />
    <asp:Panel ID="Panel1" runat="server" 
            
            style="position:absolute; top: 272px; left: 49px; height: 617px; width: 655px;">
    <table style="height: 23px; width: 654px">
    <tr>
        <td>
        </td>
    <td class="style14">
        
    </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Tunga" 
                    Font-Size="Larger" Text="User Bill Details"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14">
                <asp:Label ID="Label2" runat="server" CssClass="input" Text="Meter Number  :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="text" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>~ Select Name ~</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14">
                <asp:Label ID="Label3" runat="server" CssClass="input" Text="User Name  :"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label21" runat="server" CssClass="output"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14">
                <asp:Label ID="Label4" runat="server" CssClass="input" Text="Address :"></asp:Label>
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
            <td class="style14">
                <asp:Label ID="Label5" runat="server" CssClass="input" Text="Reading Month :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="text">
                    <asp:ListItem>~ Select Month ~</asp:ListItem>
                    <asp:ListItem>Feb</asp:ListItem>
                    <asp:ListItem>April</asp:ListItem>
                    <asp:ListItem>June</asp:ListItem>
                    <asp:ListItem>Aug</asp:ListItem>
                    <asp:ListItem>Oct</asp:ListItem>
                    <asp:ListItem>Dec</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14">
                <asp:Label ID="Label6" runat="server" CssClass="input" Text="Reading Year :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="text"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14">
                <asp:Label ID="Label7" runat="server" CssClass="input" Text="Reading Date :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="text"></asp:TextBox>
                &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="21px" 
                    ImageUrl="~/images/Calender.ico" Width="23px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14">
                <asp:Label ID="Label8" runat="server" CssClass="input" Text="Reading  :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="text"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14">
                <asp:Label ID="Label9" runat="server" Text="Consumed Unit :" CssClass="input"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="text"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14">
                <asp:Label ID="Label10" runat="server" Text="Unit Amount :" CssClass="input"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="text"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14">
                <asp:Label ID="Label11" runat="server" Text="Other Charges :" CssClass="input"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="text"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14">
                <asp:Label ID="Label12" runat="server" Text="Assessed Rs.  :" CssClass="input"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" CssClass="text"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14">
                <asp:Label ID="Label13" runat="server" Text="Fine :" CssClass="input"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" CssClass="text" AutoPostBack="True" 
                    ontextchanged="TextBox8_TextChanged"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14">
                <asp:Label ID="Label14" runat="server" Text="Total Cost  :" CssClass="input"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server" CssClass="text"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14">
                <asp:Label ID="Label15" runat="server" Text="Last Date For Paid :" 
                    CssClass="input"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server" CssClass="text"></asp:TextBox>
                &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="21px" 
                    ImageUrl="~/images/Calender.ico" Width="24px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14">
                <asp:Label ID="Label16" runat="server" Text="Paid Date  :" CssClass="input"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox11" runat="server" CssClass="text"></asp:TextBox>
                &nbsp;<asp:ImageButton ID="ImageButton3" runat="server" Height="20px" 
                    ImageUrl="~/images/Calender.ico" Width="24px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14">
                <asp:Label ID="Label17" runat="server" Text="Receipt Number  :" 
                    CssClass="input"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox12" runat="server" CssClass="text"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14">
                <asp:ImageButton ID="ImageButton5" runat="server" Height="32px" 
                    ImageAlign="Right" ImageUrl="~/images/REGISTERS.png" 
                    onclick="ImageButton5_Click" Width="51px" />
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton4" runat="server" Height="31px" 
                    ImageUrl="~/images/BACK.png" onclick="ImageButton4_Click" Width="56px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </asp:Panel>  
        <cc1:CalendarExtender ID="CalendarExtender1" runat="server" PopupButtonID="ImageButton1" TargetControlID="TextBox2">
        </cc1:CalendarExtender>
        <cc1:CalendarExtender ID="CalendarExtender2" runat="server" PopupButtonID="ImageButton2" TargetControlID="TextBox10">
        </cc1:CalendarExtender>
        <cc1:CalendarExtender ID="CalendarExtender3" runat="server" PopupButtonID="ImageButton3" TargetControlID="TextBox11">
        </cc1:CalendarExtender>
    </div>
    </form>
</body>
</html>

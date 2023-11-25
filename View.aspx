<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="View" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Src="~/master.ascx" TagName="header" TagPrefix="uc1" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Horizontal Aggregation</title>
     <link rel="icon" href="images/EB.jpg" />  
    <style type="text/css">
        .style1
        {
            width: 153px;
        }
        .style2
        {
            width: 161px;
        }
        .style3
        {
            width: 202px;
        }
        .style14
        {
            width: 260px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:header ID="Master" runat="server" />
      <asp:Panel ID="Panel1" runat="server"       
            
            
            style="position:absolute; top: 216px; left: 48px; width: 697px; height: 827px;">
    <table style="width: 693px; height: 707px;">
    <tr>
    <td class="style1">
        
    </td>
    <td class="style2">
    
    </td>
     <td class="style14">
         <asp:Label ID="Label1" runat="server" Text="User Details" Font-Bold="True" 
             Font-Names="Book Antiqua" Font-Size="Larger" ForeColor="#CC00CC"></asp:Label>
     </td>
        <td>
     
     </td>
    </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label23" runat="server" Text="Meter Number" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333"></asp:Label>
            </td>
            <td class="style14">
                <asp:TextBox ID="TextBox1" runat="server" Width="214px" BackColor="#CCFFFF" 
                    BorderColor="#FF3399" BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label22" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="User Name"></asp:Label>
            </td>
            <td class="style14">
                <asp:TextBox ID="TextBox2" runat="server" Width="214px" BackColor="#CCFFFF" 
                    BorderColor="#FF3399" BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label24" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Gender"></asp:Label>
            </td>
            <td class="style14">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" Height="26px" RepeatDirection="Horizontal" 
                    Width="211px" ForeColor="#993333">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label19" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Door Number"></asp:Label>
            </td>
            <td class="style14">
            <asp:TextBox ID="TextBox3" runat="server" Width="214px" BackColor="#CCFFFF" 
                    BorderColor="#FF3399" BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label18" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Street Name"></asp:Label>
            </td>
            <td class="style14">
                <asp:TextBox ID="TextBox4" runat="server" Width="214px" BackColor="#CCFFFF" 
                    BorderColor="#FF3399" BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label17" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993300" Text="Distribution"></asp:Label>
            </td>
            <td class="style14">
                <asp:TextBox ID="TextBox5" runat="server" Width="214px" BackColor="#CCFFFF" 
                    BorderColor="#FF3399" BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label16" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Circle"></asp:Label>
            </td>
            <td class="style14">
                <asp:TextBox ID="TextBox6" runat="server" Width="214px" BackColor="#CCFFFF" 
                    BorderColor="#FF3399" BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label15" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Region"></asp:Label>
            </td>
            <td class="style14">
                <asp:TextBox ID="TextBox7" runat="server" Width="214px" BackColor="#CCFFFF" 
                    BorderColor="#FF3399" BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label25" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="State"></asp:Label>
            </td>
            <td class="style14">
                <asp:TextBox ID="TextBox8" runat="server" Width="214px" BackColor="#CCFFFF" 
                    BorderColor="#FF3399" BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label26" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Pin Code"></asp:Label>
            </td>
            <td class="style14">
                <asp:TextBox ID="TextBox9" runat="server" Width="214px" BackColor="#CCFFFF" 
                    BorderColor="#FF3399" BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label27" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Cell"></asp:Label>
            </td>
            <td class="style14">
                <asp:TextBox ID="TextBox10" runat="server" Width="214px" BackColor="#CCFFFF" 
                    BorderColor="#FF3399" BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label28" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="E Mail"></asp:Label>
            </td>
            <td class="style14">
                <asp:TextBox ID="TextBox11" runat="server" MaxLength="6" Width="214px" 
                    BackColor="#CCFFFF" BorderColor="#FF3399" BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label29" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Phase Type"></asp:Label>
            </td>
            <td class="style14">
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Height="26px" Width="214px" 
                    BackColor="#CCFFFF">
                    <asp:ListItem>Select Type</asp:ListItem>
                    <asp:ListItem>I Phase</asp:ListItem>
                    <asp:ListItem>III Phase</asp:ListItem>
                    <asp:ListItem>Heavy Phase</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label30" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Connection Type"></asp:Label>
            </td>
            <td class="style14">
                
                <asp:DropDownList ID="DropDownList2" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Height="26px" Width="214px" 
                    BackColor="#CCFFFF">
                    <asp:ListItem>Select Type</asp:ListItem>
                    <asp:ListItem>Home</asp:ListItem>
                    <asp:ListItem>Stack Room</asp:ListItem>
                    <asp:ListItem>Shop</asp:ListItem>
                    <asp:ListItem>Company</asp:ListItem>
                    <asp:ListItem>Government</asp:ListItem>
                </asp:DropDownList>
                
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label31" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Connection Date"></asp:Label>
            </td>
            <td class="style14">
                <asp:TextBox ID="TextBox12" runat="server" MaxLength="10" Width="214px" 
                    BackColor="#CCFFFF" BorderColor="#FF3399" BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label32" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Connection Status"></asp:Label>
            </td>
            <td class="style14">
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" RepeatDirection="Horizontal" 
                    Width="214px">
                    <asp:ListItem>Live</asp:ListItem>
                    <asp:ListItem>Pending</asp:ListItem>
                    <asp:ListItem>Dead</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label33" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Extra Connection"></asp:Label>
            </td>
            <td class="style14">
                <asp:RadioButtonList ID="RadioButtonList3" runat="server" AutoPostBack="True" 
                    Font-Bold="True" Font-Names="Book Antiqua" ForeColor="#993333" 
                    RepeatDirection="Horizontal" Width="155px" 
                    onselectedindexchanged="RadioButtonList3_SelectedIndexChanged" >
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label34" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="No. of Connection"></asp:Label>
            </td>
            <td class="style14">
                <asp:TextBox ID="TextBox13" runat="server" Width="214px" BackColor="#CCFFFF" 
                    BorderColor="#FF3399" BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label35" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Phase Type"></asp:Label>
            </td>
            <td class="style14">
                <asp:DropDownList ID="DropDownList3" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Height="26px" Width="214px" 
                    BackColor="#CCFFFF">
                    <asp:ListItem>Select Type</asp:ListItem>
                    <asp:ListItem>I Phase</asp:ListItem>
                    <asp:ListItem>III Phase</asp:ListItem>
                    <asp:ListItem>Heavy Phase</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label36" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Connection Type"></asp:Label>
            </td>
            <td class="style14">
                <asp:DropDownList ID="DropDownList4" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Height="26px" Width="214px" 
                    BackColor="#CCFFFF">
                    <asp:ListItem>Select Type</asp:ListItem>
                    <asp:ListItem>Home</asp:ListItem>
                    <asp:ListItem>Stack Room</asp:ListItem>
                    <asp:ListItem>Shop</asp:ListItem>
                    <asp:ListItem>Company</asp:ListItem>
                    <asp:ListItem>Government</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label37" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Connection Date"></asp:Label>
            </td>
            <td class="style14">
                <asp:TextBox ID="TextBox14" runat="server" Width="214px" BackColor="#CCFFFF" 
                    BorderColor="#FF3399" BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label38" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Connection Status"></asp:Label>
            </td>
            <td class="style14">
                <asp:RadioButtonList ID="RadioButtonList4" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" RepeatDirection="Horizontal" 
                    Width="214px">
                    <asp:ListItem>Live</asp:ListItem>
                    <asp:ListItem>Pending</asp:ListItem>
                    <asp:ListItem>Dead</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="38px" 
                    ImageAlign="Right" ImageUrl="~/images/UPDATES.png" Width="57px" 
                    onclick="ImageButton1_Click" />
            </td>
            <td class="style14">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:ImageButton 
                    ID="ImageButton2" runat="server" Height="33px" 
                    ImageUrl="~/images/BACK.png" Width="46px" onclick="ImageButton2_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
        <td>
        </td>
        <td>
        </td>
        <td>
        </td>
        <td>
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
            <td colspan="4" style=" background-image: url('images/27.jpeg');">
            <hr size="10px" color="green" />
            </td>
        </tr>
    </table>
    </asp:Panel>
        <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox12" PopupButtonID="TextBox12">
        </cc1:CalendarExtender>
        <cc1:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="TextBox14" PopupButtonID="TextBox14">
        </cc1:CalendarExtender>
        <asp:Label ID="Label2" runat="server" Visible="false"></asp:Label>
    </div>
    </form>
</body>
</html>

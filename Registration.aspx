<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Src="~/Header.ascx" TagName="header" TagPrefix="uc1" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Horizontal Aggregation</title>
     <link rel="icon" href="images/EB.jpg" /> 
    <style type="text/css">
        .style13
        {
        }
        .style14
        {
        }
        .style15
        {
            width: 156px;
        }
        .style18
        {
            width: 137px;
        }
        .style19
        {
            width: 122px;
        }
        .style20
        {
            width: 54px;
        }
        .style21
        {
            width: 119px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
    <uc1:header ID="Header1" runat="server" />
    <asp:Panel ID="Panel1" runat="server"         
            style="position:absolute; top: 214px; left: 47px; width: 701px; height: 879px;">
    <table style="height: 475px; width: 703px; background-image: url('images/27.jpeg');">
    <tr>
    <td class="style14" colspan="3">
        &nbsp;</td>
        <td class="style15">
        </td>
        <td>
            &nbsp;</td>
    </tr>
        <tr>
            <td class="style14" colspan="3">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="style20">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                    Font-Names="Lucida Console" Font-Size="Large" ForeColor="Blue" 
                    Text="Registration"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14" colspan="3">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style18" colspan="2">
                <asp:Label ID="Label23" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Meter Number"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="TextBox1" runat="server" Width="214px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter the Meter Number"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style18" colspan="2">
                <asp:Label ID="Label22" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="User Name"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="TextBox2" runat="server" Width="214px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter the User Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style18" colspan="2">
                <asp:Label ID="Label21" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="PassWord"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="214px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Enter the Password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style18" colspan="2">
                <asp:Label ID="Label20" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text=" Retype Password"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="214px"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator3" runat="server" 
                    ControlToCompare="TextBox3" ControlToValidate="TextBox4" 
                    ErrorMessage="Enter correct Password"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style18" colspan="2">
                <asp:Label ID="Label24" runat="server" Text="Gender" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333"></asp:Label>
            </td>
            <td class="style15">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Bold="False" 
                    Font-Names="Book Antiqua" Height="27px" RepeatDirection="Horizontal" 
                    Width="225px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Transgender</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                    ErrorMessage="Select the Gender" ControlToValidate="RadioButtonList1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style19">
                 &nbsp;</td>
            <td class="style18" colspan="2">
                <asp:Label ID="Label19" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Door Number"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="TextBox5" runat="server" Width="214px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Enter Door Number"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style18" colspan="2">
                <asp:Label ID="Label18" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Street Name"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="TextBox6" runat="server" Width="214px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Enter Street Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style18" colspan="2">
                <asp:Label ID="Label17" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993300" Text="Distribution"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="TextBox7" runat="server" Width="214px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="Enter the Distribution name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style18" colspan="2">
                <asp:Label ID="Label16" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Circle"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="TextBox8" runat="server" Width="214px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="Enter the Circle Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style18" colspan="2">
                <asp:Label ID="Label15" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Region"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="TextBox9" runat="server" Width="214px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="Enter the Regin Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">
               
            </td>
            <td class="style18" colspan="2">
                <asp:Label ID="Label25" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="State"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="TextBox10" runat="server" Width="214px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                    ControlToValidate="TextBox10" ErrorMessage="Enter the State Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style18" colspan="2">
                <asp:Label ID="Label26" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Pin Code"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="TextBox11" runat="server" Width="214px" MaxLength="6"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
                    ControlToValidate="TextBox11" ErrorMessage="Enter the Pin Code"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style18" colspan="2">
                <asp:Label ID="Label27" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Cell"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="TextBox12" runat="server" Width="214px" MaxLength="10"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox12" ErrorMessage="Enter the Cell No." 
                    ValidationExpression="((\(0\d\d\) |(\(0\d{3}\) )?\d )?\d\d \d\d \d\d|\(0\d{4}\) \d \d\d-\d\d?)"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style18" colspan="2">
                <asp:Label ID="Label28" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="E Mail"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="TextBox13" runat="server" Width="214px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox13" ErrorMessage="Enter the correct EMail ID" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style18" colspan="2">
                <asp:Label ID="Label29" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Phase Type"></asp:Label>
            </td>
            <td class="style15">
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Height="26px" Width="214px">
                    <asp:ListItem>Select Type</asp:ListItem>
                    <asp:ListItem>I Phase</asp:ListItem>
                    <asp:ListItem>III Phase</asp:ListItem>
                    <asp:ListItem>Heavy Phase</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="Select Phase Type"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style18" colspan="2">
                <asp:Label ID="Label30" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Connection Type"></asp:Label>
            </td>
            <td class="style15">
                <asp:DropDownList ID="DropDownList2" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Height="26px" Width="214px">
                    <asp:ListItem>Select Type</asp:ListItem>
                    <asp:ListItem>Home</asp:ListItem>
                    <asp:ListItem>Stack Room</asp:ListItem>
                    <asp:ListItem>Shop</asp:ListItem>
                    <asp:ListItem>Company</asp:ListItem>
                    <asp:ListItem>Government</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                    ControlToValidate="DropDownList2" ErrorMessage="Select Connection Type"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style18" colspan="2">
                <asp:Label ID="Label31" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Connection Date"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="TextBox14" runat="server" Width="214px"></asp:TextBox>                
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
                    ControlToValidate="TextBox14" ErrorMessage="Select the Connection Date"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style18" colspan="2">
                <asp:Label ID="Label32" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Connection Status"></asp:Label>
            </td>
            <td class="style15">
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" RepeatDirection="Horizontal" Width="214px">
                    <asp:ListItem>Live</asp:ListItem>
                    <asp:ListItem>Pending</asp:ListItem>
                    <asp:ListItem>Dead</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                    ControlToValidate="RadioButtonList2" ErrorMessage="Select Phase Type"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style18" colspan="2">
                <asp:Label ID="Label33" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Extra Connection"></asp:Label>
            </td>
            <td class="style15">
                <asp:RadioButtonList ID="RadioButtonList3" runat="server" Font-Bold="True" Width="155px" 
                    Font-Names="Book Antiqua" ForeColor="#993333" RepeatDirection="Horizontal" 
                    AutoPostBack="True" 
                    onselectedindexchanged="RadioButtonList3_SelectedIndexChanged">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
                    ControlToValidate="RadioButtonList3" ErrorMessage="Select Extra Connection"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style18" colspan="2">
                <asp:Label ID="Label34" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="No. of Connection"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="TextBox15" runat="server" Width="214px" ></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style18" colspan="2">
                <asp:Label ID="Label35" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Phase Type"></asp:Label>
            </td>
            <td class="style15">
                <asp:DropDownList ID="DropDownList3" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Height="26px" Width="214px">
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
            <td class="style14">
                &nbsp;</td>
            <td class="style18" colspan="2">
                <asp:Label ID="Label36" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Connection Type"></asp:Label>
            </td>
            <td class="style15">
                <asp:DropDownList ID="DropDownList4" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Height="26px" Width="214px">
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
            <td class="style14">
                &nbsp;</td>
            <td class="style18" colspan="2">
                <asp:Label ID="Label37" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Connection Date"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="TextBox16" runat="server" Width="214px" ></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style18" colspan="2">
                <asp:Label ID="Label38" runat="server" Font-Bold="True" 
                    Font-Names="Book Antiqua" ForeColor="#993333" Text="Connection Status"></asp:Label>
            </td>
            <td class="style15">
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
            <td class="style14">
                &nbsp;</td>
            <td class="style18" colspan="2">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13" colspan="3">
                &nbsp;</td>
            <td class="style15">
                <asp:ImageButton ID="ImageButton4" runat="server" 
                    ImageUrl="~/images/REGISTERS.png" style="margin-left: 0px" 
                    ToolTip="Registration" onclick="ImageButton4_Click" Height="46px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton5" runat="server" CausesValidation="False" 
                    Height="39px" ImageUrl="~/images/BACK.png" onclick="ImageButton5_Click" 
                    Width="58px" />
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>       
        <tr>
            <td class="style14" colspan="3">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14" colspan="5">
                <hr color="green" size="10" />
            </td>
        </tr>
    </table>
    </asp:Panel>
        <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox14" PopupButtonID="TextBox14">
        </cc1:CalendarExtender>
        <cc1:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="TextBox16" PopupButtonID="TextBox16">
        </cc1:CalendarExtender>
    </div>
    </form>
</body>
</html>

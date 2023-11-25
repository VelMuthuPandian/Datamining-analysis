<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adminview.aspx.cs" Inherits="Adminview" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Src="~/Admin.ascx" TagName="Header" TagPrefix="uc1" %>

<html xmlns="http://www.w3.org/1999/xhtml">

<link rel="Stylesheet" href="styles.css" type="text/css" />

<head runat="server">
     <title>Horizontal Aggregation</title>
     <link rel="icon" href="images/EB Logi.png" />
     <style type="text/css">
         .style23
         {
         }
         .style24
         {
         }
        
         .style25
         {
             width: 192px;
         }
        
         .style26
         {
         }
        
         .style27
         {
             width: 16px;
         }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel5" runat="server" 
            
            
            style="position:absolute; top: 308px; left: 19px; height: 243px; width: 712px;">
        <table style="width: 704px">
        <tr>
        <td>
        <hr size="10" color="green" />
        </td>
        </tr>
        <tr>
         <td class="style27">
       
             <asp:GridView ID="GridView4" runat="server" BackColor="#DEBA84" 
                 BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                 CellSpacing="2">
                 <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                 <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                 <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                 <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
             </asp:GridView>
       
        </td>
        </tr>
        <tr>
         <td>
        <hr size="10" color="green" />
        </td>
        </tr>
        </table>
        </asp:Panel>
    <uc1:Header ID="Header1" runat="server" />
        <asp:Panel ID="Panel3" runat="server" 
            style="position:absolute; top: 236px; left: 49px; height: 34px; width: 923px;">
        <table style="width: 915px; height: 30px">
        <tr>
        <td>
        
            <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" 
                ImageUrl="~/images/SPJ_View.png" onclick="ImageButton1_Click" 
                Width="109px" />
            &nbsp;
            <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="30px" 
                Text="||"></asp:Label>
            &nbsp;<asp:ImageButton ID="ImageButton5" runat="server" Height="20px" 
                ImageUrl="~/images/PIVOT_View.png" onclick="ImageButton5_Click" Width="135px" />
&nbsp;&nbsp;<asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Size="30px" 
                Text="||"></asp:Label>
&nbsp;
            <asp:ImageButton ID="ImageButton2" runat="server" Height="22px" 
                ImageUrl="~/images/CASE_View.png" Width="128px" 
                onclick="ImageButton2_Click" />
            &nbsp;
            <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="30px" 
                Text="||"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton3" runat="server" Height="24px" 
                ImageUrl="~/images/H-View.png" Visible="False" Width="163px" 
                onclick="ImageButton3_Click" />
        
            &nbsp;&nbsp;
            <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="30px" 
                Text="||" Visible="False"></asp:Label>
            &nbsp;
            <asp:ImageButton ID="ImageButton4" runat="server" Height="23px" 
                ImageUrl="~/images/V_View.png" onclick="ImageButton4_Click" Visible="False" 
                Width="166px" />
        
        </td>
        </tr>
        </table>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" 
            style="position:absolute; top: 283px; left: 25px; height: 311px; width: 672px;">
        <table style="width: 669px">
        <tr>
        <td class="style23" colspan="2">
        <hr size="10" color="green" />
        </td>
        </tr>
            <tr>
                <td class="style25">
                    <asp:Label ID="Label1" runat="server" Text="Select Meter Number" 
                        CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                        CssClass="text" Height="27px" Width="173px" 
                        onselectedindexchanged="DropDownList3_SelectedIndexChanged">
                        <asp:ListItem>~ Select Meter ~</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style25">
                    <asp:Label ID="Label2" runat="server" Text="Select Year" CssClass="input" 
                        Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                        CssClass="text" Height="27px" Width="169px" 
                        onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
                        Visible="False">
                        <asp:ListItem>~ Selct Year ~</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style25">
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style24" colspan="2">
                    <asp:GridView ID="GridView2" runat="server" AllowSorting="True" 
                        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" CellSpacing="2" ShowHeader="False">
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="style25">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style23" colspan="2">
                <hr size="10" color="green" />
                </td>
            </tr>
        </table>
        </asp:Panel>
    <asp:Panel ID="Panel1" runat="server" 
            
            
            style="position:absolute; top: 289px; left: 35px; height: 319px; width: 977px;">
    <table style="width: 697px;"> 
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="SaiSai" 
                    ForeColor="Blue" Text="Meter Number" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    BackColor="#CCFFFF" Font-Bold="True" Font-Names="SaiSai" ForeColor="#FF3300" 
                    Height="21px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    Width="190px" Visible="False">
                    <asp:ListItem>~ Select Meter ~</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="SaiSai" 
                    ForeColor="Blue" Text="User Name" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="SaiSai" 
                    ForeColor="#FF3300" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="SaiSai" 
                    ForeColor="Blue" Text="Address" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="SaiSai" 
                    ForeColor="Red" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="3" BackColor="#DEBA84" BorderColor="#DEBA84" 
                    BorderStyle="None" BorderWidth="1px" CellSpacing="2">
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <Columns>
                        <asp:BoundField DataField="dates" HeaderText="Date" />
                        <asp:BoundField DataField="readingdate" HeaderText="Reading Date" />
                        <asp:BoundField DataField="reading" HeaderText="Reading" />
                        <asp:BoundField DataField="conunit" HeaderText="Unit" />
                        <asp:BoundField DataField="unitrs" HeaderText="Unit Rs." />
                        <asp:BoundField DataField="otherrs" HeaderText="Other Rs." />
                        <asp:BoundField DataField="assesrs" HeaderText="Asses. Rs." />
                        <asp:BoundField DataField="fines" HeaderText="Fine" />
                        <asp:BoundField DataField="totrs" HeaderText="Total Rs." />
                        <asp:BoundField DataField="lastdate" HeaderText="Last Date" />
                        <asp:BoundField DataField="paydate" HeaderText="Payed Date" />
                        <asp:BoundField DataField="recno" HeaderText="Recpt. No." />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style="background-image:url(images/27.jpeg);">
            <hr color="green" size="10" />
            </td>
        </tr>
    </table>
        <asp:Label ID="Label6" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="Label7" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="Label8" runat="server" Visible="False"></asp:Label>
    </asp:Panel>
        <asp:Panel ID="Panel4" runat="server"            
            
            style="position:absolute; top: 295px; left: 17px; height: 309px; width: 668px;">
        <table style="height: 24px; width: 665px">
        <tr>
        <td colspan="2">
        <hr size="10" color="green" />
        </td>
        </tr>
            <tr>
                <td class="style26">
                    <asp:Label ID="Label11" runat="server" CssClass="input" 
                        Text="Select The Meter  :"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                        CssClass="text" Height="18px" 
                        onselectedindexchanged="DropDownList4_SelectedIndexChanged" Width="194px">
                        <asp:ListItem>~ Select Meter ~</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style26">
                    <asp:Label ID="Label12" runat="server" CssClass="input" 
                        Text="Select The Year  :" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" 
                        CssClass="text" Height="19px" 
                        onselectedindexchanged="DropDownList5_SelectedIndexChanged" Visible="False" 
                        Width="195px">
                        <asp:ListItem>~ Select Year ~</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style26">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style26" colspan="2">
                    <asp:GridView ID="GridView3" runat="server" AllowSorting="True" 
                        BackColor="#DEBA84" BorderColor="#DEBA84" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
                        AutoGenerateColumns="False">
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <Columns>
                            <asp:BoundField DataField="dates" HeaderText="Month" />
                            <asp:BoundField DataField="Usage" HeaderText="Usage" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="style26">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                <hr size="10" color="green" />
                </td>
            </tr>
        </table>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
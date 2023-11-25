<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Src="~/master.ascx" TagName="header" TagPrefix="uc1" %>

<link rel="Stylesheet" href="styles.css" type="text/css" />

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Horizontal Aggregation</title>
     <link rel="icon" href="images/EB.jpg" />  
     <style type="text/css">
         .style14
         {
             width: 57px;
         }
     </style>
     </head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:header ID="Master" runat="server" />
      <asp:Panel ID="Panel1" runat="server"             
            
            style="position:absolute; top: 237px; left: 46px; width: 936px; height: 42px; margin-right: 164px;">         
      <table style="width: 927px; height: 41px;">
    <tr>
    <td>
    <marquee behavior="slide" direction="left" scrollamount="20">
        <asp:ImageButton ID="ImageButton1" runat="server" Height="24px" 
            ImageUrl="~/images/Year Wise.png" Width="75px" 
            onclick="ImageButton1_Click" />&nbsp;&nbsp;&nbsp;
            
            <asp:ImageButton ID="ImageButton2" runat="server" Height="23px" 
            ImageUrl="~/images/month wise.png" onclick="ImageButton2_Click" />&nbsp;&nbsp;
           
            <asp:ImageButton ID="ImageButton3" runat="server" Height="22px" 
            ImageUrl="~/images/Maximum Paid.png" onclick="ImageButton3_Click" 
            Width="85px" />&nbsp;&nbsp;&nbsp;
            
            <asp:ImageButton ID="ImageButton4" runat="server" Height="21px" 
            ImageUrl="~/images/Minimum Paid.png" onclick="ImageButton4_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
            
            <asp:ImageButton ID="ImageButton5" runat="server" Height="21px" 
            ImageUrl="~/images/Avg Paid.png" onclick="ImageButton5_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
           
            <asp:ImageButton ID="ImageButton6" runat="server" Height="22px" 
           ImageUrl="~/images/Total Paid.png" onclick="ImageButton6_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <asp:ImageButton ID="ImageButton7" runat="server" Height="23px" 
            ImageUrl="~/images/Last Paid.png" onclick="ImageButton7_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
            <asp:ImageButton ID="ImageButton8" runat="server" Height="23px" 
            ImageUrl="~/images/All Bills.png" onclick="ImageButton8_Click" />            
    </marquee>
    </td>
    </tr>
    </table>      
    </asp:Panel>           
    <asp:Panel ID="Panel2" runat="server" 
            style="position:absolute; top: 305px; left: 50px;">
    <table style="width: 695px">
    <tr>
    <td colspan="4">
    
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
                <asp:Label ID="Label1" runat="server" Text="Meter" CssClass="input"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label4" runat="server" CssClass="output"></asp:Label>
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
                <asp:Label ID="Label2" runat="server" Text="Name" CssClass="input"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label5" runat="server" CssClass="output"></asp:Label>
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
                <asp:Label ID="Label3" runat="server" Text="Address" CssClass="input"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label6" runat="server" CssClass="output"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="dates" HeaderText="Month" />
                        <asp:BoundField DataField="yr" HeaderText="Year" />
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
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </asp:Panel>

        <asp:Panel ID="Panel3" runat="server"             
            style="position:absolute; top: 318px; left: 230px; height: 294px; width: 363px;" >
        <table style="width: 362px; height: 249px; ">
        <tr>
            <td colspan="2">
            <hr size="10" color="green" />
            </td>
        </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Select Year : " CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        BackColor="#CCFFFF" Height="62px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                        Width="141px" style="margin-left: 0px" CssClass="output">
                        <asp:ListItem>~ Select Year ~</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Select  Month :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                        BackColor="#CCFFFF" Height="19px" onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
                        Width="143px" CssClass="output">
                        <asp:ListItem>~ Select Month ~</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
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
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="Reading  :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label14" runat="server" CssClass="output"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label15" runat="server" Text="Paid Amount    :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label16" runat="server" CssClass="output"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label17" runat="server" Text="Paid Date     :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label18" runat="server" CssClass="output"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label19" runat="server" Text=" Receipt Number  :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label20" runat="server" CssClass="output"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <hr color="green" size="10" />
                </td>
            </tr>
        </table>
        </asp:Panel>
       <asp:Panel ID="Panel4" runat="server"             
            
            style="position:absolute; top: 335px; left: 194px; height: 290px; width: 361px;">
     
       <table style="width: 362px; height: 249px; ">
        <tr>
            <td colspan="2">
            <hr size="10" color="green" />
            </td>
        </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label29" runat="server" Text="Select Month : " CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                        BackColor="#CCFFFF" Height="62px" Width="141px" style="margin-left: 0px" 
                        onselectedindexchanged="DropDownList3_SelectedIndexChanged" CssClass="output">
                        <asp:ListItem>~ Select Month ~</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label30" runat="server" Text="Select  Year :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                        BackColor="#CCFFFF" Height="19px" Width="143px" 
                        onselectedindexchanged="DropDownList4_SelectedIndexChanged" CssClass="output">
                        <asp:ListItem>~ Select Year ~</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
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
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label21" runat="server" Text="Reading :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label22" runat="server" CssClass="output"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label23" runat="server" Text="Paid Amount    :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label24" runat="server" CssClass="output"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label25" runat="server" Text="Paid Date     :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label26" runat="server" CssClass="output"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label27" runat="server" Text=" Receipt Number  :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label28" runat="server" CssClass="output"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <hr color="green" size="10" />
                </td>
            </tr>
        </table>
        </asp:Panel>
        <asp:Panel ID="Panel5" runat="server"         
            style="position:absolute; top: 392px; left: 224px; height: 201px; width: 307px;">
        <table style="height: 28px; width: 311px">
        <tr>
        <td class="style20" colspan="2">
        <hr size="10" color="green" />
        </td>
        </tr>
            <tr>
                <td class="style21">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style21">
                    <asp:Label ID="Label31" runat="server" Text="Reading :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label32" runat="server" CssClass="output"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style21">
                    <asp:Label ID="Label33" runat="server" Text="Paid Amount :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label34" runat="server" CssClass="output"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style21">
                    <asp:Label ID="Label35" runat="server" Text="Paid Date :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label36" runat="server" CssClass="output"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style21">
                    <asp:Label ID="Label37" runat="server" Text="Receipt Number :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label38" runat="server" CssClass="output"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style21">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20" colspan="2">
                    <hr size="10" color="green" />
                </td>
            </tr>
        </table>
        </asp:Panel>
         <asp:Panel ID="Panel6" runat="server"             
            
            style="position:absolute; top: 381px; left: 235px; height: 184px; width: 341px;">
        <table style="height: 20px; width: 340px">
        <tr>
        <td colspan="2">
        <hr size="10" color="green" />
        </td>
        </tr>
            <tr>
                <td class="style22">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style22">
                    <asp:Label ID="Label39" runat="server" Text="Reading  :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label40" runat="server" CssClass="output"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style22">
                    <asp:Label ID="Label41" runat="server" Text="Paid Amount  :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label42" runat="server" Font-Bold="True" Font-Names="SaiSai" 
                        ForeColor="#009933" CssClass="output"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style22">
                    <asp:Label ID="Label43" runat="server" Text="Paid Date  :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label44" runat="server" CssClass="output"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style22">
                    <asp:Label ID="Label45" runat="server" Text="Receipt Number :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label46" runat="server" CssClass="output"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style22">
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
         <asp:Panel ID="Panel7" runat="server"       
            style="position:absolute; top: 336px; left: 22px; height: 150px; width: 734px;">
        <table style="height: 150px; width: 723px">
        <tr>
        <td>
        <hr size="10" color="green" />
        </td>
        </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label47" runat="server" Text="Average Paid to" CssClass="input"></asp:Label>
                    &nbsp;
                    <asp:Label ID="Label48" runat="server" CssClass="output"></asp:Label>
                    &nbsp;
                    <asp:Label ID="Label49" runat="server" Text="till upto date is " CssClass="input"></asp:Label>
                    &nbsp;
                    <asp:Label ID="Label50" runat="server" CssClass="output"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                <hr size="10" color="green" />
                </td>
            </tr>
        </table>
        </asp:Panel>
         <asp:Panel ID="Panel8" runat="server"             
            
            style="position:absolute; top: 348px; left: 36px; height: 141px; width: 790px;">
         <table style="width: 781px">
         <tr>
         <td>
         <hr size="10" color="green" />
         </td>
         </tr>
             <tr>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td>
                     <asp:Label ID="Label51" runat="server" Text="Totaly You Paid the Date is  " CssClass="input"></asp:Label>
                     &nbsp;&nbsp;&nbsp;
                     <asp:Label ID="Label52" runat="server" CssClass="output"></asp:Label>
                     &nbsp;&nbsp;
                     <asp:Label ID="Label53" runat="server" Text="Till upto date is " CssClass="input"></asp:Label>
                     &nbsp;&nbsp;
                     <asp:Label ID="Label54" runat="server" CssClass="output"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td>
                    <hr size="10" color="green" />
                </td>
             </tr>
         </table>
        </asp:Panel>
        <asp:Panel ID="Panel9" runat="server"             
            style="position:absolute; top: 332px; left: 36px; height: 336px; width: 729px;">
        <table style="height: 29px; width: 721px">        
        <tr>
        <td colspan="4">
        <hr size="10" color="green" />
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
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label55" runat="server" Text="Receipt Number  :" 
                        CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label56" runat="server" CssClass="output"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label57" runat="server" Text="Name  :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label58" runat="server" CssClass="output"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label59" runat="server" Text="Meter Number  :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label60" runat="server" CssClass="output"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label61" runat="server" Text="Address  :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label62" runat="server" CssClass="output"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label63" runat="server" Text="Date  :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label64" runat="server" CssClass="output"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label65" runat="server" Text="Distribution Area :" 
                        CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label66" runat="server" CssClass="output"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label69" runat="server" Text="Month :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label70" runat="server" CssClass="output"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label67" runat="server" CssClass="input" Text="Year  :"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label68" runat="server" CssClass="output"></asp:Label>
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
                    <asp:Label ID="Label71" runat="server" CssClass="input" Text="Amount  :"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label72" runat="server" CssClass="output"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label73" runat="server" Text="Tax  :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label74" runat="server" CssClass="output"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label75" runat="server" Text="Fine  :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label76" runat="server" CssClass="output"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label77" runat="server" Text="Total Amount  :" CssClass="input"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label78" runat="server" CssClass="output"></asp:Label>
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
        <asp:Label ID="Label7" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="Label8" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="Label9" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="Label10" runat="server" Visible="False"></asp:Label>
     <asp:Label ID="Label79" runat="server" Text="||" 
            style="position:absolute; top: 241px; left: 128px; right: 593px;" 
            Font-Bold="True" Font-Size="X-Large" ></asp:Label>
       <asp:Label ID="Label80" runat="server" Text="||" 
            style="position:absolute; top: 240px; left: 251px;" Font-Bold="True" 
            Font-Size="X-Large"></asp:Label>
       <asp:Label ID="Label81" runat="server" Text="||" 
            style="position:absolute; top: 241px; left: 349px; right: 390px;" 
            Font-Bold="True" Font-Size="X-Large"></asp:Label>
       <asp:Label ID="Label82" runat="server" Text="||"             
            style="position:absolute; top: 241px; left: 442px; height: 31px; width: 10px;" 
            Font-Bold="True" Font-Size="X-Large"></asp:Label>
        <asp:Label ID="Label83" runat="server" Text="||" 
            style="position:absolute; top: 241px; left: 540px;" Font-Bold="True" 
            Font-Size="X-Large"></asp:Label>
        <asp:Label ID="Label84" runat="server" Text="||" 
            style="position:absolute; top: 241px; left: 649px; width: 12px; height: 23px;" 
            Font-Bold="True" Font-Size="X-Large"></asp:Label>
       <asp:Label ID="Label85" runat="server" Text="||"         
            style="position:absolute; top: 241px; left: 778px; width: 8px; height: 23px;" 
            Font-Bold="True" Font-Size="X-Large"></asp:Label>
    </div>
    </form>
</body>
</html>

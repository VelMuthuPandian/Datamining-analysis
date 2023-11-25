<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RSDetails.aspx.cs" Inherits="RSDetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Src="~/Header.ascx" TagName="header" TagPrefix="uc1" %>

<link href="styles.css" rel="Stylesheet" />

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Horizontal Aggregation</title>
     <link rel="icon" href="images/EB Logi.png" />  
     <style type="text/css">
         .style13
         {
         }        
     </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <uc1:header ID="Header1" runat="server" />
     <asp:Panel ID="Panel1" runat="server" 
            
            
            style="position:absolute; top: 297px; left: 52px; height: 367px; width: 662px;">
     <table style="width: 659px">
     <tr>
     <td class="style13" colspan="4">
     <hr size="10" color="green" />
     </td>
     </tr>
         <tr>
             <td class="style13">
                 <asp:Label ID="Label1" runat="server" Text="Unit I" CssClass="input" 
                     ForeColor="#0099FF"></asp:Label>
             </td>
             <td class="style13">
                 &nbsp;</td>
             <td class="style13">
                 &nbsp;</td>
             <td class="style13">
                 &nbsp;</td>
         </tr>
         <tr>
             <td class="style13">
                 <asp:Label ID="Label28" runat="server" Text="Label"></asp:Label>
             </td>
             <td class="style13">
                 &nbsp;</td>
             <td class="style13">
                 &nbsp;</td>
             <td class="style13">
                 &nbsp;</td>
         </tr>
         <tr>
             <td class="style13">
                 <asp:Label ID="Label2" runat="server" CssClass="input" Text="0 - 50"></asp:Label>
             </td>
             <td class="style13">
                 <asp:Label ID="Label3" runat="server" CssClass="output" Text="0.75"></asp:Label>
             </td>
             <td class="style13">
                 <asp:Label ID="Label4" runat="server" CssClass="input" Text="51 - 100"></asp:Label>
             </td>
             <td class="style13">
                 <asp:Label ID="Label5" runat="server" CssClass="output" Text="0.85"></asp:Label>
             </td>
         </tr>
         <tr>
             <td class="style13">
                 <asp:Label ID="Label6" runat="server" CssClass="input" Text="101 - 200"></asp:Label>
             </td>
             <td class="style13">
                 <asp:Label ID="Label7" runat="server" CssClass="output" Text="1.00"></asp:Label>
             </td>
             <td class="style13">
                 <asp:Label ID="Label8" runat="server" CssClass="input" Text="Above 200"></asp:Label>
             </td>
             <td class="style13">
                 <asp:Label ID="Label9" runat="server" CssClass="output" Text="1.25"></asp:Label>
             </td>
         </tr>
         <tr>
             <td class="style13">
             </td>
             <td class="style13">
             </td>
             <td class="style13">
             </td>
             <td class="style13">
             </td>
         </tr>
         <tr>
             <td class="style13">
                 <asp:Label ID="Label10" runat="server" CssClass="input" ForeColor="#0066FF" 
                     Text="Unit III"></asp:Label>
             </td>
             <td class="style13">
                 &nbsp;</td>
             <td class="style13">
                 &nbsp;</td>
             <td class="style13">
                 &nbsp;</td>
         </tr>
         <tr>
             <td class="style13">
                 <asp:Label ID="Label11" runat="server" Text="0 - 50" CssClass="input" ></asp:Label>
             </td>
             <td class="style13">
                 <asp:Label ID="Label12" runat="server" Text="0.85" CssClass="output" ></asp:Label>
             </td>
             <td class="style13">
                 <asp:Label ID="Label13" runat="server" Text="51  -  100" CssClass="input" ></asp:Label>
             </td>
             <td class="style13">
                 <asp:Label ID="Label14" runat="server" Text="1.00" CssClass="output" ></asp:Label>
             </td>
         </tr>
         <tr>
             <td class="style13">
                 <asp:Label ID="Label15" runat="server" Text="101  -  200" CssClass="input" ></asp:Label>
             </td>
             <td class="style13">
                 <asp:Label ID="Label16" runat="server" Text="1.25" CssClass="output" ></asp:Label>
             </td>
             <td class="style13">
                 <asp:Label ID="Label17" runat="server" Text="Above 200" CssClass="input" ></asp:Label>
             </td>
             <td class="style13">
                 <asp:Label ID="Label18" runat="server" Text="1.45" CssClass="output" ></asp:Label>
             </td>
         </tr>
         <tr>
             <td class="style13">
                 &nbsp;</td>
             <td class="style13">
                 &nbsp;</td>
             <td class="style13">
                 &nbsp;</td>
             <td class="style13">
                 &nbsp;</td>
         </tr>
         <tr>
             <td class="style13">
                 <asp:Label ID="Label19" runat="server" CssClass="input" ForeColor="#0099FF" 
                     Text="Companys"></asp:Label>
             </td>
             <td class="style13">
                 &nbsp;</td>
             <td class="style13">
                 &nbsp;</td>
             <td class="style13">
                 &nbsp;</td>
         </tr>
         <tr>
             <td class="style13">
                 <asp:Label ID="Label20" runat="server" Text="100  -  200" CssClass="input" ></asp:Label>
             </td>
             <td class="style13">
                 <asp:Label ID="Label21" runat="server" Text="Label" CssClass="output" ></asp:Label>
             </td>
             <td class="style13">
                 <asp:Label ID="Label22" runat="server" Text="201  -  600" CssClass="input" ></asp:Label>
             </td>
             <td class="style13">
                 <asp:Label ID="Label23" runat="server" Text="Label" CssClass="output" ></asp:Label>
             </td>
         </tr>
         <tr>
             <td class="style13">
                 <asp:Label ID="Label24" runat="server" Text="601  -  1000" CssClass="input" ></asp:Label>
             </td>
             <td class="style13">
                 <asp:Label ID="Label25" runat="server" Text="Label" CssClass="output" ></asp:Label>
             </td>
             <td class="style13">
                 <asp:Label ID="Label26" runat="server" Text="Above 1000" CssClass="input" ></asp:Label>
             </td>
             <td class="style13">
                 <asp:Label ID="Label27" runat="server" Text="Label" CssClass="output" ></asp:Label>
             </td>
         </tr>
         <tr>
             <td class="style13" colspan="4">
             <hr size="10" color="green" />
             </td>
         </tr>
     </table>
     </asp:Panel>
    </div>
    </form>
</body>
</html>

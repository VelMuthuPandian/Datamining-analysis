<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userdetails.aspx.cs" Inherits="userdetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Src="~/master.ascx" TagName="header" TagPrefix="uc1" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Horizontal Aggregation</title>
     <link rel="icon" href="images/EB.jpg" />  
     <style type="text/css">
         .style1
         {
         }
         .style14
         {
             width: 110px;
         }
     </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <uc1:header ID="Master" runat="server" />
    <asp:Panel ID="Panel1" runat="server" 
            style="position:absolute; top: 213px; left: 51px; width: 697px; height: 65px;">
    <table style="width: 697px; height: 55px">
    <tr>
    <td class="style14">
    
    </td>
    <td class="style1">
    </td>
    </tr>    
    <tr>
    <td class="style14">
    
    </td>
    <td class="style1">
    </td>
    </tr>
    <tr>
    <td class="style14">
    
    </td>
    <td class="style1">
    </td>
    </tr>
    <tr>
    <td class="style14">
    
    </td>
    <td class="style1">
    </td>
    </tr>
    <tr>
    <td class="style14">
    
    </td>
    <td>    
    <marquee behavior="slide" direction="left">
    <font size="5px" color="red" face="Book Antiqua">
        WelCome to Home
     </font>
    </marquee>    
    </td>
    </tr>
    </table>
    </asp:Panel>
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NCForm.aspx.cs" Inherits="NCForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Src="~/Header.ascx" TagName="header" TagPrefix="uc1" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Horizontal Aggregation</title>
     <link rel="icon" href="images/EB Logi.png" />
    <style type="text/css">
        .style13
        {
            width: 660px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <uc1:header ID="Header1" runat="server" />
      <asp:Panel ID="Panel1" runat="server"             
            style="position:absolute; top: 291px; left: 49px; height: 288px; width: 462px;">
      <table>
      <tr>
      <td class="style13">
      <hr size="10" color="green" />
      </td>
      </tr>
          <tr>
              <td class="style13">
                  &nbsp;</td>
          </tr>
          <tr>
              <td class="style13">              
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                      BorderColor="#CC00FF" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                      CellSpacing="2" ForeColor="#333333" GridLines="None" Width="344px">
                      <RowStyle BackColor="#EFF3FB" />
                      <Columns>
                          <asp:BoundField DataField="id" HeaderText="Form ID" />
                          <asp:BoundField DataField="names" HeaderText="Form Name" />
                          <asp:HyperLinkField DataNavigateUrlFields="id" 
                              DataNavigateUrlFormatString="Downloading.aspx?ID={0}" HeaderText="Download" 
                              Text="Download" />
                      </Columns>
                      <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                      <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                      <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                      <EditRowStyle BackColor="#2461BF" />
                      <AlternatingRowStyle BackColor="White" />
                  </asp:GridView>
              </td>
          </tr>
          <tr>
              <td class="style13">
                  <asp:ImageButton ID="ImageButton1" runat="server" Height="26px" 
                      ImageAlign="Right" ImageUrl="~/images/BACK.png" onclick="ImageButton1_Click" 
                      style="margin-left: 4px" Width="59px" />
              </td>
          </tr>
          <tr>
              <td class="style13">
              <hr size="10" color="green" />
              </td>
          </tr>
      </table>      
      </asp:Panel>
    </div>
    </form>
</body>
</html>

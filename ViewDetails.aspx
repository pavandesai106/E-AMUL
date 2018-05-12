<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewDetails.aspx.cs" Inherits="ViewDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 178px;
        }
        .style7
        {
            width: 155px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<div align="center">
     <table style="border: medium groove #336699; height: 569px; width: 732px" >
        <tr>
            <td class="style7">
                <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label>
            </td>
            <td class="style6" colspan="2">
                <asp:Label ID="lname" runat="server"></asp:Label>
            </td>
            <td rowspan="6">
                <asp:Image ID="Image1" runat="server" Height="190px" Width="213px" />
            </td>
        </tr>
        <tr>
            <td class="style7">
                Product Category</td>
            <td class="style6" colspan="2">
                <asp:Label ID="lcategory" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="Label11" runat="server" Text="Product Code"></asp:Label>
            </td>
            <td class="style6" colspan="2">
                <asp:Label ID="lcode" runat="server"></asp:Label>
                <br />
            </td>
        </tr>
         <tr>
            <td class="style7">
                <asp:Label ID="Label2" runat="server" Text="Total Fat"></asp:Label>
            </td>
            <td class="style6" colspan="2">
                <asp:Label ID="lfat" runat="server"></asp:Label>
                &nbsp;
                <asp:Label ID="Label12" runat="server" Text="g" Visible="False"></asp:Label>
                <br />
            </td>
        </tr>
         <tr>
            <td class="style7">
                <asp:Label ID="Label4" runat="server" Text="Total Energy"></asp:Label>
            </td>
           
            <td class="style6" align="left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lenergy" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label13" runat="server" Text="Kcal"></asp:Label>
            </td>
        </tr>
         <tr>
            <td class="style7">
                <asp:Label ID="Label6" runat="server" Text="Weight"></asp:Label>
            </td>
            <td class="style6" colspan="2">
                <asp:Label ID="lweight" runat="server"></asp:Label>
                <br />
            </td>
        </tr>
         <tr>
            <td class="style7">
                <asp:Label ID="Label8" runat="server" Text="Description"></asp:Label>
            </td>
            <td class="style6" colspan="2">
                <asp:TextBox ID="TextBox1" runat="server" Height="38px" ReadOnly="True" 
                    TextMode="MultiLine" Width="256px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="Label9" runat="server" Text="Price"></asp:Label>
            </td>
            <td class="style6" colspan="2">
                <asp:Label ID="lprice" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style6" colspan="2">
                <asp:Button ID="Button1" runat="server" BackColor="#2C586A" ForeColor="White" 
                    onclick="Button1_Click" Text="Add to Cart" />
            </td>
        </tr>
    </table>
      <br />
</div>
</asp:Content>


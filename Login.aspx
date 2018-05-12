<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 42%;
        }
        .style7
        {
            width: 127px;
        }
        .style8
        {
            height: 22px;
        }
        .style9
        {
            width: 127px;
            height: 30px;
        }
        .style10
        {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div align="center">
    
    <br />
    
    <table class="style6" style="border: medium groove #336699; height: 70px;">
      
        <tr>
            <td align="center" class="style8" colspan="2">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="#336699" Text="Login"></asp:Label>
            </td>
        </tr>
      
        <tr>
            <td class="style7">
                <asp:Label ID="Label1" runat="server" Text="Username" ForeColor="#336699"></asp:Label></td>
            <td align="left">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="Label2" runat="server" Text="Password" ForeColor="#336699"></asp:Label></td>
            <td align="left">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>

        <tr>
            <td class="style7">
                &nbsp;</td>
            <td align="left">
                <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click">Forget Password</asp:LinkButton>
            </td>
        </tr>

        <tr>
            <td class="style9">
                </td>
            <td align="left" class="style10">
                <asp:Button ID="Button1" runat="server" Text="Login" BackColor="#336699" 
                    onclick="Button1_Click" ForeColor="White" />&nbsp;
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>

    </table>
    
</div>
<br />
</asp:Content>


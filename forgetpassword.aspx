<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forgetpassword.aspx.cs" Inherits="forgetpassword" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 180px;
        }
    </style>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" 
        style="border: medium groove #006666; height: 193px; width: 418px">
        <tr>
            <td class="style2" 
                
                style="font-family: Verdana; font-size: small; font-weight: bold; color: #336699" 
                colspan="2">
                FORGOT PASSWORD:</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label4" runat="server" Text="Enter USER_ID:" ForeColor="#336699"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtuserid" runat="server" Height="20px" Width="218px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" style="margin-left: 160px">
                <asp:Button ID="Button3" runat="server" Text="Submit" onclick="Button3_Click" 
                    BackColor="#336699" ForeColor="White" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label5" runat="server" Text="Question:" ForeColor="#336699"></asp:Label>
            </td>
            <td>
                <asp:Label ID="question" runat="server" ForeColor="#336699"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label6" runat="server" Text="Answer:" ForeColor="#336699"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtanswer" runat="server" Height="21px" Width="219px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="Button4" runat="server" Text="Get Password" 
                    onclick="Button4_Click" BackColor="#336699" ForeColor="White" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label7" runat="server" Text="Your Password is:" 
                    ForeColor="#336699"></asp:Label>
            </td>
            <td>
                <asp:Label ID="password" runat="server" ForeColor="#336699"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style2
        {
            width: 182px;
        }
    </style>
</asp:Content>



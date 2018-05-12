<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 47px;
        }
        .style3
        {
            color: #003399;
            font-size: medium;
        }
        .style4
        {
            height: 24px;
            width: 387px;
        }
        .style5
        {
            height: 24px;
            width: 178px;
        }
        .style6
        {
        }
        .style7
        {
            width: 387px;
        }
        .style8
        {
            width: 130px;
            height: 24px;
        }
        .style9
        {
            width: 130px;
        }
    </style>
    <div align="center">
    <table class="style1" style="border: medium groove #006666">
        <tr>
            <td class="style2" colspan="2" 
                style="font-size: large; color: #006666; font-weight: bold">
                Change Password</td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="Label3" runat="server" CssClass="style3" Text="Old Password"></asp:Label>
                :</td>
            <td class="style4">
                <asp:TextBox ID="txtoldpassword" runat="server" Height="21px" Width="199px" TextMode="Password" 
                    ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="Label4" runat="server" CssClass="style3" Text="New Password"></asp:Label>
                :</td>
            <td class="style7">
                <asp:TextBox ID="txtnewpassword" runat="server" Height="23px" Width="197px" 
                    TextMode="Password" style="margin-left: 0px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="Label5" runat="server" CssClass="style3" Text="Confirm Password"></asp:Label>
                :</td>
            <td class="style7">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="txtconfirm" runat="server" Height="21px" Width="196px" 
                    TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtnewpassword" ControlToValidate="txtconfirm" 
                    ErrorMessage="Enetr Same Password" ForeColor="#FF3300"></asp:CompareValidator>
            </td>
        </tr>
        <tr align="center">
            <td class="style6" colspan="2">
                <asp:Button ID="Button3" runat="server" Height="29px" Text="Submit" 
                    Width="153px" onclick="Button3_Click" BackColor="#336699" 
                    ForeColor="White" />
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    </div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AmulHits.aspx.cs" Inherits="AmulHits" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<div align="center">
    <asp:DataList ID="DataList1" runat="server" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" DataKeyField="ImgId" DataSourceID="SqlDataSource1" 
        ForeColor="Black" GridLines="Both">
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="White" />
        <ItemTemplate>
            &nbsp;<asp:Label ID="ImgIdLabel" runat="server" Text='<%# Eval("ImgId") %>' 
                Visible="False" />
&nbsp;<asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' 
                Visible="False" />
            <br />
            <asp:Image ID="Image1" runat="server" Height="229px" 
                ImageUrl='<%# Eval("Image") %>' Width="394px" />
            <br />
            &nbsp;<br />
            <br />
            <asp:Label ID="DescriptionLabel" runat="server" 
                Text='<%# Eval("Description") %>' />
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Hits] ORDER BY [ImgId] DESC">
    </asp:SqlDataSource>
</div>
</asp:Content>


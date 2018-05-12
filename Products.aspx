<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 100%;
        }
        .style7
        {
            width: 97px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /> <br />
<div align="center">
    
    <table class="style6">
        <tr>
            <td class="style7">
                <asp:Label ID="Label1" runat="server" Text="Category:" Font-Size="Medium" 
                    ForeColor="#336699"></asp:Label>
            </td>
            <td align="left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged1">
                </asp:DropDownList>
&nbsp;</td>
        </tr>
    </table>
    
</div>
<br /> <br />
<div>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="Pid" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Pid" HeaderText="Pid" InsertVisible="False" 
                ReadOnly="True" SortExpression="Pid" />
            <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
            <asp:BoundField DataField="Category" HeaderText="Category" 
                SortExpression="Category" />
            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="86px" 
                        ImageUrl='<%# Eval("Image") %>' Width="90px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" BackColor="#336699" 
                        CommandArgument='<%# Eval("Pid") %>' ForeColor="White" onclick="Button1_Click" 
                        Text="View Details" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [Pid], [Pname], [Category], [Image] FROM [product_detail] WHERE ([Category] = @Category)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Category" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</div>
</asp:Content>


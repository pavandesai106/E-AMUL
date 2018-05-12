<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ConfirmDelivery.aspx.cs" Inherits="ConfirmDelivery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<div>
<table>
<tr>
<td>
    <asp:Label ID="Label3" runat="server" Text=" Oreders Received" CssClass="label" 
        Font-Bold="True"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="order_id" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" onselectedindexchanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="order_id" HeaderText="order_id" 
                InsertVisible="False" ReadOnly="True" SortExpression="order_id" />
            <asp:BoundField DataField="user_id" HeaderText="user_id" 
                SortExpression="user_id" />
            <asp:BoundField DataField="total_price" HeaderText="total_price" 
                SortExpression="total_price" />
            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
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
        SelectCommand="SELECT order_id, user_id, total_price FROM order_detail WHERE (status = @status)">
        <SelectParameters>
            <asp:Parameter DefaultValue="confirm" Name="status" />
        </SelectParameters>
    </asp:SqlDataSource>
    </td>
    <td>&nbsp;<asp:Label ID="Label1" runat="server" Text="Order Id:" Visible="False" 
            CssClass="label" Font-Bold="True"></asp:Label>
&nbsp;<asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="Label4" runat="server" Text="" Visible="False"></asp:Label>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="id,main_order_id" DataSourceID="SqlDataSource2" 
            ForeColor="#333333" Visible="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="main_order_id" HeaderText="order_id" 
                    SortExpression="main_order_id" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity Ordered" 
                    SortExpression="Quantity" />
                <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                <asp:BoundField DataField="Expr1" HeaderText="Total Quantity" 
                    SortExpression="Expr1" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT order_cdetail.id, order_cdetail.main_order_id, order_cdetail.Quantity, product_detail.Pname, product_detail.Quantity AS Expr1, reg_detail.user_id FROM order_cdetail INNER JOIN product_detail ON order_cdetail.Pid = product_detail.Pid INNER JOIN order_detail ON order_cdetail.main_order_id = order_detail.order_id INNER JOIN reg_detail ON order_detail.user_id = reg_detail.user_id WHERE (order_cdetail.main_order_id = @main_order_id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label2" Name="main_order_id" 
                    PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>

        &nbsp;
        <asp:Button ID="Button1" runat="server" Text="Deliver" BackColor="#336699" 
            ForeColor="White" onclick="Button1_Click" Visible="False" /> &nbsp;&nbsp;&nbsp; 
        <asp:Button ID="Button2" runat="server" Text="Reject" BackColor="#336699" 
            ForeColor="White" onclick="Button2_Click" Visible="False" /></td>
</tr></table>
</div>
</asp:Content>


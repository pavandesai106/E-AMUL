<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewCart.aspx.cs" Inherits="ViewCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<div align="center">
<table style="width: 519px">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" ForeColor="#336699" Text="Quantity" 
                Visible="False"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
&nbsp;<asp:Button ID="Button2" runat="server" BackColor="#336699" ForeColor="White" 
                Text="Update" Visible="False" onclick="Button2_Click" />
&nbsp;&nbsp; 
            <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
        </td>
        <td> <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Back</asp:LinkButton></td>
    </tr>
</table>
   
    <br />  <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="id,order_id,Pid" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="order_id" HeaderText="order_id" 
                InsertVisible="False" ReadOnly="True" SortExpression="order_id" />
            <asp:BoundField DataField="Pid" HeaderText="Pid" InsertVisible="False" 
                ReadOnly="True" SortExpression="Pid" />
            <asp:BoundField DataField="user_id" HeaderText="user_id" 
                SortExpression="user_id" />
            <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                SortExpression="Quantity" />
            <asp:BoundField DataField="status" HeaderText="status" 
                SortExpression="status" />
            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="84px" 
                        ImageUrl='<%# Eval("Image") %>' Width="101px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" BackColor="#336699" 
                        CommandArgument='<%# Eval("id") %>' ForeColor="White" Text="Edit" 
                        onclick="Button1_Click" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="Button6" runat="server" onclick="Button6_Click" Text="Delete" CommandArgument='<%# Eval("id") %>'/>
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
        
        SelectCommand="SELECT order_cdetail.id, order_detail.order_id, product_detail.Pid, order_detail.user_id, product_detail.Pname, product_detail.Price, order_cdetail.Quantity, order_detail.status, order_detail.total_price, product_detail.Image FROM order_cdetail INNER JOIN product_detail ON order_cdetail.Pid = product_detail.Pid INNER JOIN order_detail ON order_cdetail.main_order_id = order_detail.order_id INNER JOIN reg_detail ON order_detail.user_id = reg_detail.user_id WHERE (order_detail.order_id = @order_id)" 
        DeleteCommand="DELETE FROM order_cdetail FROM order_cdetail INNER JOIN product_detail ON order_cdetail.Pid = product_detail.Pid INNER JOIN reg_detail ON order_cdetail.id = reg_detail.id CROSS JOIN order_detail WHERE (order_detail.order_id = @order_id)">
        <DeleteParameters>
            <asp:ControlParameter ControlID="GridView1" Name="newparameter" 
                PropertyName="SelectedValue" />
        </DeleteParameters>
        <SelectParameters>
            <asp:SessionParameter Name="order_id" SessionField="orderid" />
        </SelectParameters>
    </asp:SqlDataSource>
    <table style="width: 551px">
        <tr>
            <td align="right">
                <asp:Label ID="Label4" runat="server" ForeColor="Blue" Text="Total Price"></asp:Label>
            </td>
        </tr>
         <tr>
            <td align="right" class="style6">
                <asp:Label ID="Label3" runat="server"></asp:Label></td>
        </tr>
         <tr>
            <td align="right">
                <asp:Button ID="Button5" runat="server" Text="Confirm" BackColor="#336699" 
                    ForeColor="White" onclick="Button5_Click" /></td>
        </tr>
    </table>
</div>

</asp:Content>


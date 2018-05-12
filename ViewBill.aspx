<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewBill.aspx.cs" Inherits="ViewBill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /> <br />

  
    <div align="center">
        <br />
        <table style="border: medium groove #336699">
            <tr>
                <td colspan="3">
                   
                    <h5 class="register" 
                        style="background-color: #336699; color: #FFFFFF; font-size: medium;">
                        Your Bill</h5>
                   
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" 
                        ForeColor="#336699" Text="Username:" Enabled="False"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="margin-left: 80px">
                    <asp:Label ID="Label3" runat="server" CssClass="register" 
                        ForeColor="#336699" Text="Oreder_id:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="margin-left: 80px">
                    <asp:Label ID="Label5" runat="server" CssClass="register" 
                        ForeColor="#336699" Text="Ship to:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="margin-left: 80px">
                    <asp:Label ID="Label6" runat="server" CssClass="register" 
                        Font-Bold="True" ForeColor="#336699" Text="Details"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="margin-left: 120px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal" 
                        ForeColor="#333333">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                                ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="order_id" HeaderText="order_id" 
                                InsertVisible="False" ReadOnly="True" SortExpression="order_id" />
                            <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                                SortExpression="Quantity" />
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
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
                        SelectCommand="SELECT order_cdetail.id, order_detail.order_id, product_detail.Pname, order_cdetail.Quantity, order_cdetail.Price FROM order_cdetail INNER JOIN product_detail ON order_cdetail.Pid = product_detail.Pid INNER JOIN order_detail ON order_cdetail.main_order_id = order_detail.order_id INNER JOIN reg_detail ON order_detail.user_id = reg_detail.user_id WHERE (order_detail.order_id = @order_id)">
                        <SelectParameters>
                            <asp:SessionParameter Name="order_id" SessionField="orderid" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label17" runat="server" CssClass="register" 
                        ForeColor="#336699" Text="Total Price:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label18" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
   <br />


</asp:Content>


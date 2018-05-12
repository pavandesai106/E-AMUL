<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ManageProducts.aspx.cs" Inherits="ManageProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
<br />
<table style="height: 189px; width: 394px">
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Insert Product" CssClass="register" 
                        Font-Bold="True" Font-Size="Medium" ForeColor="#336699"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Name:" CssClass="label" ></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtnm" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtnm" ErrorMessage="please enter valid name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Price:" CssClass="label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtprice" ErrorMessage="please enter valid price"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Pcode:" CssClass="label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpcode" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtpcode" ErrorMessage="please enter valid p code"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" CssClass="label" Text="Category:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcat" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtcat" ErrorMessage="please enter valid category"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Quantity:" CssClass="label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtqnty" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtqnty" ErrorMessage="please enter valid quantity"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" CssClass="label" Text="Description:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtdesc" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtdesc" ErrorMessage="please enter valid description"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label11" runat="server" CssClass="label" Text="Total Fat:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtfat" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtfat" ErrorMessage="please enter total fat"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label12" runat="server" CssClass="label" Text="Energy:"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtenergy" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtenergy" ErrorMessage="please enter energy"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label13" runat="server" CssClass="label" Text="Weight:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtweight" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txtweight" ErrorMessage="please enter weight"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Image:" CssClass="label"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" ForeColor="#CC3300" 
                        CssClass="register" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="margin-left: 40px">
                    <asp:Button ID="Button1" runat="server" Text="Insert" CssClass="register" 
                        BackColor="#336699" onclick="Button1_Click" ForeColor="White" />
                &nbsp;&nbsp;
                    <asp:Label ID="Label9" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
</div>
<br />
<div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="Pid" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" AllowPaging="True" PageSize="4">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Pid" HeaderText="Pid" InsertVisible="False" 
                ReadOnly="True" SortExpression="Pid" />
            <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
            <asp:BoundField DataField="Category" HeaderText="Category" 
                SortExpression="Category" />
            <asp:BoundField DataField="Pcode" HeaderText="Pcode" SortExpression="Pcode" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                SortExpression="Quantity" />
            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" 
                Visible="False" />
            <asp:BoundField DataField="Description" HeaderText="Description" 
                SortExpression="Description" />
            <asp:BoundField DataField="Total_Fat" HeaderText="Total_Fat" 
                SortExpression="Total_Fat" />
            <asp:BoundField DataField="Energy" HeaderText="Energy" 
                SortExpression="Energy" />
            <asp:BoundField DataField="Weight" HeaderText="Weight" 
                SortExpression="Weight" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="87px" 
                        ImageUrl='<%# Eval("Image") %>' Width="109px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
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
        SelectCommand="SELECT * FROM [product_detail]" 
        DeleteCommand="DELETE FROM product_detail WHERE (Pid = @Pid)" 
        
        UpdateCommand="UPDATE product_detail SET Pname = @Pname, Category = @Category, Pcode = @Pcode, Price = @Price, Quantity = @Quantity, Image = @Image, Description = @Description, Total_Fat = @Total_Fat, Energy = @Energy, Weight = @Weight WHERE (Pid = @Pid)">
        <DeleteParameters>
            <asp:ControlParameter ControlID="GridView1" Name="newparameter" 
                PropertyName="SelectedValue" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="GridView1" Name="newparameter" 
                PropertyName="SelectedValue" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>


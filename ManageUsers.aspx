<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ManageUsers.aspx.cs" Inherits="ManageUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    <br />   <br /> 

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" 
        DataKeyNames="id">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="user_id" HeaderText="user_id" 
                SortExpression="user_id" />
            <asp:BoundField DataField="password" HeaderText="password" 
                SortExpression="password" Visible="False" />
            <asp:BoundField DataField="order_id" HeaderText="order_id" 
                SortExpression="order_id" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="phoneno" HeaderText="phoneno" 
                SortExpression="phoneno" />
            <asp:BoundField DataField="gender" HeaderText="gender" 
                SortExpression="gender" />
            <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="question" HeaderText="question" 
                SortExpression="question" Visible="False" />
            <asp:BoundField DataField="answer" HeaderText="answer" 
                SortExpression="answer" Visible="False" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM reg_detail WHERE (id = @id)" 
        SelectCommand="SELECT * FROM [reg_detail]" 
        UpdateCommand="UPDATE reg_detail SET user_id = @user_id, password = @password, order_id = @order_id, address = @address, phoneno = @phoneno, gender = @gender, dob = @dob, name = @name, question = @question, answer = @answer WHERE (id = @id)">
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


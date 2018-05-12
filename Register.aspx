<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />

    <table align="center" style="border: medium groove #336699; height: 417px">
        <tr>
        <td colspan="2",align="left", 
        style=" width:80%; height=26px; font-size: 14px; font-family: Verdana; background-color: #1E90A1; color: #FFFFFF; font-weight: bold;">
        Registration Details:</td>
    <td class="style4"><asp:Label ID="Label22" runat="server"></asp:Label></td>
            
           
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label19" runat="server" Font-Names="Cambria" ForeColor="Black" 
                    Text="Name" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server" Width="195px"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="txtFirstName" ErrorMessage="plese enter valid name"></asp:RequiredFieldValidator>
            </td>
        </tr>
       
        <tr>
            <td class="style4" >
                <asp:Label ID="Label17" runat="server" Font-Names="Cambria" 
                    Text="Address" Font-Size="Medium"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="195px"></asp:TextBox>
            </td>
            <td class="style4" >
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="style4">
                <asp:Label ID="Label18" runat="server" Text="Contact No" 
                    Font-Names="Cambria" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtContectNo" runat="server" Width="194px" MaxLength="10"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtContectNo" 
                    ErrorMessage="plese enter valid contact num"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" >
                <asp:Label ID="Label9" runat="server" Font-Names="Cambria" 
                    Text="Gender" Font-Size="Medium"></asp:Label>
            </td>
            <td >
                <asp:RadioButton ID="RadioButton1" runat="server" ForeColor="Black" 
                    Text="Male" Font-Names="Cambria" GroupName="gender" />
                <asp:RadioButton ID="RadioButton2" runat="server" ForeColor="Black" 
                    Text="Female" Font-Names="Cambria" GroupName="gender" />
            </td>
            <td class="style4" >
                <asp:Label ID="Label20" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
       
        <tr>
            <td class="style4" >
                <asp:Label ID="Label10" runat="server" Font-Names="Cambria" 
                    Text="Date Of Birth" Font-Size="Medium"></asp:Label>
            </td>
            <td >
                <asp:DropDownList ID="dlyyyy" runat="server" 
                     
                    AutoPostBack="True" onselectedindexchanged="dlyyyy_SelectedIndexChanged">
                    <asp:ListItem>Year</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="dlmm" runat="server" 
                    onselectedindexchanged="dlmm_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>Month</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="dldd" runat="server" AutoPostBack="True" onselectedindexchanged="dldd_SelectedIndexChanged1" 
                    >
                    <asp:ListItem>Day</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style4" >
                <asp:Label ID="Label21" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
      
        <tr>
            <td class="style5" >
                <asp:Label ID="Label23" runat="server" Text="Question:" Font-Names="Cambria" 
                    Font-Size="Medium"></asp:Label>
            </td>
            <td class="style1" >
                <asp:DropDownList ID="DropDownList4" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>What is your hobby?</asp:ListItem>
                    <asp:ListItem>What is your favourite food?</asp:ListItem>
                    <asp:ListItem>What is your favourite author&#39;s name?</asp:ListItem>
                    <asp:ListItem>What is your Favourite teacher&#39;s name?</asp:ListItem>
                    <asp:ListItem>Which is your favourite color?</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style6" >
                </td>
        </tr>
      
        <tr>
            <td class="style4" >
                <asp:Label ID="Label24" runat="server" Text="Answer:" Font-Names="Cambria" 
                    Font-Size="Medium"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="193px"></asp:TextBox>
            </td>
            <td class="style4" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="plese enter valid answer"></asp:RequiredFieldValidator>
            </td>
        </tr>
      
        <tr>
            <td class="style4" >
                <asp:Label ID="Label11" runat="server" Text="Email Address" 
                    Font-Names="Cambria" Font-Size="Medium"></asp:Label>
            </td>
            <td class="style2" >
                <asp:TextBox ID="txtEmailAddress" runat="server" Width="196px"></asp:TextBox>
                
            </td>
            <td class="style4" >
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
					ErrorMessage="enter valid email id" 
					ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
					ControlToValidate="txtEmailAddress">plese enter  your email ID</asp:RegularExpressionValidator>
            </td>
        </tr>
       
        
        
        <tr>
            <td class="style4" >
                <asp:Label ID="Label15" runat="server" Font-Names="Cambria" 
                    Text="Password" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="195px"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
					ControlToValidate="txtPassword">* </asp:RequiredFieldValidator>
				<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
					ControlToValidate="txtPassword" ErrorMessage="Password length between 5-16 characters" 
					ValidationExpression="^[0-9a-zA-Z'.s]{5,16}$"></asp:RegularExpressionValidator>
            
            </td>
        </tr>
        <tr>
            <td class="style4" >
                <asp:Label ID="Label16" runat="server" Font-Names="Cambria" 
                    Text="Confirm Password" Font-Size="Medium"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="txtConformPassword" runat="server" TextMode="Password" 
                    Width="195px"></asp:TextBox>
            </td>
            <td class="style4" >
            
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
					ControlToValidate="txtConformPassword" ErrorMessage="*"></asp:RequiredFieldValidator>
				<asp:CompareValidator ID="CompareValidator1" runat="server" 
					ControlToCompare="txtPassword" ControlToValidate="txtConformPassword" 
					ErrorMessage="password not matched"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 34px" >
                &nbsp;
                &nbsp;
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                    BackColor="#336699" ForeColor="White" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Reset" onclick="Button2_Click" 
                    BackColor="#336699" ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="Cancel" onclick="Button3_Click" 
                    BackColor="#336699" ForeColor="White" />
                </td>
            <td class="style7" >
                </td>
        </tr>
            
       
</table>
 <br />
</asp:Content>


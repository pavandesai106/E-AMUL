<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 551px;
        }
        .style7
        {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
 <div>
    <table>
    <tr>
        <td> <asp:Image ID="Image1" runat="server" Height="346px" Width="386px" 
                ImageUrl="~/slider_image/anad_locateus.jpg" /></td>
        <td class="style6"><p><span class="style7"><strong>Distances :</strong></span>
        <ul>
            <li>From Ahmedabad Airport : (via Expressway): 78.7 kms (1 hr 20 min drive approx)</li>
            <li>From Vadodara Airport : (via Expressway): 42 kms (45 min drive approx)</li>
            <li>From Anand Railway Station: 1.6 km (5 min approx)</li>
        </ul>
        <br />
 <span class="style7"><strong>Address:</strong></span>
 <br />
 <span style="white-space: pre">
        Gujarat Cooperative Milk Marketing Federation Ltd.
        Amul Dairy Road,
        Opp: Hotel Surabhi, 
        Anand - 388 001,
        Gujarat, India .
        Phone:  +91-2692-258506, 258507, 258508, 258509
        Fax:+91-2692-240208
        Email:gcmmf@amul.coop</span></p></td>
    </tr>
    <tr><td colspan="2">
    <br />
    <div>
    <table style="width: 537px">
	<tr>
		<td width="140"><label for="posName" style="color: #336699" ><span class="red">*</span>Your Name:</label></td><td>
        <asp:TextBox ID="TextBox3" runat="server" Width="244px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="Enter Name" ForeColor="#336699"></asp:RequiredFieldValidator>
        </td>
	</tr>
    <tr>
		<td><label for="posEmail"  style="color: #336699" ><span class="red">*</span>E-Mail Address:</label></td><td>
        <asp:TextBox ID="TextBox4" runat="server" Width="241px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox4" ErrorMessage="Enter email Address" 
            ForeColor="#336699"></asp:RequiredFieldValidator>
        </td>
	</tr>
		<tr>
		<td style="color: #336699">Address:</td><td>
            <asp:TextBox ID="TextBox5" runat="server" Width="245px" TextMode="MultiLine"></asp:TextBox>
            </td>
	</tr>
	<tr>
		<td><label for="posRegard" style="color: #336699">Phone:</label></td><td>
        <asp:TextBox ID="TextBox6" runat="server" Width="244px"></asp:TextBox>
        </td>
	</tr>		
	<tr>
		<td><label for="posText" style="color: #336699"><span class="red">*</span>Comments:</label></td><td>
        <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" Width="243px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox7" ErrorMessage="Enter Comments" 
            ForeColor="#336699"></asp:RequiredFieldValidator>
        </td>
    </tr>
	<tr>
	<td>&nbsp;</td><td>
        <asp:Button ID="Button2" runat="server" Text="Submit" onclick="Button2_Click" 
            BackColor="#336699" CssClass="register" ForeColor="White" />
        </td>
	</tr>
	</table>
    </div>
    </td></tr>
    </table>
    
    
 </div>
 <br />
</asp:Content>


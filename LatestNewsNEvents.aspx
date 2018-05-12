<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LatestNewsNEvents.aspx.cs" Inherits="LatestNewsNEvents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div align="center">
<br />
 <table border="0" cellpadding="0" cellspacing="0" width="100%" align="center">
                    <tr>
                        <td align="center">
                            <asp:Label ID="lblTitle" runat="server" Font-Bold="True" Font-Names="Verdana" 
                                Font-Size="Medium" Font-Underline="True" ForeColor="#336699"></asp:Label>
                                <br />
                                <br />
                        </td>
                        
                    </tr>
                    <tr>
                        <td valign="top" align="center">
                        <div class="main_center" align="center">
                            <strong style="font-family: Verdana; font-size: small; color: #336699">
                            <asp:Literal ID="lblNETitle" runat="server"></asp:Literal>
                            <br />
                            </strong></div><br />
                        </td>
                    </tr>
                    <tr>
                        <td align="justify" class="style1">
                            </td>
                    </tr>
                    <tr>
                    
                        <td align="justify" valign="top">
                        <div class="main_center" align="right" 
                                style="font-family: Verdana; font-size: small; color: #336699">
                            <asp:Literal ID="lblNewsEvents" runat="server"></asp:Literal>
                            </div><br />
                        </td>
                    </tr>
                </table>
            </div>
        <div align="center">
                <table>
          <tr>
           <td width="200px" valign="top" align="center">
             <%--  <marquee id="mar2" direction="up" scrollamount="3" runat="server" onmouseover="this.stop()"
                                    onmouseout="this.start()">--%>

        <asp:GridView Width="100%" Height="100%"  ID="grdNews" runat="server" AutoGenerateColumns="False" 
                CssClass="home_news_box" EmptyDataRowStyle-ForeColor="Red" 
                EmptyDataText="Record Not Available" EnableModelValidation="True" 
                GridLines="None">
                <EmptyDataRowStyle ForeColor="Red" />
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <!-- Box2 Starts Here -->
                            <div class="news_boxes" style="color: #336699; font-style: normal; font-weight: bold; font-size: medium; font-family: Verdana; text-align: center;">
<!-- Text Starts Here -->
                                <div style="text-align: center">
                                <p>&nbsp;&nbsp; <asp:Label ID="lblNews" runat="server" 
                                        Text='<%# Eval("NewsEventsTitle") %>' CssClass="register" Font-Bold="True" Font-Size="Large" ForeColor="#336699"></asp:Label>...</p><br />
                                    <p class="news_head">
                                        <asp:LinkButton ID="lnkNewsTitle" CssClass="news_head" 
                                            CommandArgument='<%# Eval("NewsNEventId") %>' Text="Read More..." runat="server" 
                                            onclick="lnkNewsTitle_Click" ForeColor="#336699"></asp:LinkButton></p>
                                    
                                </div>
<!-- Text Ends Here -->     </div>
<!-- Box2 Ends Here -->

                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Top" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView><%--</marquee>--%>
            
            </td>
          </tr>
          </table>

</div>
</asp:Content>


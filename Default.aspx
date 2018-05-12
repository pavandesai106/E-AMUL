<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="nivo-slider.css" type="text/css" media="screen" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="big_header">Home</div>

<table border="0" cellpadding="0" cellspacing="0" width="100%" >
        <tr>
            <td width="200px" valign="top" >
                <div class="small_header">News</div>
               
                <marquee id="mar2" direction="up" scrollamount="3" runat="server" onmouseover="this.stop()"
                                    onmouseout="this.start()">

        <asp:GridView Width="100%" Height="100%"  ID="grdNews" runat="server" AutoGenerateColumns="False" 
                CssClass="home_news_box" EmptyDataRowStyle-ForeColor="Red" 
                EmptyDataText="Record Not Available" EnableModelValidation="True" 
                GridLines="None">
                <EmptyDataRowStyle ForeColor="Red" />
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <!-- Box2 Starts Here -->
                            <div class="news_boxes">
<!-- Text Starts Here -->
                                <div>
                                <p>&nbsp;&nbsp; <asp:Label ID="lblNews" runat="server" Text='<%#Eval("NewsEventsTitle") %>'></asp:Label>...</p><br />
                                    <p class="news_head"><asp:LinkButton ID="lnkNewsTitle" CssClass="news_head" 
                                            CommandArgument='<%#Eval("NewsNEventId") %>' Text="Read More..." runat="server" 
                                            onclick="lnkNewsTitle_Click"></asp:LinkButton></p>
                                    
                                </div>
<!-- Text Ends Here -->     </div>
<!-- Box2 Ends Here -->

                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Top" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView></marquee>    
           
            </td>
           <td width="580px"> 
             <div class="slider_content">
     <div id="slider-wrapper">        
            <div id="slider" class="nivoSlider">
				<img src="slider_image/amul1.jpg" width="560px" height="350px" alt="" />                             
				<img src="slider_image/amul3.jpg" width="560px" height="350px" alt="" />
				<img src="slider_image/amul4.jpg" width="560px" height="350px" alt="" />
                <img src="slider_image/amul5.jpg" width="560px" height="350px" alt="" />
                <img src="slider_image/amul6.jpg" width="560px" height="350px" alt="" />
                <img src="slider_image/amul7.jpg" width="560px" height="350px" alt="" />
                 <img src="slider_image/prev_bg_6.jpg" width="560px" height="350px" alt="" />
                <img src="slider_image/prev_bg_7.jpg" width="560px" height="350px" alt="" />
                <img src="slider_image/prev_bg_8.jpg" width="560px" height="350px" alt="" />
                <img src="slider_image/prev_bg_9.jpg" width="560px" height="350px" alt="" />
            </div>
			  </div>      
        </div>

           </td>
            <td width="200px" valign="top" > <div class="small_header">Events</div> 
              <marquee id="mar3" direction="up" scrollamount="3" runat="server" onmouseover="this.stop()"
                                    onmouseout="this.start()">
        <asp:GridView Width="100%" Height="100%"  ID="grdEvents" runat="server" AutoGenerateColumns="False" 
                CssClass="home_news_box" EmptyDataRowStyle-ForeColor="Red" 
                EmptyDataText="Record Not Available" EnableModelValidation="True" 
                GridLines="None">
                <EmptyDataRowStyle ForeColor="Red" />
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <!-- Box2 Starts Here -->
                            <div class="news_boxes">
<!-- Text Starts Here -->
                                <div>
                                <p>&nbsp;&nbsp; <asp:Label ID="lblNews" runat="server" Text='<%#Eval("NewsEventsTitle") %>'></asp:Label>...</p><br />
                                    <p class="news_head"><asp:LinkButton ID="lnkNewsTitle" CssClass="news_head" 
                                            CommandArgument='<%#Eval("NewsNEventId") %>' Text="Read More..." runat="server" 
                                            onclick="lnkNewsTitle_Click"></asp:LinkButton></p>
                                    
                                </div>
<!-- Text Ends Here -->     </div>
<!-- Box2 Ends Here -->

                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Top" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView></marquee>
            </td>
        </tr>
        <tr>
       
        </tr>
       
    </table>

         <script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>

    <script type="text/javascript">

        $(window).load(function () {
            $('#slider').nivoSlider();
        });
      
        
            
    </script>
</asp:Content>



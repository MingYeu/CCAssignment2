<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Intro.aspx.cs" Inherits="DemoCart.Intro" %>
<link href="Header.css"rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Header.css"rel="stylesheet" />
    <title>About Us</title>
    <style type="text/css">
        .auto-style1 {
            height: 250px;
        }
        .auto-style2 {
            width: 1135px;
        }
        .auto-style3 {
            height: 250px;
            width: 1135px;
        }
        .auto-style4 {
            width: 994px;
        }
        .auto-style6 {
            height: 31px;
        }
        .auto-style7 {
            width: 999px;
        }
        .auto-style8 {
            height: 29px;
        }
    </style>
</head>
<body  style="background-image:url(aspx_img_wall_2.jpg); height:1350px; ">
    <form id="form1" runat="server" class="auto-style1">
    <div>
           <table>
            <tr>
                <td class="auto-style4">
                <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style5" Height="210px" ImageUrl="~/logo3.png"  PostBackUrl="~/Intro.aspx" Width="1524px" />
                </td>

            </tr>
            </table>
       </div>

        <div id="menu">
            <ul>
                <li><a href="#">Artist</a>
                    <ul>
                       <li><a href="artist1.aspx">Artist 1</a></li>
                        <li><a href="artist2.aspx">Artist 2</a></li>
                        <li><a href="artist3.aspx">Artist 3</a></li>
                        <li><a href="artist4.aspx">Artist 4</a></li>
                    </ul>
                </li>
                <li><a href="Allprodarts.aspx">Arts</a>
                    <ul>
                        <li><a href="#">Plastic Art</a></li>
                        <li><a href="#">Visual Art</a></li>
                        <li><a href="#">Graphic Art</a></li>
                    </ul>
                </li>
                <li><a href="#">About Us</a>
                    <ul>
                        <li><a href="PlasticArt.aspx">What is Plastic Art ?</a></li>
                        <li><a href="VisualArt.aspx">What is Visual Art ?</a></li>
                        <li><a href="GraphicArt.aspx">What is Graphic Art ?</a></li>
                    </ul>
                </li>
                <li><a href="#">Contact Us</a>
                    <ul>
                        <li><a href="https://www.facebook.com/RSF-ART-187237172835558">Facebook</a></li>
                        <li><a href="https://www.instagram.com/rsf_art_/">Instagram</a></li>
                        <li><a href="https://twitter.com/rsf_art">Twitter</a></li>
                    </ul>
                </li>
            </ul>
              <br />
              <br />
        </div>
    
   
    
    <br />
    <!-- About -->
    <div style="background-color:white; border-style:solid; font-family: 'Poplar Std'; font-size: large;">
        <span>About</span>
        <hr />
        <!-- content -->
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>

    <br />
    <!-- Team member -->
    <div style="background-color:white; border-style:solid; font-family: 'Poplar Std'; font-size: large;">
        <span>Team member</span>
        <hr />
        <table>
            <tr style="width:300px;">
                <td style="padding: 40px">
                    <asp:Image ID="profile1" runat="server" Width="200px" Height="200px" ImageUrl="~/aspx_img_profile.jpg"/></td>
                <td style="padding: 40px">
                    <asp:Image ID="profile2" runat="server" Width="200px" Height="200px" ImageUrl="~/aspx_img_profile.jpg"/></td>
                <td style="padding: 40px">
                    <asp:Image ID="profile3" runat="server" Width="200px" Height="200px" ImageUrl="~/aspx_img_profile.jpg"/></td>
                <td style="padding: 40px">
                    <asp:Image ID="profile4" runat="server" Width="200px" Height="200px" ImageUrl="~/aspx_img_profile.jpg"/></td>
            </tr>
            <tr> <!-- memeber name -->
                <td class="auto-style6" style="text-align: center; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold;">Keng Choon Peng</td>
                <td class="auto-style6" style="text-align: center; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold;">Soon Yue Yang</td>
                <td class="auto-style6" style="text-align: center; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold;">Lai Hao Han</td>
                <td class="auto-style6" style="text-align: center; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold;">Lee Yong</td>
            </tr>
            <tr> <!-- position -->
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr> <!-- content -->
                <td>
                    <br />
                    <br />
                    <br />
                </td>
                <td>
                    <br />
                    <br />
                    <br />
                </td>
                <td>
                    <br />
                    <br />
                    <br />
                </td>
                <td>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    </div>

    <br />
    <!-- Company -->
    <div style="background-color:white; border-style:solid; font-size: large; font-family: 'Poplar Std';">
        About Company<hr />
        <!-- content -->
        <table>
            <tr>
                <td class="auto-style7" style="text-align:center;">Purpose</td>
                <td class="auto-style4" style="text-align:center;">Goals</td>
            </tr>
            <tr>
                <td style="text-align: center"> <!-- Purpose -->
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td style="text-align: center"> <!-- Goals -->
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;">Service</td>
            </tr>
            <tr> <!-- Service -->
                <td colspan="2" style="text-align: center">
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    </div>

    <br />
    <!-- Contact Us -->
    <div style="background-color:white; border-style:solid; font-family: 'Poplar Std'; font-size: large;">
        <span>Contact Us</span>
        <br />
        <table class="auto-style2">
            <tr>
                <td colspan="2" style="font-family: 'Times New Roman', Times, serif; font-size: medium">Lets get in touch ~ ~ ~</td>
            </tr>
            <tr>
                <td style="font-family: 'Times New Roman', Times, serif; font-size: medium">Name: </td>
                <td><asp:TextBox ID="txtName" runat="server" Width="1000px" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px"/></td>
            </tr>
            <tr>
                <td style="font-family: 'Times New Roman', Times, serif; font-size: medium">Email: </td>
                <td><asp:TextBox ID="txtEmail" runat="server" Width="1000px" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="font-family: 'Times New Roman', Times, serif; font-size: medium">Comment: </td>
                <td class="auto-style8"><asp:TextBox ID="txtComment" runat="server" Width="1000px" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Button ID="btnMsg" runat="server" Text="Send Message" BorderStyle="Solid" /></td>
            </tr>
        </table>
    </div>

    <br />
    <!-- Location -->
    <div style="background-color:white; border-style:solid; font-size: large; font-family: 'Poplar Std';">
        <span>Location</span>
        <hr />
        <br />
    </div>
    <!-- End -->
        </form>
</body>
</html>


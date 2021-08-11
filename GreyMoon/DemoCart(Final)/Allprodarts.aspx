<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Allprodarts.aspx.cs" Inherits="DemoCart.Allprodarts" %>
<link href="Header.css"rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Header.css"rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style5 {
            margin-top: 0px;
        }
        .auto-style6 {
            margin-top: 150px;
        }
        .auto-style7 {
            margin-left: 90px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
                <li><a href="#">Arts</a>
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
        </div>
        <div>
            <table class="auto-style6">
                <tr><td></td><td>
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="201px" ImageUrl="~/Artist1v3.png" Width="200px" PostBackUrl="~/artist1.aspx" />
                    <asp:ImageButton ID="ImageButton4" runat="server" CssClass="auto-style7" Height="224px" ImageUrl="~/a1 g1.jpg" Width="162px" />
                    <asp:ImageButton ID="ImageButton5" runat="server" CssClass="auto-style7" Height="224px" ImageUrl="~/a1 g2.jpg" Width="162px" />
                    <asp:ImageButton ID="ImageButton6" runat="server" CssClass="auto-style7" Height="224px" ImageUrl="~/a1 v2.jpg" Width="162px" />
                    <asp:ImageButton ID="ImageButton7" runat="server" CssClass="auto-style7" Height="224px" ImageUrl="~/a1 v1.jpg" Width="162px" />
                    </td><td>
                        &nbsp;</td><td>
                        
                        <asp:ImageButton ID="ImageButton3" runat="server" CssClass="auto-style7" Height="224px" ImageUrl="~/a1 p2.jpg" Width="162px" />
                        
                    </td></tr>
            </table>
        </div>

        <div>
            <table class="auto-style6">
                <tr><td></td><td>
                    <asp:ImageButton ID="ImageButton8" runat="server" Height="201px" ImageUrl="~/Artist2v3.png" Width="200px" PostBackUrl="~/artist2.aspx" />
                    <asp:ImageButton ID="ImageButton9" runat="server" CssClass="auto-style7" Height="224px" ImageUrl="~/a2 g1.jpg" Width="162px" />
                    <asp:ImageButton ID="ImageButton10" runat="server" CssClass="auto-style7" Height="224px" ImageUrl="~/a2 g2.jpg" Width="162px" />
                    <asp:ImageButton ID="ImageButton11" runat="server" CssClass="auto-style7" Height="224px" ImageUrl="~/a2 v1.jpg" Width="162px" />
                    <asp:ImageButton ID="ImageButton12" runat="server" CssClass="auto-style7" Height="224px" ImageUrl="~/a2 v2.png" Width="162px" />
                    </td><td>
                        &nbsp;</td><td>
                        
                        <asp:ImageButton ID="ImageButton13" runat="server" CssClass="auto-style7" Height="224px" ImageUrl="~/a2 p1.jpg" Width="162px" />
                        
                    </td></tr>
            </table>
        </div>

        <div>
            <table class="auto-style6">
                <tr><td></td><td>
                    <asp:ImageButton ID="ImageButton14" runat="server" Height="201px" ImageUrl="~/Artist3v3.png" Width="200px" PostBackUrl="~/artist3.aspx" />
                    <asp:ImageButton ID="ImageButton15" runat="server" CssClass="auto-style7" Height="224px" ImageUrl="~/a3 g1.png" Width="162px" />
                    <asp:ImageButton ID="ImageButton16" runat="server" CssClass="auto-style7" Height="224px" ImageUrl="~/a3 g2.jpg" Width="162px" />
                    <asp:ImageButton ID="ImageButton17" runat="server" CssClass="auto-style7" Height="224px" ImageUrl="~/a3 v1.jpg" Width="162px" />
                    <asp:ImageButton ID="ImageButton18" runat="server" CssClass="auto-style7" Height="224px" ImageUrl="~/a3 v2.jpg" Width="162px" />
                    </td><td>
                        &nbsp;</td><td>
                        
                        <asp:ImageButton ID="ImageButton19" runat="server" CssClass="auto-style7" Height="224px" ImageUrl="~/a3 p1.jpeg" Width="162px" />
                        
                    </td></tr>
            </table>
        </div>

        <div>
            <table class="auto-style6">
                <tr><td></td><td>
                    <asp:ImageButton ID="ImageButton20" runat="server" Height="201px" ImageUrl="~/Artist4v3.png" Width="200px" PostBackUrl="~/artist4.aspx" />
                    <asp:ImageButton ID="ImageButton21" runat="server" CssClass="auto-style7" Height="224px" ImageUrl="~/a4 g1.jpg" Width="162px" />
                    <asp:ImageButton ID="ImageButton22" runat="server" CssClass="auto-style7" Height="224px" ImageUrl="~/a4 v1.jpg" Width="162px" />
                    <asp:ImageButton ID="ImageButton23" runat="server" CssClass="auto-style7" Height="224px" ImageUrl="~/a4 v2.jpg" Width="162px" />
                    <asp:ImageButton ID="ImageButton24" runat="server" CssClass="auto-style7" Height="224px" ImageUrl="~/a4 p1.jpg" Width="162px" />
                    </td><td>
                        &nbsp;</td><td>
                        
                        &nbsp;</td></tr>
            </table>
        </div>
    </form>
</body>
</html>

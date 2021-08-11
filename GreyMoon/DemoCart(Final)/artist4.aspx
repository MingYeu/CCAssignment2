<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="artist4.aspx.cs" Inherits="DemoCart.artist4" %>
<link href="Header.css"rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Header.css"rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style5 {
            width: 8px;
        }
        .auto-style6 {
            width: 90px;
        }
        .auto-style7 {
            width: 228px;
        }
        .auto-style8 {
            margin-left: 84px;
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
        </div>
       <div>
           <br />
           <br />
           <asp:Image ID="Image1" runat="server" CssClass="auto-style5" Height="494px" ImageUrl="~/Artist4.png" Width="1548px" />
       </div>
         <div>
            <table>
            <tr>
             <td class="auto-style6"></td>
             <td class="auto-style7">
             <asp:ImageButton ID="ImageButton5" runat="server" Height="55px" ImageUrl="~/fb-icon.png" PostBackUrl="https://www.facebook.com/media/set?vanity=187237172835558&set=a.188120736080535" />
             <asp:ImageButton ID="ImageButton6" runat="server" Height="55px" ImageUrl="~/insta icon.jpg" />
             <asp:ImageButton ID="ImageButton7" runat="server" Height="55px" ImageUrl="~/twitter icon.png" PostBackUrl="https://twitter.com/i/moments/1360185286978772999" />
             </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="274px" Width="724px" CssClass="auto-style8">                   Mangaka (漫画家) is the Japanese word for a manga artist. Outside Japan, 
                    manga usually refers to a Japanese comic book and mangaka refers to the author of the manga, 
                   who is usually Japanese. As of 2006, about 3000 professional mangaka were working in Japan.
                    [1][obsolete source]

                    Most mangaka study at an art college or manga school or take on an apprenticeship with another 
                   artist before entering the industry as a primary creator. More rarely a mangaka breaks into the 
                   industry directly, without previously being an assistant. For example, Naoko Takeuchi, author of
                    Sailor Moon, won a Kodansha Manga Award contest and manga pioneer Osamu Tezuka was first published 
                    while studying an unrelated degree, without working as an assistant.[2](his drawings were in high 
                    demand though he hadn&#39;t gone to an art school of any type.)

                    A mangaka will rise to prominence through recognition of their ability when they spark the interest 
                    of institutions, individuals or a demographic of manga consumers. For example, there are contests 
                    which prospective mangaka may enter, sponsored by manga editors and publishers. This can also be 
                    accomplished through producing a one-shot. While sometimes a stand-alone manga, with enough positive 
                    reception it can be serialized in a weekly, monthly, or quarterly format. They are also recognized 
                    for the number of manga they run at any given moment.</asp:TextBox>
            </td>
                <td></td>
                <td>
                    <asp:Image ID="Image2" runat="server" Height="384px" ImageUrl="~/Artist4v2.PNG" Width="340px" CssClass="auto-style8" /></td>

            </tr>
            </table> 
             </div>
        <div>
                <table>
                    <tr><td></td><td>
                        <asp:ImageButton ID="ImageButton2" runat="server" CssClass="auto-style13" Height="340px" ImageUrl="~/a4 g1.jpg" Width="241px" style="margin-left: 90px" />
                        <asp:ImageButton ID="ImageButton3" runat="server" CssClass="auto-style14" Height="340px" ImageUrl="~/a4 p1.jpg" Width="241px" style="margin-left: 90px; margin-top: 90px" />
                        <asp:ImageButton ID="ImageButton4" runat="server" CssClass="auto-style14" Height="340px" ImageUrl="~/a4 v2.jpg" Width="241px" style="margin-left: 90px" />
                        <asp:ImageButton ID="ImageButton8" runat="server" CssClass="auto-style14" Height="340px" ImageUrl="~/a4 v1.jpg" Width="241px" style="margin-left: 90px; margin-top: 90px" />
                       </td></tr>
                </table>
            </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VisualArt.aspx.cs" Inherits="DemoCart.VisualArt" %>
<link href="Header.css"rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Header.css"rel="stylesheet" />
        <style type="text/css">
        #Topic  
        {
             margin-left:650px;
        }
        
        #art
        {
            margin-left:300px;
        }

        #exp
        {
            margin-left:450px;
        }
    </style>
    
    
<%--    <script data-require="jquery@*" data-semver="2.2.0" src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <link rel="stylesheet" href="style.css" />
    <script src="script.js"></script>--%>


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
               <br />
               <br />
               <br />
               <asp:Label ID="Topic" runat="server" style="text-align: center" Font-Size="50px" ForeColor="#FF3399" Height="60px" Text="Graphic Art" Width="250px"></asp:Label>
               <br />
               <br />

            </div>
               <div id="art">
               <asp:Image ID="Image1" runat="server" Height="323px" ImageUrl="~/graphic1.jpg" Width="234px" />
               <asp:Image ID="Image2" runat="server" Height="323px" ImageUrl="~/graphic2.jpg" Width="234px" />
                <asp:Image ID="Image3" runat="server" Height="323px" ImageUrl="~/graphic3.jpg" Width="234px" />
                <asp:Image ID="Image4" runat="server" Height="323px" ImageUrl="~/graphic4.jpg" Width="234px" />
               <br />
               </div>
               <br />
                <div id="exp">

                    <br />A category of fine art, graphic art covers a broad range of visual artistic expression, typically 
                    <br />two-dimensional, i.e. produced on a flat surface.[1] The term usually refers to the arts that rely
                    <br />more on line or tone than on colour, especially drawing and the various forms of engraving;[2] it
                    <br />is sometimes understood to refer specifically to printmaking processes,[2] such as line engraving, 
                    <br />aquatint, drypoint, etching, mezzotint, monotype, lithography, and screen printing (silk-screen, 
                    <br />serigraphy).[3] Graphic art further includes calligraphy, photography, painting, typography, 
                    <br />computer graphics, and bindery. It also encompasses drawn plans and layouts for interior and 
                    <br />architectural designs.[1] 
                    
                    
               </div>
    </form>
</body>
</html>

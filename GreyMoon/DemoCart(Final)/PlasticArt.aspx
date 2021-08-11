<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlasticArt.aspx.cs" Inherits="DemoCart.PlasticArt" %>
 <link href="Header.css"rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> </title>
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
               <asp:Label ID="Topic" runat="server" style="text-align: center" Font-Size="50px" ForeColor="#FF3399" Height="60px" Text="Plastic Art" Width="220px"></asp:Label>
               <br />
               <br />

            </div>
               <div id="art">
               <asp:Image ID="Image1" runat="server" Height="323px" ImageUrl="~/Plas1.jpg" Width="234px" />
               <asp:Image ID="Image2" runat="server" Height="323px" ImageUrl="~/Plas2.jpg" Width="234px" />
                <asp:Image ID="Image3" runat="server" Height="323px" ImageUrl="~/Plas3.jpg" Width="234px" />
                <asp:Image ID="Image4" runat="server" Height="323px" ImageUrl="~/Plas4.jpg" Width="234px" />
               <br />
               </div>
               <br />
                <div id="exp">
               <br />Plastic arts are art forms which involve physical manipulation of a plastic medium by molding or 
              <br /> modeling such as sculpture or ceramics. Less often the term may be used broadly for all the visual 
              <br /> arts (such as painting, sculpture, film and photography), as opposed to literature and music.
               <br />[1] Materials for use in the plastic arts, in the narrower definition, include those that can be 
               <br />carved or shaped, such as stone or wood, concrete, glass, or metal.
                <br />
                <br />The term "plastic" has been used to mean certain synthetic organic resins ever since they were 
               <br /> invented, but the term "plastic arts" long preceded them. The term should not be confused, either,
               <br /> with Piet Mondrian's concept of "Neoplasticism".
                </div>
       
    </form>
</body>
</html>

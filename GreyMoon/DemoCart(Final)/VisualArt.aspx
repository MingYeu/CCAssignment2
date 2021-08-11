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
               <asp:Label ID="Topic" runat="server" style="text-align: center" Font-Size="50px" ForeColor="#FF3399" Height="60px" Text="Visual Art" Width="220px"></asp:Label>
               <br />
               <br />

            </div>
               <div id="art">
               <asp:Image ID="Image1" runat="server" Height="323px" ImageUrl="~/vis2.jpg" Width="234px" />
               <asp:Image ID="Image2" runat="server" Height="323px" ImageUrl="~/vis3.jpg" Width="234px" />
                <asp:Image ID="Image3" runat="server" Height="323px" ImageUrl="~/vis4.jpg" Width="234px" />
                <asp:Image ID="Image4" runat="server" Height="323px" ImageUrl="~/vis1.jpg" Width="234px" />
               <br />
               </div>
               <br />
                <div id="exp">

                    <br />The visual arts are art forms such as painting, drawing, printmaking, sculpture, ceramics, 
                    <br />photography, video, filmmaking, design, crafts, and architecture. Many artistic disciplines such as 
                    <br />performing arts, conceptual art, and textile arts also involve aspects of visual arts as well as arts 
                   <br /> of other types. Also included within the visual arts[1] are the applied arts[2] such as industrial 
                   <br /> design, graphic design, fashion design, interior design and decorative art.[3]
                    <br />
                   <br /> Current usage of the term "visual arts" includes fine art as well as the applied or decorative arts 
                   <br /> and crafts, but this was not always the case. Before the Arts and Crafts Movement in Britain and 
                   <br /> elsewhere at the turn of the 20th century, the term 'artist' had for some centuries often been 
                   <br /> restricted to a person working in the fine arts (such as painting, sculpture, or printmaking) and 
                   <br /> not the decorative arts, craft, or applied Visual arts media. The distinction was emphasized by 
                    <br />artists of the Arts and Crafts Movement, who valued vernacular art forms as much as high forms.[4] 
                    <br />Art schools made a distinction between the fine arts and the crafts, maintaining that a craftsperson 
                    <br />could not be considered a practitioner of the arts.

                    <br />
                    <br />The Metropolitan Museum of Art in Manhattan. Museums constitute a primary forum for the display of 
                    <br />visual arts. The increasing tendency to privilege painting, and to a lesser degree sculpture, above 
                    <br />other arts has been a feature of Western art as well as East Asian art. In both regions painting has 
                    <br />been seen as relying to the highest degree on the imagination of the artist, and the furthest removed 
                    <br />from manual labour – in Chinese painting the most highly valued styles were those of "scholar-painting",
                    <br />at least in theory practiced by gentleman amateurs. The Western hierarchy of genres reflected similar 
                    <br />attitudes.
               </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="DemoCart.ShoppingCart" %>
 <link href="Header.css"rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        
    </title>
    <style type="text/css">
        .auto-style2 {
            margin-top: 0px;
            margin-bottom: 0px;
        }
        .auto-style4 {
            width: 367px;
            margin-left:400px
        }
        *
        {
            margin:0px;
            padding:0px;
        }
        #menu
        {
            position:center;
        }
        #menu ul
        {
            list-style:none;
        }
        #menu ul li
        {
            background-color:black;
            border:none;
            width:190px;
            height:35px;
            line-height:35px;
            text-align:center;
            float:left;
            position:relative;
        }
        #menu ul li a
        {
            text-decoration:none;
            color:darkgoldenrod;
            display:block;
        }
        #menu ul li a:hover
        {
            background-color:lightgoldenrodyellow;
        }
      /*Second ul*/
        #menu ul ul
        {
            position:absolute;
            display:none;
        }
        #menu ul li:hover > ul
        {
            display:block;
        }
        .auto-style5 {
            margin-top: 0px;
            margin-bottom: 0px;
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
            
    <p>
           
        &nbsp;</form>
               
</body>
</html>

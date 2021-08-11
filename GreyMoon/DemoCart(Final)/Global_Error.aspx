<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Global_Error.aspx.cs" Inherits="DemoCart.Global_Error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="FinalHeader.css"rel="stylesheet" />
     <style type="text/css">
         .errorHeader {
             font-weight: bold;
             text-align: center;
             font-size: 30px;
             
         }
   .placeFooter{
       align-content:center;
         margin-left: 150px;
   }
         .pageError{
             text-align:center;
             
         }
     </style>
</head>
<body>
        
            <div class="errorHeader">
                      <p> GREY MOON</p> 
            </div>
           <div>
           <div class="box-area">
            <header>
                <div class="wrapper">
                    <div class="logo">
                        <a>GREY MOON</a>
                    </div>
                    <nav>
                        <ul>
                        <li class="menu"><a>Home</a></li>
                        <li class="menu"><a>Artist</a></li>
                        <li class="menu"><a >About Us</a></li>                        
                        <li class="menu"><a>Type Of Art</a>
                        </li>

                        <li class="menu"><a href="#">Follow Us</a></li>
                         <ul class="ani-menu">
                             <li><a href="https://www.facebook.com/Grey-Moon-187237172835558">Facebook</a></li>
                             <li><a href="https://www.instagram.com/__grey_moon_/">Instagram</a></li>
                             <li><a href="https://twitter.com/rsf_art">Twitter</a></li>
                            </ul>
                           
                            <li class="menu"><a href="Login.aspx">Log Out</a></li>
                         </ul>
                    </nav>
                </div>
            </header>
            </div>
               </div> 
    
    <div class="pageError">
       <h1>Application Error</h1> 
        <p>
            <asp:Label ID="PageError" runat="server"></asp:Label></p>
                <p>
            <asp:Label ID="ErrorMessage" runat="server"></asp:Label></p>
                <p>
            <asp:Label ID="InnerMessage" runat="server"></asp:Label></p>
        <h2>
           We had experienced an error. Sorry</h2>

       <p>Click this <a href="javascript: history.go(-1)">here</a> return to the previous page</p>
    </div>

    <div class="placeFooter">
               <footer class="footer">
        <div class="l-footer">
            <h1>
                GREY MOON</h1>
                Our Mission is to increase the public enjoyment and understand the art from the present say and of international modern and contempory art</p>
       </div>

</footer>
        </div>
</body>
</html>

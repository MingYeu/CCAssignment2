<%@ Page Language="C#" MasterPageFile="~/GreyMoon.Master" AutoEventWireup="true" CodeBehind="AddtoCart.aspx.cs" Inherits="DemoCart.Final_AboutUs"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">



        <link href="Final_AboutUs.css"rel="stylesheet" />


                     
    <div class="about-us">
<div class="About_container row">
   <img src="act_about.jpg" class="content_img"/>
</div>
       <div class="about-text"> 
           <h2>OUR STORY</h2>
           <p>Grey Moon was founded on the belief that live video is a powerful source of truth and connects us in an authentic way with the world around us. We are fascinated by the idea of discovering the world through someone else’s eyes. What’s it like to see through the eyes of a protester in Ukraine? Or watch the sunrise from a hot air balloon in Cappadocia?
While there are many ways to discover events, movements and places, we realized there is no better way to experience something than through live video. A picture may be worth a thousand words, but live video lets us explore the world together.e</p>
           <br />
                      <p>
Grey Moon has been created to allow contemporary artists to present and sell their work by themselves, simply and intuitively. The gallery offers buyers and collectors a direct relationship with sellers: privileged access to artists around the world, without intermediaries, and with prices direct from the artist's studio</p>
     
</div>

    <div class="team_container">
        <h1 class="heading">OUR TEAM</h1>
           <div class="profiles">
               <div class="profile">
                   <img src="staff(3).png" class="profile-img" />
                     <h3 class="user-name">Jackson</h3>
                   <h5>CEO</h5>
                   <h6>Make high-level decisions about policy and strategy.</h6>
                    <ul>
                    <li><a href="#"><img src="fb1.png" class="facebook"/></a></li>
                     <li><a href="#"><img src="twitter icon.png" class="twitter"/></a></li>
                     <li><a href="#"><img src="insta icon.jpg" class="insta"/></a></li>
                </ul>
               </div>
           </div>




            <div class="profiles">
               <div class="profile">
                   <img src="staff2.png" class="profile-img" />
                     <h3 class="user-name">William</h3>
                   <h5>Technical Manager</h5>
                   <h6>Conduct interviews, support/IT staff.</h6>
                                       <ul>
                    <li><a href="#"><img src="fb1.png" class="facebook"/></a></li>
                     <li><a href="#"><img src="twitter icon.png" class="twitter"/></a></li>
                     <li><a href="#"><img src="insta icon.jpg" class="insta"/></a></li>
                </ul>
               </div>
           </div>
        
        
        
        <div class="profiles">
               <div class="profile">
                   <img src="staff3.png" class="profile-img" />
                     <h3 class="user-name">Emily</h3>
                   <h5>Cofounder</h5>
                   <h6>Identify Market Opportunities </h6>
                                       <ul>
                    <li><a href="#"><img src="fb1.png" class="facebook"/></a></li>
                     <li><a href="#"><img src="twitter icon.png" class="twitter"/></a></li>
                     <li><a href="#"><img src="insta icon.jpg" class="insta"/></a></li>
                </ul>
               </div>
           </div>


        
    </div>

<div class="contact-section">

  <h1>Contact Us</h1>
  <div class="border"></div>
  <form class="contact-form" action="index.html" method="post">
    <input type="text" class="contact-form-text" placeholder="Your name"/>
    <input type="email" class="contact-form-text" placeholder="Your email"/>
    <input type="text" class="contact-form-text" placeholder="Your phone"/>
    <textarea class="contact-form-text" placeholder="Your message"></textarea>
    <input type="submit" class="contact-form-btn" value="Send"/>
  </form>
</div>
</div>
</asp:Content>
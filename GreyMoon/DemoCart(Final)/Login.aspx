<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DemoCart.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Login_Style.css"rel="stylesheet" />

    <style type="text/css">
        .auto-style2 {
            width: 45%;
            height: 145px;
            text-align: center;
            padding-top:7px;
        }
    </style>

</head>
<body>
       <form runat="server">
    <div class="row">
     
        <div class="loginbox left">
            <h2>Welcome</h2>  
       <div class="auto-style2" onclick="Artist_Status_Select">
 
           <asp:CheckBoxList ID="Status_Check_Box" runat="server" RepeatDirection="Horizontal" CssClass="statuscheck" AutoPostBack="True">
               <asp:ListItem  Value="artist" onclick="CheckOnlyOneCheckBox(this);"><div class="container"><div class="image"><img src="artist.jpg" class="cb1"/></div><div class="overlay"><div class ="artist_text">ARTIST</div></div></div></asp:ListItem>
               <asp:ListItem Value="customer" onclick="CheckOnlyOneCheckBox(this);"><div class="container"><div class="image"><img src="customer.jpg" class="cb1"/></div><div class="overlay"><div class ="artlover_text">ART LOVER</div></div></div></asp:ListItem>
  
           </asp:CheckBoxList>
   
       </div>     
     
            
<div class="login_input">
                <asp:Label Text="USERNAME" CssClass="lblusername" runat="server"></asp:Label>
                <asp:TextBox runat="server" CssClass="txtusername" placeholder="Username" ID="txtUser"></asp:TextBox>
                <asp:Label  Text="PASSWORD" CssClass="lblpassword" runat="server"></asp:Label>
                <input type="checkbox" onchange="document.getElementById('txtpassword').type = this.checked ? 'text' : 'password'" /><asp:TextBox TextMode="Password" ID="txtpassword"  runat="server" CssClass="txtpassword" placeholder="*********"></asp:TextBox>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ProductList.aspx">Continue as a Anynomous</asp:HyperLink>
                </br>
                <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me" />
                &nbsp;<asp:Button Text="Login" CssClass="btnsubmit" runat="server" OnClick="Unnamed4_Click" />
                <asp:LinkButton Text="Forgot Password" CssClass="btnforget" runat="server"></asp:LinkButton>
             
       </div>

           </div> 
         <div class="loginbox right" >
             <h3>First Time?</h3>
             <asp:Label Text="Enter your details and start journey with us" CssClass="lbldetails" runat="server"></asp:Label>
             <br />
             <br />
             <asp:Label Text="Sign Up As" CssClass="lbldetails2" runat="server"></asp:Label>
             <br />
             <asp:Button Text="Artist" CssClass="btnregister" runat="server" OnClick="Unnamed7_Click" />
             <asp:Button Text="Customer" CssClass="btnregister2" runat="server" OnClick="Unnamed8_Click" />
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
        </div>
           </form>
     <span id="message"></span>


</body>

</html>
<script type="text/javascript">
function radioMe(e) {
  if (!e) e = window.event;
  var sender = e.target || e.srcElement;

  if (sender.nodeName != 'INPUT') return;
  var checker = sender;
  var chkBox = document.getElementById('<%= Status_Check_Box.ClientID %>');
  var chks = chkBox.getElementsByTagName('INPUT');
  for (i = 0; i < chks.length; i++) {
      if (chks[i] != checker)
      chks[i].checked = false;
  }
}
    </script> 

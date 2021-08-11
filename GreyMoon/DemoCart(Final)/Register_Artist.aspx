<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register_Artist.aspx.cs" Inherits="DemoCart.Register_Artist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Register_Style.css"rel="stylesheet" />
    <style type="text/css">
        .txtfname {}
        .txtlname {}
    </style>
</head>
<body>
    <form runat="server">
        <div class="registerbox">
            <div class="title">
            <asp:Label ID="Label10" runat="server"  CssClass="form" Text="WELCOME  ARTIST"></asp:Label>
            </div>

   <%-- Firstname --%>        
            <asp:Label ID="Label1" runat="server" Text="NAME" CssClass="lblname"></asp:Label>
            <br />
            <div>
            <asp:TextBox ID="txtfname" runat="server" CssClass="txtfname" placeholder="First Name"  Width="229px"></asp:TextBox>
            <asp:TextBox ID="txtlname" runat="server" placeholder="Last Name" CssClass="txtlname" Width="230px"></asp:TextBox>
      
            </div>
            
   <%-- Email --%>            
            <asp:Label ID="Label3" runat="server" Text="EMAIL" CssClass="lblemail"></asp:Label>
   <%-- Email --%>            
            <asp:Label ID="Label9" runat="server" Text="PHONE" CssClass="lblphone"></asp:Label>
            <br />
            <asp:TextBox ID="txtemail" runat="server" CssClass="txtemail" placeholder="example@gmail.com"></asp:TextBox>
            <asp:TextBox ID="txtphone" runat="server" CssClass="txtphone" ></asp:TextBox>

            <br />
            
            <asp:Label ID="Label5" runat="server" Text="UPLOAD PICTURE" CssClass="lblmedium"></asp:Label>
            <br />
  <%-- Main Medium --%>               

            
             <asp:FileUpload ID="btnupload" runat="server" Text="Upload" CssClass="btnupload"/>

            <br />
            <asp:Label ID="Label6" runat="server" Text="USERNAME" CssClass="lbluser"></asp:Label>
            <asp:Label ID="Label7" runat="server" Text="PASSWORD" CssClass="lblpass"></asp:Label>
            <br />
    <%-- Password  --%>             
            <asp:TextBox ID="txtusername" runat="server" CssClass="txtuser"></asp:TextBox>
            <asp:TextBox ID="txtpassword" runat="server" CssClass="txtpass"></asp:TextBox>
            <asp:Label ID="Label8" runat="server" Text="REPEAT PASSWORD" CssClass="lblrepeat"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox5" runat="server" CssClass="txtrepeat"></asp:TextBox>
            
            <br />
            
            <asp:Button ID="btn_register" runat="server" Text="Sign Up" CssClass="btnregister" OnClick="btn_register_Click"/>

             <br />
             <br />
            
            <div class="icon">
                <br />
                 <br />
            <asp:Label ID="Label11" runat="server" Text="or sign up with:" CssClass="lblwith"></asp:Label>
            <br />
            <asp:ImageButton ID="btnfb" runat="server" ImageUrl="~/fb1.png" CssClass="facebook" />
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/twitter.png" CssClass="twitter"/>
            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/insta2.png" CssClass="insta"/>
            
            </div>

            <div class="line2">
                <asp:Label ID="Label12" runat="server" Text="" CssClass="line"></asp:Label>
                <br />
                <div class ="condition">
                <asp:CheckBox ID="CheckBox1" runat="server" />
                <asp:Label ID="Label13" runat="server" Text="I have read and agree to the term of service"></asp:Label>
                    </div>
            </div>
        </div>
        

    </form>
</body>
</html>

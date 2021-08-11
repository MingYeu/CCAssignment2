<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer_Register.aspx.cs" Inherits="DemoCart.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="Register_Style.css"rel="stylesheet" />
    <style type="text/css">
        .txtfname {}
        .txtlname {}
        .auto-style1 {
            font-weight: bold;
            color: black;
            display: inline-block;
            margin-right: 60px;
            margin-top: 0px;
            margin-left: 40px;
            font-size: 13px;
            letter-spacing: 1px;
        }
        .auto-style2 {
            font-weight: bold;
            color: black;
            display: inline-block;
            margin-right: 60px;
            margin-top: 0px;
            margin-left: 49px;
            font-size: 13px;
            letter-spacing: 1px;
        }
        .auto-style3 {
            font-weight: bold;
            color: black;
            display: inline-block;
            margin-right: 60px;
            margin-top: 0px;
            margin-left: 46px;
            font-size: 13px;
            letter-spacing: 1px;
        }
    </style>
</head>
<body class="customer_body">
    <form runat="server">
        <div class="registerbox">

            <div class="title">
            <asp:Label ID="Label10" runat="server"  CssClass="form" Text="WELCOME  ART LOVER"></asp:Label>
            </div>

   <%-- Firstname --%>        
            <asp:Label ID="Label1" runat="server" Text="NAME" CssClass="auto-style1" Width="16px" Height="16px"></asp:Label>
            
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter alphabet" ControlToValidate="txtfname" ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
            
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Please enter alphabet" ControlToValidate="txtlname" ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtfname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtlname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <div>
            <asp:TextBox ID="txtfname" runat="server" CssClass="txtfname" placeholder="First Name"  Width="229px"></asp:TextBox>
            <asp:TextBox ID="txtlname" runat="server" placeholder="Last Name" CssClass="txtlname" Width="230px"></asp:TextBox>
      
            </div>
            
   <%-- Email --%>            
            <asp:Label ID="Label3" runat="server" Text="EMAIL" CssClass="auto-style1" Width="16px"></asp:Label>
            
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid mail format" ControlToValidate="txtemail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
   <%-- Email --%>            
            <asp:Label ID="Label9" runat="server" Text="PHONE" CssClass="auto-style2" Width="16px"></asp:Label>
            
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Please enter 10 digit" ControlToValidate="txtphone" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtphone" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtemail" runat="server" CssClass="txtemail" placeholder="example@gmail.com"></asp:TextBox>
            <asp:TextBox ID="txtphone" runat="server" CssClass="txtphone" ></asp:TextBox>

            <br />
  <%-- Main Medium --%>               

            <br />
            <asp:Label ID="Label6" runat="server" Text="USERNAME" CssClass="auto-style1" Width="165px"></asp:Label>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtusername" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Label ID="Label7" runat="server" Text="PASSWORD" CssClass="auto-style3" Width="156px"></asp:Label>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtpassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
    <%-- Password  --%>             
            <asp:TextBox ID="txtusername" runat="server" CssClass="txtuser"></asp:TextBox>
            <asp:TextBox ID="txtpassword" runat="server" CssClass="txtpass"></asp:TextBox>
            <asp:Label ID="Label8" runat="server" Text="REPEAT PASSWORD" CssClass="auto-style1" Width="76px"></asp:Label>
            
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="TextBox5" ErrorMessage="Not same" ForeColor="Red"></asp:CompareValidator>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="TextBox5" runat="server" CssClass="txtrepeat"></asp:TextBox>
            
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <br />
            
            <br />
            
            <asp:Button ID="Button1" runat="server" Text="Sign Up" CssClass="btnregister" OnClick="Button1_Click" style="margin-top:-30px;"/>

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

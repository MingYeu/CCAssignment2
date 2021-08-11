<%@ Page Language="C#" MasterPageFile="~/GreyMoon.Master" AutoEventWireup="true" CodeBehind="AddtoCart.aspx.cs" Inherits="DemoCart.AddtoCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

            
        <asp:GridView ID="CartView" runat="server">
        </asp:GridView>

            
        <asp:Button ID="btnHistory" runat="server" Text="Proceed to Payment History" OnClick="btnHistory_Click" />
        <br />
    

</asp:Content>
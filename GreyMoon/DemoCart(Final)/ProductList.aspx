<%@ Page Language="C#" MasterPageFile="~/GreyMoon.Master" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="DemoCart.ProductList"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <link href="productList.css" rel="stylesheet" />
    <div class="txt_arrival">
            <h4>New Arrival</h4>

        </div>
        <div class="container">

                    
            <div class="protable" style="clear:both;">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <ul id="autoWidth" class="cs-hidden">

                            <li class="item-a">

                                <div class="box">

                                    <%--<p class="marvel">TITLE</p>--%>
                                    <asp:Label runat="server" Text='<%#Eval("ArtName")%>'></asp:Label>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\ArtDatabase.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Price], [ArtName], [ImageId] FROM [Products]"></asp:SqlDataSource>

                                    <asp:ImageButton ID="ImageButton10" ImageUrl='<%#Eval("ImageId")%>' runat="server" CssClass="model" NavigateUrl='<%# Eval("ProductId","~/productDetails.aspx?view={0}") %>' PostBackUrl='<%# Eval("ProductId","~/productDetails.aspx?view={0}") %>' />

                                    <div class="details">
                                        <%--<p>Price</p>--%>
                                        <asp:Label runat="server" Text='<%#Eval("Price")%>'></asp:Label>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
                <br style="clear:left;"/>
            </div>
        </div>

</asp:Content>
<%@ Page Language="C#" MasterPageFile="~/GreyMoon.Master" AutoEventWireup="true" CodeBehind="ArtistList.aspx.cs" Inherits="DemoCart.ArtistList"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <link href="productList.css" rel="stylesheet" />
    <div class="txt_arrival">
            <h4>Artist List:</h4>

        </div>
        <div class="container">

                    
            <div class="protable" style="clear:both;">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <ul id="autoWidth" class="cs-hidden">

                            <li class="item-a">

                                <div class="box">

                                    <%--<p class="marvel">TITLE</p>--%>
                                    <asp:Label runat="server" Text='<%#Eval("ArtistId")%>'></asp:Label>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\ArtDatabase.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Price], [ArtName], [ImageId] FROM [Products]"></asp:SqlDataSource>

                                    <asp:ImageButton ID="ImageButton10" ImageUrl='<%#Eval("ArtistImage")%>' runat="server" CssClass="model" />

                                    <div class="details">
                                        <%--<p>Price</p>--%>
                                        <asp:Label runat="server" Text='<%#Eval("ArtistName")%>'></asp:Label>
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
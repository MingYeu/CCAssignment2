<%@ Page Language="C#" MasterPageFile="~/GreyMoon.Master" AutoEventWireup="true" CodeBehind="~/productDetails.aspx.cs" Inherits="DemoCart.productDetails"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <link href="productdetail.css" rel="stylesheet" />
        <div class="container">
        <div class="card-wrapper">
          <div class="card">
              <!-- card left -->
       
                  <div class="img-display">
                      <div class="img-showcase">
                          <asp:Image ID="Image1" ImageUrl='<%# Eval("ProductId","~/productDetails.aspx?view={0}") %>' runat="server" Cssclass="pro-image"/>

                      </div>
                  </div>
          
              </div>
              <!-- card right -->
              <div class="product-content">
                  <h2 class="product-title"><asp:Label ID="lblArtName" runat="server"></asp:Label></h2>
                 
                  <div class="product-price">
                      <p class="new-price" style="font-size:x-large">Price: <span>RM<asp:Label ID="lblPrice" runat="server" Font-Size="X-Large"></asp:Label></span></p>
                  </div>
                  <div class="product-detail">
                      <h2>about this item: </h2>
                      <p><asp:Label ID="lblDescription" runat="server" Font-Size="Large"></asp:Label></p>
                      <p></p>
                      <ul>
                          <li style="font-size:x-large">Art Detail:        </li>
                          <li style="font-size:large">Art Produce Date: <span><asp:Label ID="lblProduceDate" runat="server" Font-Size="Large"></asp:Label></span></li>
                          
                          <li style="font-size:large">Stock Available:  <asp:Label ID="lblQuantity" runat="server" Font-Size="Large"></asp:Label></li>
                          <li style="font-size:large">Art Category:     <span><asp:Label ID="lblTypeOfArt" runat="server" Font-Size="Large"></asp:Label></span></li>
                          <li style="font-size:large">Shipping Area:    <span>All over the world</span></li>
                          <li style="font-size:large">Shipping Fee:     <span>Free</span></li>
                      </ul>
                  </div>
                  <div class="purchase-info">
                      <asp:TextBox ID="qtyProduct" runat="server" TextMode="Number" Text="1" min="1" step="1"></asp:TextBox>
                       <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator" ControlToValidate="qtyProduct" Display="Dynamic" MinimumValue="1" Type="Integer">
                           <asp:Label runat="server">Maximum Quantity Reached</asp:Label>
                       </asp:RangeValidator>
                      <asp:Button ID="btncart" runat="server" Text="Add to cart" CssClass="btn" OnClick="btncart_Click" Width="100px" />
                      <asp:Button ID="btnbuynow" runat="server" Text="Buy Now" CssClass="btn" Width="100px" OnClick="btnbuynow_Click" />
                  </div>
              </div>
             </div>
          </div>
</asp:Content>







































<%@ Page Language="C#" MasterPageFile="~/GreyMoon.Master" AutoEventWireup="true" CodeBehind="AddToCart_Test.aspx.cs" Inherits="DemoCart.AddToCart_Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

<link href="AddToCart.css"rel="stylesheet" />
    <style type="text/css">
        #shipDetails {
            width: 80%;
            margin: 0 auto;
            min-width: 200px;
        }

        .inputContainer {
            font-size: 16px;
            width: 90%;
            max-width: 500px;
            margin: 5px auto;
            display: flex;
            flex-direction: row;
            flex-wrap: nowrap;
            justify-content: space-between;
            align-items: center;
            align-content: center;
        }

        .inputContainer label {
            display: block;
            width: 35%;
            padding: 8px 15px;
            font-size: 16px;
            font-weight: bold;
        }

        .SDtextbox_style {
            font-size: 16px;
            display: block;
            padding: 8px 15px;
            width: 50%;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            resize: none;
            overflow: hidden;
        }

        input::-webkit-outer-spin-button,input::-webkit-inner-spin-button
        {
            -webkit-appearance: none;
            margin: 0;
        }

        .AutoFBtn {
            display: block;
            margin: 15px auto;
        }

        #cardInfoSec
        {
            margin:20px auto;
        }

        .cInfoContainer{
            font-size: 16px;
            width: 90%;
            max-width: 500px;
            height:40px;
            margin: 2px auto;
            display:block;
        }

        #slash
        {
            display: block;
            width: 20px;
            text-align:center;
            padding: 4px 15px;
            font-size: 20px;
            font-weight: bold;
            float:left;
        }

        .cInfoContainer label
        {
            display: block;
            width: 35%;
            padding: 8px 15px;
            font-size: 16px;
            font-weight: bold;
            float:left;
        }
        .cNo_style
        {
            font-size: 16px;
            display: block;
            padding: 8px 15px;
            width: 50%;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            resize: none;
            overflow: hidden;
            float:left;
        }
        .M_Y_style
        {
            font-size: 16px;
            display: block;
            padding: 8px 15px;
            width: 10%;
            min-width:40px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            resize: none;
            overflow: hidden;
            float:left;
        }
        .cvv_style
        {
            font-size: 16px;
            display: block;
            padding: 8px 15px;
            width: 20%;
            min-width:80px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            resize: none;
            overflow: hidden;
            float:left;
        }
        .star
        {
            float:left;
        }
        .totalAmtStyle
        {
            display:block;
            padding:8px 0px;
            font-weight:bold;
        }

        .PayBtn{
            display:block;
            text-align:center;
            margin:35px auto;
            width:250px;
            font-size:16px;
            box-sizing:border-box;
            border:1px solid black;
            line-height:40px;
            box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.1), 0 3px 10px 0 rgba(0, 0, 0, 0.1);
            font-weight:bold;
        }

        .PayBtn:hover
        {
            background-color:rgb(43, 174, 226);
            transition:linear 0.3s;
            color:white;
        }
        .summaryBox{
            width: 80%;
            margin:25px auto;
            border: 1px solid gray;
            box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.1), 0 3px 10px 0 rgba(0, 0, 0, 0.1);
            padding:20px 30px;
        }
        .Clear_Btn
        {
            display:block;
            text-align:center;
            margin:35px auto;
            width:150px;
            font-size:16px;
            box-sizing:border-box;
            border:1px solid black;
            line-height:40px;
            box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.1), 0 3px 10px 0 rgba(0, 0, 0, 0.1);
            font-weight:bold;
        }
        .Clear_Btn:hover
        {
            background-color:rgb(43, 174, 226);
            transition:linear 0.3s;
            color:white;
        }

    </style>
    <div>
        <h1>Add To Cart</h1>
        <table>
            <tr>
                <th>Image</th>
                <th>Product Name</th>
                <th>Quantity</th>
                <th>Unit Price</th>
                <th>Subtotal</th>
                <th>Action</th>
            </tr>
        </table>
        <asp:DataList ID="ImgList" runat="server" CellPadding="2"  > <%--OnSelectedIndexChanged="ImgList_SelectedIndexChanged" OnDeleteCommand="Delete_Command" --%>
            <ItemTemplate>
                <table class="atc_dtlist">
                    <tr>
                        <td><asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("ImageId") %>' Width="170px" /></td>
                        <td><asp:Label ID="Label1" runat="server" Text='<%# Eval("ArtName") %>' BorderStyle="None"  ></asp:Label></td>
                        <td><asp:Label ID="Label2" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label></td>
                        <td><asp:Label ID="Label3" runat="server" Text='<%#"RM " +  Eval("UnitPrice") %>'></asp:Label></td>
                        <td><asp:Label ID="Label4" runat="server" Text='<%#"RM " +  Eval("Price") %>'></asp:Label></td>
                        <td><asp:Button ID="removeBtn" runat="server" Text="Remove" CommandName="delete" CommandArgument ='<%# Eval("ProductId") %>' OnCommand="removeBtn_Click" CausesValidation="False" /></td>
                        <%-- CommandArgument='<%#Eval("cItem_Id")+","+(Container as RepeaterItem).ItemIndex%>' </asp:Button> --%>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>

    <div>
        <table>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td class="auto-style4" >Total:</td>
                <td>RM <asp:Label ID="lblTotalPayment" runat="server"></asp:Label></td> <%-- Total Price --%>
                <td></td>
            </tr>
         </table>
        <%-- End of Cart --%>

        <%-- Payment Page --%>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <h1>CheckOut</h1>

        <div id="shipDetails">
            <h3>Shipping Details</h3>
            <div class="inputContainer">
                <label>Name</label>
                <asp:TextBox ID="nameBox" runat="server" CssClass="SDtextbox_style"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ReqName" runat="server" ErrorMessage="Please enter the Name" ControlToValidate="nameBox" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <span></span>
            </div>
             <div class="inputContainer">
                <label>First Name</label>
                <asp:TextBox ID="FnameBox" runat="server" CssClass="SDtextbox_style"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter the First Name" ControlToValidate="nameBox" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <span></span>
            </div>
             <div class="inputContainer">
                <label>Last Name</label>
                <asp:TextBox ID="LnameBox" runat="server" CssClass="SDtextbox_style"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter the Last Name" ControlToValidate="nameBox" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <span></span>
            </div>
            <div class="inputContainer">
                <label>Phone</label>
                <asp:TextBox ID="phoneBox" runat="server" CssClass="SDtextbox_style" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ReqPhone" runat="server" ErrorMessage="Please enter the Phone Number" ControlToValidate="phoneBox" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="ExpPhone" runat="server" ErrorMessage="Please enter valid Phone Number" ControlToValidate="phoneBox" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[0-9]{10,11}$">*</asp:RegularExpressionValidator>
            </div>

            <div class="inputContainer">
                <label>Country</label>
                <asp:TextBox ID="countryBox" runat="server" CssClass="SDtextbox_style" Text="Malaysia" ReadOnly="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ReqCountry" runat="server" ErrorMessage="Please enter the Country" ControlToValidate="countryBox" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <span></span>
            </div>
            <div class="inputContainer">
                <label>State</label>
                <asp:DropDownList ID="stateBox" runat="server"  CssClass="SDtextbox_style">
                    <asp:ListItem Value="none">--Please Select The State--</asp:ListItem>
                    <asp:ListItem>Johor</asp:ListItem>
                    <asp:ListItem>Kuala Lumpur</asp:ListItem>
                    <asp:ListItem>Kedah</asp:ListItem>
                    <asp:ListItem>Kelantan</asp:ListItem>
                    <asp:ListItem>Malacca</asp:ListItem>
                    <asp:ListItem>Negeri Sembilan</asp:ListItem>
                    <asp:ListItem>Pahang</asp:ListItem>
                    <asp:ListItem>Penang</asp:ListItem>
                    <asp:ListItem>Perak</asp:ListItem>
                    <asp:ListItem>Perlis</asp:ListItem>
                    <asp:ListItem>Putrajaya</asp:ListItem>
                    <asp:ListItem>Sabah</asp:ListItem>
                    <asp:ListItem>Sarawak</asp:ListItem>
                    <asp:ListItem>Selangor</asp:ListItem>
                    <asp:ListItem>Terengganu</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="ReqState" runat="server" ErrorMessage="Please select the state" ControlToValidate="stateBox" ForeColor="Red" SetFocusOnError="True" InitialValue="none">*</asp:RequiredFieldValidator>
                <span></span>
            </div>
            <div class="inputContainer">
                <label>PostCode</label>
                <asp:TextBox ID="pcodeBox" runat="server" CssClass="SDtextbox_style"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ReqPcode" runat="server" ErrorMessage="Please enter the Postcode" ControlToValidate="pcodeBox" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="ExpPcode" runat="server" ErrorMessage="Invalid Postcode" ControlToValidate="pcodeBox" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[0-9]{5}$">*</asp:RegularExpressionValidator>
            </div>
            <div class="inputContainer">
                <label>Payment Method</label>
                <asp:DropDownList ID="PayMethodBox" runat="server" CssClass="SDtextbox_style" AutoPostBack="True">
                    <asp:ListItem Value="none">--Please select Payment Method</asp:ListItem>
                    <asp:ListItem Value="card">Credit/Debit Card</asp:ListItem>
                    <asp:ListItem Value="online">Online Banking</asp:ListItem>
                    <asp:ListItem Value="cash">Cash on Delivery</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="ReqPayMethod" runat="server" ErrorMessage="Please select payment method" ControlToValidate="PayMethodBox" ForeColor="Red" SetFocusOnError="True" InitialValue="none">*</asp:RequiredFieldValidator>
                <span></span>
            </div>

           <!--Card Info only visible when choose credit/debit card payment-->
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="PayMethodBox" />
                </Triggers>
            <ContentTemplate>
            <asp:PlaceHolder ID="CardInfo" runat="server" Visible="false">
                <div id="cardInfoSec">
                <h3>Enter Card Info</h3>
                <div class="cInfoContainer">
                    <label>Card No</label>
                    <asp:TextBox ID="CardNoBox" runat="server" CssClass="cNo_style"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ReqCardNo" runat="server" ErrorMessage="Please enter the Card No" ControlToValidate="CardNoBox" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="ExpCardNo" runat="server" ControlToValidate="CardNoBox" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^\d{16}$" >*</asp:RegularExpressionValidator>
                </div>
                <div class="cInfoContainer">
                    <label>Month/Year</label>
                    <asp:TextBox ID="MonthBox" runat="server" CssClass="M_Y_style" MaxLength="2" TextMode="SingleLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ReqMonth" runat="server" ErrorMessage="Please enter the Month" ControlToValidate="MonthBox" ForeColor="Red" SetFocusOnError="True" CssClass="star">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="ExpMonth" runat="server" ErrorMessage="Invalid Month" ValidationExpression="^([1-9]|1[012])$" ForeColor="Red" SetFocusOnError="True" CssClass="star" ControlToValidate="MonthBox">*</asp:RegularExpressionValidator>
                    <div id="slash">/</div>
                    <asp:TextBox ID="YearBox" runat="server" CssClass="M_Y_style" MaxLength="2" TextMode="SingleLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ReqYear" runat="server" ErrorMessage="Please enter the Year" ControlToValidate="YearBox" ForeColor="Red" SetFocusOnError="True" CssClass="star">*</asp:RequiredFieldValidator>
                </div>
                <div class="cInfoContainer">
                    <label>CVV/CVV2</label>
                    <asp:TextBox ID="CVVBox" runat="server" CssClass="cvv_style" MaxLength="4" ReadOnly="False" TextMode="SingleLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ReqCVV" runat="server" ErrorMessage="Please enter the CVV/CVV2" ControlToValidate="CVVBox" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </div>
                </div>
                
            </asp:PlaceHolder>
            </ContentTemplate>
            </asp:UpdatePanel>
        </div>
           
        <asp:Button ID="clearBtn" runat="server" Text="Clear" CssClass="Clear_Btn" CausesValidation="False" OnClick="clearBtn_Click"/>
        <asp:ValidationSummary ID="ValidationSum" runat="server" HeaderText="Summary of Errors" CssClass="summaryBox" />
       <asp:Button ID="PayBtn" runat="server" Text="Pay" CssClass="PayBtn" OnClick="PayBtn_Click" />
    </div>

    <%--<asp:Button ID="btnHistory" runat="server" Text="Proceed to Payment History" OnClick="btnHistory_Click" />--%>

</asp:Content>

<%@ Page Language="C#" MasterPageFile="~/GreyMoon.Master" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="DemoCart.History" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <style type="text/css">
        .history_grid {
            width: 80%;
            border: solid 2px black;
            min-width: 80%;
            border-collapse: collapse;
        }

        .header {
            background-color: #646464;
            font-family: Arial;
            color: White;
            border: none 0px transparent;
            height: 25px;
            text-align: center;
            font-size: 16px;
        }

        .rows {
            background-color: #fff;
            font-family: Arial;
            font-size: 14px;
            color: #000;
            min-height: 25px;
            text-align: center;
            border: none 0px transparent;
        }

            .rows:hover {
                background-color: #262626;
                font-family: Arial;
                color: #fff;
                text-align: center;
            }
    </style>

    <div>
        <h1>Payment History </h1>
        <asp:GridView ID="gvHistory" runat="server" CssClass="history_grid" HeaderStyle-CssClass="header" RowStyle-CssClass="rows"></asp:GridView>


    </div>
</asp:Content>

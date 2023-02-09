<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="ProjectLeaderWebsite.Cart" %>

<%@ Register Src="~/WebControl/ShoppingCard.ascx" TagPrefix="uc1" TagName="ShoppingCard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <uc1:ShoppingCard runat="server" id="ShoppingCard" />
</asp:Content>

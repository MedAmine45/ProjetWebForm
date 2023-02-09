<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="ProjectLeaderWebsite.Checkout" %>

<%@ Register Src="~/WebControl/ULCheckout.ascx" TagPrefix="uc1" TagName="ULCheckout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <uc1:ULCheckout runat="server" id="ULCheckout" />

</asp:Content>

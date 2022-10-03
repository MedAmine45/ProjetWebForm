<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AllCat.aspx.cs" Inherits="ProjectLeaderWebsite.AllCat" %>

<%@ Register Src="~/WebControl/ULAllCat.ascx" TagPrefix="uc1" TagName="ULAllCat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ULAllCat runat="server" ID="ULAllCat" />
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProjectLeaderWebsite.Login" %>
<%@ Register src="wucLogin.ascx" tagname="wucLogin" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center">
    <uc1:wucLogin ID="wucLogin1" runat="server" />
    </div>
</asp:Content>

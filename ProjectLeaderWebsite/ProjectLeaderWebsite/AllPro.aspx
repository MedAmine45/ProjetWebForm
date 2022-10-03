<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AllPro.aspx.cs" Inherits="ProjectLeaderWebsite.AllPro" %>

<%@ Register Src="~/WebControl/ULAllPro.ascx" TagPrefix="uc1" TagName="ULAllPro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <uc1:ULAllPro runat="server" id="ULAllPro" />
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ProDetail.aspx.cs" Inherits="ProjectLeaderWebsite.ProDetail" %>

<%@ Register Src="~/WebControl/ULProDetail.ascx" TagPrefix="uc1" TagName="ULProDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ULProDetail runat="server" ID="ULProDetail" />
</asp:Content>

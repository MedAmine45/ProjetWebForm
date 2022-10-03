<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.Master" AutoEventWireup="true" CodeBehind="Categorie.aspx.cs" Inherits="ProjectLeaderWebsite.Admin.Categorie" %>

<%@ Register Src="~/Admin/UserControl/wucCategory.ascx" TagPrefix="uc1" TagName="wucCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:wucCategory runat="server" id="wucCategory" />

</asp:Content>

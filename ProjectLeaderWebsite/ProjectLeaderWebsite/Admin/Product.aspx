<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="ProjectLeaderWebsite.Admin.Product" %>


<%@ Register Src="~/Admin/UserControl/wucProduct.ascx" TagPrefix="uc1" TagName="wucProduct" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:wucProduct runat="server" id="wucProduct" />
</asp:Content>

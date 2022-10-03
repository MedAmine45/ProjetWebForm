<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.Master" AutoEventWireup="true" CodeBehind="SearchMembers.aspx.cs" Inherits="ProjectLeaderWebsite.Admin.SearchMembers" %>

<%@ Register Src="~/Admin/UserControl/MemberSearch.ascx" TagPrefix="uc1" TagName="MemberSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:MemberSearch runat="server" ID="MemberSearch" />
</asp:Content>

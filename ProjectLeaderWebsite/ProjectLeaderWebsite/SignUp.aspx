<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="ProjectLeaderWebsite.SignUp" %>

<%@ Register Src="~/wucSignUp.ascx" TagPrefix="uc1" TagName="wucSignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:wucSignUp runat="server" id="wucSignUp" />
</asp:Content>

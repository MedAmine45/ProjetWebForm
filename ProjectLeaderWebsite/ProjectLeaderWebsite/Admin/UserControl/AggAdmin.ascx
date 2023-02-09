<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AggAdmin.ascx.cs" Inherits="ProjectLeaderWebsite.Admin.UserControl.AggAdmin" %>
<style type="text/css">
    .auto-style1 {
        width: 354px;
    }
    .auto-style2 {
        width: 354px;
        height: 27px;
    }
    .auto-style3 {
        height: 27px;
    }
    .auto-style4 {
        margin-top: 0px;
    }
    .auto-style5 {
        width: 354px;
        height: 22px;
    }
    .auto-style6 {
        height: 22px;
    }
</style>

<table>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Number Of Products : "></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblProCount" runat="server" Font-Bold="True"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Max Price  Of All Products :"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblMaxPrice" runat="server" Font-Bold="True"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Product of Max Price  Of All Products :"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:Label ID="lblProNameMaxPrice" runat="server" Font-Bold="True"></asp:Label>
        </td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1"><strong>Male Members Percentage</strong></td>
        <td>
            <asp:Image ID="imgBarMale" runat="server" CssClass="auto-style4" Height="23px" ImageUrl="~/images/ligne.jpg" Width="94px" />
        </td>
        <td>
            <asp:Label ID="lblMPer" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Female Members Percentage</strong></td>
        <td class="auto-style6">
            <asp:Image ID="imgBarFemale" runat="server" CssClass="auto-style4" Height="16px" ImageUrl="~/images/ligne.jpg" Width="109px" />
        </td>
        <td class="auto-style6">
            <asp:Label ID="lblFPer" runat="server"></asp:Label>
        </td>
    </tr>
</table>


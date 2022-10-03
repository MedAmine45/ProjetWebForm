<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ULProDetail.ascx.cs" Inherits="ProjectLeaderWebsite.WebControl.ProDetail" %>
<%--<style type="text/css">
    .auto-style1 {
        height: 26px;
    }
    .auto-style2 {
        height: 88px;
    }
</style>--%>

<table>
    <tr>
        <td rowspan="2">
            <asp:Image ID="imgPro" runat="server" Height="246px" Width="185px" />
        </td>
        <td>
            <table>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Product Details" Font-Size="X-Large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Category:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="LblCat" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Product ID :"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="LblProID" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Product Name : "></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="LblProName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label5" runat="server" Text="Price: "></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:Label ID="LblPrice" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Max Quantity : "></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="LblQty" runat="server"></asp:Label>
                        <asp:TextBox ID="txtMaxQty" runat="server" Height="16px" Width="49px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Description : "></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="LblDesc" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label8" runat="server" Text="Quantity  you want  : "></asp:Label>
&nbsp;<asp:TextBox ID="txtQty" runat="server" Height="16px" Width="20px">1</asp:TextBox>
            <asp:ImageButton ID="ibnCart" runat="server" Height="59px" ImageUrl="~/images/cart.jpg" Width="97px" OnClick="ibnCart_Click" />
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtMaxQty" ControlToValidate="txtQty" ErrorMessage="this Quantity higher Max Quantity " Operator="LessThanEqual" Type="Integer"></asp:CompareValidator>
        </td>
    </tr>
</table>


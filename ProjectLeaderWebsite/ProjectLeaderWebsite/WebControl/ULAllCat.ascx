<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AllCat.ascx.cs" Inherits="ProjectLeaderWebsite.WebControl.AllCat" %>

<style type="text/css">
    .auto-style1 {
        text-align: center;
    }
</style>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LeaderConStr %>" SelectCommand="SELECT DISTINCT * FROM [Category]"></asp:SqlDataSource>
<p>
    &nbsp;</p>
<div class="auto-style1">
    <center>

        <h2 style="color: #FF0000">All Products Categories</h2>
<asp:DataList ID="DataList1" runat="server" DataKeyField="CatNo" DataSourceID="SqlDataSource1" CellPadding="5" CellSpacing="80" RepeatColumns="6">
    <ItemTemplate>
        <table align="center">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("CatName") %>'></asp:Label>
                    <%--<asp:Label ID="CatNameLabel" runat="server" Text='<%# Eval("CatName") %>' />--%>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="ALlPro.aspx?catno=<%#Eval("CatNo")%>">
                    <asp:Image ID="Image1" runat="server" Height="130px" ImageUrl='<%# "..//CatImgs//"+Eval("CatNo")+".jpg" %>' Width="145px" />
                    </a>
                    </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text='Description'></asp:Label></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("Description") %>'></asp:Label></td>
            </tr>
        </table>
        <br />
<br />
    </ItemTemplate>
</asp:DataList>
    </center>
</div>



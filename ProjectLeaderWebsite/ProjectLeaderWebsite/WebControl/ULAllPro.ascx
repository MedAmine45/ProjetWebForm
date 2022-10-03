<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ULAllPro.ascx.cs" Inherits="ProjectLeaderWebsite.WebControl.ULAllPro" %>
<style type="text/css">
    .auto-style1 {
        text-align: center;
    }
</style>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LeaderConStr %>" SelectCommand=""></asp:SqlDataSource>
<p>
    &nbsp;</p>
<div class="auto-style1">
    <center>

        <h2 style="color: #FF0000">All Products </h2>
    </center>
<asp:DataList ID="DataList1" runat="server" DataKeyField="CatNo" DataSourceID="SqlDataSource1" CellPadding="5" CellSpacing="80" RepeatColumns="6">
    <ItemTemplate>
        <table align="center">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("ProName") %>'></asp:Label>
                    <%--<asp:Label ID="CatNameLabel" runat="server" Text='<%# Eval("CatName") %>' />--%>
                </td>
            </tr>
            <tr>
                <td>
                    <%--& catno=<%# Eval("CatNo")%>--%>
                    <a href="ProDetail.aspx?proid=<%# Eval("ProdID")+ "&catno="+Eval("CatNo")  %>  ">
                    <%--<a href="ProOfCat.aspx?catno=<%#Eval("CatNo")%>"> Eval("CatNo")+"-"--%>
                    <asp:Image ID="Image1" runat="server" Height="130px" ImageUrl='<%# "..//ProImgs//"+Eval("ProdID")+".jpg" %>' Width="145px" />
                    </a>
                    </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text='Description'></asp:Label></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("description") %>'></asp:Label></td>
            </tr>
            <tr>
                <td><strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Price")+"$" %>'></asp:Label>
                    </strong></td>
            </tr>
        </table>
        <br />
<br />
    </ItemTemplate>
</asp:DataList>
</div>


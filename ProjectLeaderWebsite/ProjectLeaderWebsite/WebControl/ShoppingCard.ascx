<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCard.ascx.cs" Inherits="ProjectLeaderWebsite.WebControl.ShoppingCard" %>
<style type="text/css">
    .auto-style1 {
        text-align: left;
    }
    .auto-style2 {
        font-size: large;
        color: #FF6666;
    }
    .auto-style3 {
        text-align: center;
    }
</style>
<div class="auto-style1">
    <span class="auto-style2">Shopping Cart<br />
    <br />
    </span>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <span class="auto-style2">
            <table align="center">
                <tr>
                    <td>
                        <asp:GridView ID="grdCart" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="167px" OnRowCancelingEdit="grdCart_RowCancelingEdit" OnRowDeleting="grdCart_RowDeleting" OnRowEditing="grdCart_RowEditing" OnRowUpdating="grdCart_RowUpdating" OnSelectedIndexChanged="grdCart_SelectedIndexChanged" Width="824px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="CatNo" HeaderText="Category" ReadOnly="True" />
                                <asp:BoundField DataField="ProID" HeaderText="ID" ReadOnly="True" />
                                <asp:BoundField DataField="ProName" HeaderText="Product" ReadOnly="True" />
                                <asp:BoundField DataField="Price" HeaderText="Price " ReadOnly="True" />
                                <asp:BoundField DataField="Quantity" HeaderText="Qunatity" />
                                <asp:BoundField DataField="SubTotal" HeaderText="Sub Total" ReadOnly="True" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <span class="auto-style2">
                                        <asp:Image ID="Image1" runat="server" Height="43px" ImageUrl='<%# "..//ProImgs//"+Eval("ProID")+".jpg" %>' Width="67px" />
                                        </span>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField HeaderText="Control" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" />
                            </Columns>
                            <EmptyDataTemplate>
                                shopping cart empty now
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AllCat.aspx"> Click here</asp:HyperLink>
                                &nbsp;to add products to your shopping cart
                            </EmptyDataTemplate>
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td style="background-color: #990000">
                        <asp:Label ID="lblTotal" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                            <ProgressTemplate>
                                <asp:Image ID="Image2" runat="server" Height="48px" ImageUrl="~/images/téléchargement.png" Width="76px" />
                                <br />
                            </ProgressTemplate>
                        </asp:UpdateProgress>
                        <br />
                        <span class="auto-style2">
                        <asp:HyperLink ID="hlkCheckout" runat="server" NavigateUrl="~/Checkout.aspx">Go To Checkout </asp:HyperLink>
                        </span>
                    </td>
                </tr>
            </table>
            </span>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br class="auto-style2" />

</div>



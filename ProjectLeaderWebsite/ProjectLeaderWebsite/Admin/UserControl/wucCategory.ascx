<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucCategory.ascx.cs" Inherits="ProjectLeaderWebsite.Admin.UserControl.wucCategory" %>
<style type="text/css">
    .auto-style1 {
        text-align: center;
    }
    .auto-style2 {
        text-align: right;
    }
    .auto-style3 {
        width: 100%;
    }
    .auto-style4 {
        width: 369px;
    }
    .auto-style5 {
        width: 365px;
    }
    .auto-style7 {
        text-align: center;
        height: 37px;
    }
    .auto-style10 {
        height: 26px;
        width: 27px;
    }
    .auto-style11 {
        width: 249px;
    }
    .auto-style12 {
        height: 26px;
        width: 249px;
        text-align: center;
    }
    .auto-style13 {
        width: 249px;
        text-align: center;
    }
    .auto-style14 {
        width: 249px;
        text-align: center;
        height: 29px;
    }
    .auto-style15 {
        text-align: left;
        height: 29px;
    }
    .auto-style16 {
        height: 29px;
        width: 27px;
    }
    .auto-style18 {
        text-align: left;
    }
    .auto-style19 {
        height: 26px;
        text-align: left;
    }
    .auto-style20 {
        width: 27px;
    }
    .auto-style22 {
        height: 26px;
    }
</style>


        
<br />
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">

            <asp:View ID="View1" runat="server">
                <table align="center" class="auto-style1">
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label1" runat="server" Font-Names="Impact" Font-Size="X-Large" Font-Underline="True" Text="Search For Products Categories"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Search By"></asp:Label>
                            &nbsp;&nbsp;&nbsp;
                            <asp:RadioButtonList ID="rdoField" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="CatNo">Category Number</asp:ListItem>
                                <asp:ListItem Selected="True" Value="CatName">Title</asp:ListItem>
                                <asp:ListItem>Description</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label3" runat="server" Text="value to Search"></asp:Label>
                            :
                            <asp:TextBox ID="txtSearch" runat="server" Width="300px"></asp:TextBox>
                            <asp:Button ID="BtnSearch" runat="server" OnClick="BtnSearch_Click" Text="Search" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
                            <asp:Button ID="btnUpdate" runat="server" Enabled="False" OnClick="btnUpdate_Click" Text="Update " />
                            <asp:Button ID="btnRemove" runat="server" Enabled="False" OnClick="btnRemove_Click" Text="Remove" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="LblMsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr style="height:44px">
                        <td class="auto-style5">
                          <%--  <asp:UpdateProgress ID="UpdateProgress2" runat="server">
                                <ProgressTemplate>--%>
                              <%--  </ProgressTemplate>
                            </asp:UpdateProgress>--%>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" align="center" >
                            <asp:GridView ID="grd" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="grd_SelectedIndexChanged" Width="769px">
                                <Columns>
                                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Select" ShowHeader="True" Text="&gt;&gt;&gt;" />
                                </Columns>
                                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                <RowStyle BackColor="White" ForeColor="#330099" />
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                <SortedDescendingHeaderStyle BackColor="#7E0000" />
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <table align="center" class="auto-style3">
                    <tr>
                        <td class="auto-style7" colspan="3">
                            <asp:Label ID="LblTitle" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Products Categories"></asp:Label>
                        </td>
                        <td rowspan="7">
                            <asp:Image ID="img" runat="server" Height="207px" Width="232px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Categorie Number :"></asp:Label>
                        </td>
                        <td class="auto-style18">
                            <asp:TextBox ID="txtCatNo" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style20">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCatNo" ValidationGroup="g1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label5" runat="server" Text="Category Title"></asp:Label>
                        </td>
                        <td class="auto-style18">
                            <asp:TextBox ID="txtCatName" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style20">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCatName" ValidationGroup="g1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">
                            <asp:Label ID="Label6" runat="server" Text="Description "></asp:Label>
                        </td>
                        <td class="auto-style15">
                            <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td class="auto-style16"></td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label7" runat="server" Text="Image : "></asp:Label>
                        </td>
                        <td class="auto-style19">
                            <asp:FileUpload ID="fup" runat="server" />
                        </td>
                        <td class="auto-style10"></td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="lblEditMsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                        </td>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style20">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td>
                            <asp:Button ID="BtnSave" runat="server" Text="Save" OnClick="BtnSave_Click" ValidationGroup="g1" />
                            <asp:Button ID="BtnCancel" runat="server" OnClick="BtnCancel_Click" Text="Cancel" />
                        </td>
                        <td class="auto-style20">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style22" colspan="3">
                       <%--     <asp:UpdateProgress ID="UpdateProgress3" runat="server">
                                <ProgressTemplate>--%>
                               <%-- </ProgressTemplate>
                            </asp:UpdateProgress>--%>
                        </td>
                    </tr>
                </table>
            </asp:View>

        </asp:MultiView>

 <%--   </ContentTemplate>
</asp:UpdatePanel>--%>


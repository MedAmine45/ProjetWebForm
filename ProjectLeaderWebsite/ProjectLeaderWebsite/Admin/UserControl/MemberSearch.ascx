<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MemberSearch.ascx.cs" Inherits="ProjectLeaderWebsite.Admin.UserControl.MemberSearch" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: center;
    }
    .auto-style3 {
        text-align: right;
    }
    .auto-style4 {
        text-align: left;
    }
    .auto-style5 {
        text-align: center;
        height: 41px;
    }
</style>

<p>

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

</p>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
<table align="center" class="auto-style1">
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label1" runat="server" Font-Names="Impact" Font-Size="X-Large" Font-Underline="True" Text="Search For Members"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Search By"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:RadioButtonList ID="rdoField" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="userName">UserName</asp:ListItem>
                <asp:ListItem Selected="True" Value="name">FullName</asp:ListItem>
                <asp:ListItem>Company</asp:ListItem>
                <asp:ListItem>Gender</asp:ListItem>
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
        <td class="auto-style3">
            <asp:Button ID="btnRemove" runat="server" Enabled="False" Text="Remove Selected User" OnClick="btnRemove_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="LblMsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr style="height:44px">
        <td class="auto-style5">
            <asp:UpdateProgress ID="UpdateProgress1" runat="server">

                <ProgressTemplate>
                    <asp:Image ID="Image2" runat="server" Height="48px" ImageUrl="~/images/téléchargement.png" Width="76px" />
                </ProgressTemplate>

            </asp:UpdateProgress>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:GridView ID="grd" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="grd_SelectedIndexChanged">
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
        </ContentTemplate>

    </asp:UpdatePanel>


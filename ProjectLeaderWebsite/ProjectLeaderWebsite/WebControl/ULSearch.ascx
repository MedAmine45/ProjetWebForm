<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ULSearch.ascx.cs" Inherits="ProjectLeaderWebsite.WebControl.ULSearch" %>


 <div>
          <%--<input type="text" value="" name="s" style="width: 95%" />--%>
     <asp:TextBox ID="txtSearch" style="width: 95%" runat="server"></asp:TextBox>
          &nbsp; &nbsp;<br />
          <%--<a class="art-button">Search</a>--%>          <%--<asp:LinkButton ID="LinkButton1" runat="server"  class="art-button">Search</asp:LinkButton>--%>
     <asp:LinkButton ID="lbnSearch" runat="server" OnClick="lbnSearch_Click" class="art-button">Search</asp:LinkButton>

 </div>

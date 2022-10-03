<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ULLastestPro.ascx.cs" Inherits="ProjectLeaderWebsite.WebControl.ULLastestPro" %>
<div class="art-blockcontent"><p><a href="AllPro.aspx">click here </a> to show all products </p>
            
            
            <p><a href="#">All News </a></p>
            <ul>

                <asp:DataList ID="DataList1" runat="server" DataKeyField="CatNo" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                         <li><a href="ProDetail.aspx?proid=<%# Eval("ProdID")+ "&catno="+Eval("CatNo")  %>"><%# Eval("ProName") %></a></li>
                        <%--<asp:Label ID="Label1" runat="server" Text='<%# Eval("CatName") %>' />--%>
                        
                    </ItemTemplate>
                </asp:DataList>
            </ul>
            <p>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:LeaderConStr %>" 
                    SelectCommand="SELECT top 3 * FROM [Product] ORDER BY [WritingDate] DESC">

                </asp:SqlDataSource>

            </p>
<%--            <p><a href="#">Get Strong</a></p>--%>
            <%--<p><a href="#">Kitchen Experts</a><br></p>
            <p><a href="#">Real-Life Tips</a><br></p>
            <p><a href="#" class="art-button">Learn more</a><br></p>--%>


        </div>
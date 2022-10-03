<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ULCategories.ascx.cs" Inherits="ProjectLeaderWebsite.WebControl.ULCategories" %>
<div class="art-blockcontent"><p>all Categorie of products here,<a href="AllCat.aspx">click here to show all Categories</a> </p>
            
            
            <p><a href="#">All News </a></p>
            <ul>

                <asp:DataList ID="DataList1" runat="server" DataKeyField="CatNo" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                         <li><a href="ProOfCat.aspx?catno=<%# Eval("CatNo") %>"><%# Eval("CatName") %></a></li>
                        <%--<asp:Label ID="Label1" runat="server" Text='<%# Eval("CatName") %>' />--%>
                        
                    </ItemTemplate>
                </asp:DataList>
            </ul>
            <p>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:LeaderConStr %>" 
                    SelectCommand="SELECT DISTINCT [CatNo], [CatName], [Description] FROM [Category]">

                </asp:SqlDataSource>

            </p>
<%--            <p><a href="#">Get Strong</a></p>--%>
            <%--<p><a href="#">Kitchen Experts</a><br></p>
            <p><a href="#">Real-Life Tips</a><br></p>
            <p><a href="#" class="art-button">Learn more</a><br></p>--%>


        </div>
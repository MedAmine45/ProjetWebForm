<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="ProjectLeaderWebsite.Admin.Admin" %>
<%@ Register src="UserControl/AggAdmin.ascx" tagname="AggAdmin" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <asp:Label ID="lblWelcome" runat="server" Text=""></asp:Label>
    <asp:LinkButton ID="lbnSignout" runat="server" OnClick="lbnSignout_Click" Visible="False">(Logout)</asp:LinkButton>
              <br />
    <uc1:AggAdmin ID="AggAdmin1" runat="server" />
&nbsp;<div class="art-postcontent art-postcontent-0 clearfix"><div class="art-content-layout-wrapper layout-item-0">
<div class="art-content-layout layout-item-1">
    <div class="art-content-layout-row">
    <div class="art-layout-cell layout-item-2" style="width: 50%" >
        <div style="width:100%;border-bottom:2px solid #c73e1f;margin:0;"><h3>Change Your life With Us</h3></div><p><span style="font-weight: bold;">Cras metus praesent sociosqu augue nisl.  Enim eleifend feugiat adipiscing curabitur fames in vestibulum ipsum.</span></p><p>Enim tincidunt iaculis praesent pretium nam parturient non. Lorem tellus malesuada nulla tincidunt eu ut auctor. Aenean metus in sapien praesent a posuere sagittis odio.  Nunc amet pulvinar sed lacus sit. </p><table class="art-article" border="0" cellspacing="0" cellpadding="0" style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; width: 100%;"><tbody><tr><td style="border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; width: 50%; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;"><ul><li><a href="#">Motivation tips</a></li><li><a href="#">Dieting help</a></li></ul></td><td style="border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;"><ul><li><a href="#">Healthy Eating Guides</a></li><li><a href="#">Lifestyle</a></li></ul></td></tr></tbody></table><p><a href="#" class="art-button">Learn more</a></p>
    </div><div class="art-layout-cell layout-item-3" style="width: 50%" >
        <p><div class="image-caption-wrapper" style="float: left; width: 397px"><img width="100%" height="" alt="" src="../images/65db5.jpg" class="" style="max-width:764px"><p>Image by Flickr/Keith</p></div></p>
    </div>
    </div>
</div>
</div>
<div class="art-content-layout">
    <div class="art-content-layout-row">
    <div class="art-layout-cell layout-item-3" style="width: 100%" >
        <div style="width:100%;border-bottom:2px solid #c73e1f;margin:0;"><h3>Expert Answers to Your Questions</h3></div>
    </div>
    </div>
</div>
<div class="art-content-layout">
    <div class="art-content-layout-row">
    <div class="art-layout-cell layout-item-3" style="width: 20%" >
        <p><div class="image-caption-wrapper" style="float: left; width: 145px"><img width="100%" height="" alt="" src="../images/aa576.jpg" class="" style="max-width:360px"></div><br></p>
    </div><div class="art-layout-cell layout-item-3" style="width: 20%" >
        <p><div class="image-caption-wrapper" style="float: left; width: 145px"><img width="100%" height="" alt="" src="../images/a2e01.jpg" class="" style="max-width:600px"><p>Image by Flickr/Igor Krivokon</p></div><br></p>
    </div><div class="art-layout-cell layout-item-3" style="width: 20%" >
        <p><div class="image-caption-wrapper" style="float: left; width: 145px"><img width="100%" height="" alt="" src="../images/3e0fe.jpg" style="max-width:511px"></div><br></p>
    </div><div class="art-layout-cell layout-item-3" style="width: 20%" >
        <p><div class="image-caption-wrapper" style="float: left; width: 145px"><img width="100%" height="" alt="" src="../images/3bd4a.jpg" class="" style="max-width:360px"></div><br></p>
    </div><div class="art-layout-cell layout-item-3" style="width: 20%" >
        <p><div class="image-caption-wrapper" style="float: left; width: 144px"><img width="100%" height="" alt="" src="../images/20ac0.jpg" style="max-width:598px"><p>Image by Flickr/NASA Goddard Space Flight Center</p></div><br></p>
    </div>
    </div>
</div>
<div class="art-content-layout">
    <div class="art-content-layout-row">
    <div class="art-layout-cell layout-item-3" style="width: 100%" >
        <p><a href="#" class="art-button">Sea all</a></p>
    </div>
    </div>
</div>
</div>
</asp:Content>

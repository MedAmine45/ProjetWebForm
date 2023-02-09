<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ULCheckout.ascx.cs" Inherits="ProjectLeaderWebsite.WebControl.Checkout" %>
<%@ Register src="../wucLogin.ascx" tagname="wucLogin" tagprefix="uc1" %>
<%@ Register src="ShoppingCard.ascx" tagname="ShoppingCard" tagprefix="uc2" %>
<style type="text/css">
 /*   .auto-style1 {
        height: 29px;
    }
    .auto-style2 {
        height: 28px;
        width: 207px;
    }
    .auto-style3 {
        width: 105px;
    }
    .auto-style4 {
        height: 28px;
        width: 105px;
    }
    .auto-style5 {
        width: 207px;
    }
    .auto-style11 {
        width: 187px;
    }
    .auto-style12 {
        width: 206px;
    }*/
   /* .auto-style1 {
        margin-left: 19px;
    }
    .auto-style2 {
        width: 168px;
    }
    .auto-style3 {
        width: 169px;
    }
    .auto-style4 {
        width: 170px;
    }
    .auto-style5 {
        width: 171px;
    }
    .auto-style6 {
        width: 199px;
    }
    .auto-style7 {
        width: 100%;
    }*/
   /* .auto-style1 {
        text-align: center;
    }
    .auto-style7 {
        margin-right: 20px;
    }
    .auto-style8 {
        width: 659px;
    }
    .auto-style9 {
        text-align: center;
        width: 268435520px;
    }*/
   /* .auto-style9 {
        text-align: center;
        width: 0.1px;
    }*/
    </style>
    <asp:Label ID="Label12" runat="server" Text="Checkout" Font-Bold="True" Font-Names="Harrington" Font-Size="XX-Large"></asp:Label>

<br />
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <table align="center" class="auto-style7">
            <tr>
                <td class="auto-style8">
                    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="4" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderWidth="1px" Font-Names="Verdana" Font-Size="1em" Height="220px" OnFinishButtonClick="Wizard1_FinishButtonClick" Width="430px" OnActiveStepChanged="Wizard1_ActiveStepChanged">
                        <HeaderStyle BackColor="#FFCC66" BorderColor="#FFFBD6" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="#333333" HorizontalAlign="Center" />
                        <NavigationButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
                        <SideBarButtonStyle ForeColor="White" />
                        <SideBarStyle BackColor="#990000" Font-Size="0.9em" VerticalAlign="Top" />
                        <WizardSteps>
                            <asp:WizardStep ID="WizardStep1" runat="server" StepType="Start" Title="Login">
                                <uc1:wucLogin ID="wucLogin1" runat="server" />
                            </asp:WizardStep>
                            <asp:WizardStep ID="WizardStep2" runat="server" Title="Delivery Address">
                                <table align="center">
                                    <tr>
                                        <td class="auto-style1" colspan="2">
                                            <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Names="Cooper Black" Font-Size="22px" Font-Underline="True" Text="Delivery Address"></asp:Label>
                                        </td>
                                        <td class="auto-style9" rowspan="5">
                                           
                                            <asp:Image ID="Image6" runat="server" Height="200px" ImageUrl="~/images/delevriyadress.jpg" Width="222px" />
                                           
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">
                                            <asp:Label ID="Label2" runat="server" Text="Name : "></asp:Label>
                                        </td>
                                        <td class="auto-style5">
                                            <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">
                                            <asp:Label ID="Label3" runat="server" Text="City : "></asp:Label>
                                        </td>
                                        <td class="auto-style5">
                                            <asp:TextBox ID="TxtCity" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">
                                            <asp:Label ID="Label4" runat="server" Text="Area : "></asp:Label>
                                        </td>
                                        <td class="auto-style2">
                                            <asp:TextBox ID="TxtArea" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">
                                            <asp:Label ID="Label5" runat="server" Text="Address : "></asp:Label>
                                        </td>
                                        <td class="auto-style5">
                                            <asp:TextBox ID="TxtAddress" runat="server" Height="61px" Width="192px"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" Title="Confirmation">
                                <uc2:ShoppingCard ID="ShoppingCard1" runat="server" />
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" Title="Payment">
                                <table align="center">
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label ID="Label6" runat="server" Font-Italic="True" Font-Names="Cooper Black" Font-Size="22px" Font-Underline="True" Text="Payment"></asp:Label>
                                        </td>
                                        <td rowspan="2">
                                            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/MasterCard.jpg" Width="95px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style11">
                                            <asp:Label ID="Label7" runat="server" Text="Card  Type: "></asp:Label>
                                        </td>
                                        <td class="auto-style6">
                                            <asp:DropDownList ID="ddlCardType" runat="server">
                                                <asp:ListItem>Visa Card</asp:ListItem>
                                                <asp:ListItem>Master Card</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style11">
                                            <asp:Label ID="Label8" runat="server" Text="Card Number: "></asp:Label>
                                        </td>
                                        <td class="auto-style6">
                                            <asp:TextBox ID="TxtCardNo" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style12" rowspan="3">
                                            <asp:Image ID="Image2" runat="server" Height="105px" ImageUrl="~/images/visa-electron.png" Width="153px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style11">
                                            <asp:Label ID="Label9" runat="server" Text=" Expires: "></asp:Label>
                                        </td>
                                        <td class="auto-style6">
                                            <asp:TextBox ID="TxtMonth" runat="server" Height="20px" Width="46px"></asp:TextBox>
                                            /<asp:TextBox ID="TxtYear" runat="server" Width="65px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style11">
                                            <asp:Label ID="Label10" runat="server" Text="Name In card : "></asp:Label>
                                        </td>
                                        <td class="auto-style6">
                                            <asp:TextBox ID="TxtNameCard" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" StepType="Finish" Title="Shipment Method">
                                <table align="center">
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label ID="Label11" runat="server" Font-Italic="True" Font-Names="Cooper Black" Font-Size="22px" Font-Underline="True" Text="Shipment Method"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:RadioButtonList ID="rblShipment" runat="server">
                                                <asp:ListItem Value="Representative">&lt;b&gt;Representative&lt;/b&gt;(Only In Caire Take One Day )</asp:ListItem>
                                                <asp:ListItem Value="Surface Mail ">&lt;b&gt;Surface Mail &lt;/b&gt;(take from 5 to 10</asp:ListItem>
                                                <asp:ListItem Selected="True" Value="Registered Mail">&lt;b&gt;Registered Mail&lt;/b&gt;(DHL Maximum 3 days</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                        <td>
                                            <asp:Image ID="Image5" runat="server" Height="184px" ImageUrl="~/images/dhl.jpeg" Width="225px" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" StepType="Complete" Title="Complete">
                                <asp:Label ID="lblMsg" runat="server" Font-Names="Arial" Font-Size="Large"></asp:Label>
                            </asp:WizardStep>
                        </WizardSteps>
                    </asp:Wizard>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                        <ProgressTemplate>
                            <asp:Image ID="Image3" runat="server" Height="48px" ImageUrl="~/images/téléchargement.png" Width="76px" />
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                </td>
            </tr>
        </table>
    </ContentTemplate>
</asp:UpdatePanel>



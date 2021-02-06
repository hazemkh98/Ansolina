<%@ Page Title="" Language="C#" MasterPageFile="~/PatientMasterSite.Master" AutoEventWireup="true" CodeBehind="PatientHomePage.aspx.cs" Inherits="Gradute_Ansolina.PatientHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 191px;
        }
        .auto-style4 {
            width: 100%;
            height: 79px;
        }
        .auto-style5 {
            width: 308px;
        }
        .auto-style6 {
            width: 298px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Welcom"></asp:Label>
                <asp:Label ID="LabelFullname" runat="server"></asp:Label>
            </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>
            Display Medcines&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Button ID="ButtonOrder" runat="server" Height="47px" Text="Order" Width="108px" class="btn btn-primary" Font-Bold="True" Font-Names="Arial Black" Font-Overline="False" OnClick="ButtonOrder_Click" />
            </h1>
            <table class="auto-style4">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text="order type" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="DropDownListorderType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownListorderType_SelectedIndexChanged" Width="308px" Height="55px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Text="Safe delivery to your home"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Text="banned delivery medical center"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </table>
        
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" CellPadding="20" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="center" border="0" ">
                    <tr>
                        <td style="padding:10px;text-align:center;vertical-align:middle; font-weight:bold;">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/PatientViewDetails.aspx?id="+Eval("MedicineCode")%>'><%#Eval("MedicineName")%> </asp:HyperLink></td>
                    </tr>

                    <tr>
                        <td style="padding:15px; text-align:center;vertical-align:middle; "><asp:Image ID="Image1" runat="server"  ImageUrl='<%#Eval("MedicineImage") %>' Height="260" Width="260"> </asp:Image></td>
                    </tr>

                    <tr>
                        <td style="padding:10px ;text-align:center;vertical-align:middle; font-weight:bold;">Price: <%#Eval("Cost") %></td>
                    </tr>

                    <tr>                       
                        <td style="padding:10px ;text-align:center;vertical-align:middle; font-weight:bold;"><asp:LinkButton ID="AddToCartButton" runat="server" Text="Add To Cart" OnClick="AddToCartButton_Click" CommandArgument='<%#Eval("MedicineCode")%>'></asp:LinkButton></td>
                    </tr>

                </table>
                
            </ItemTemplate>
        </asp:DataList>
        
    </div>
    <table class="auto-style4">
        <tr>
            <td>

            </td>

        </tr>
        </table>
</asp:Content>

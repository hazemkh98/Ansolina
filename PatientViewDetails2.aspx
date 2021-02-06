<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PatientViewDetails2.aspx.cs" Inherits="Gradute_Ansolina.PatientViewDetails2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 27px;
        }
        .auto-style3 {
            width: 1px;
        }
        .auto-style4 {
            width: 1px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            width: 44px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br>
    <br>
    <div class="container">
        <div class="row">
            
                <div class="col-md-6">
                    <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col-md-8">
                            <div class="row">
                            <div class="col">
                               
                              <asp:Image ID="ImageMedcine" runat="server" Height="262px" Width="415px" />
                                </div>
                            </div>
                        </div>
                       </div>
                    </div>
                        </div>
                     </div>

                <div class="col-md-6">
                <div class="row">
                    <div class="col">

                        <table class="w-100">
                            <tr>
                                <td class="auto-style1">
                                    
                                </td>
                                <td>
                                    <table class="w-100">
                                        <tr>
                                            <td class="auto-style3">&nbsp;</td>
                                            <td class="auto-style6">
                                                <asp:Label ID="Label1" runat="server" Text="Name " Font-Bold="True"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="LabelName" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3">&nbsp;</td>
                                            <td class="auto-style6">
                                                <asp:Label ID="Label2" runat="server" Text="Cost" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="LabelCost" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class="w-100">
                                        <tr>
                                            <td class="auto-style3">&nbsp;</td>
                                            <td class="auto-style5">
                                                <asp:Label ID="Label5" runat="server" Text="Type" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="LabelType" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style4"></td>
                                            <td class="auto-style5">
                                            </td>
                                            <td class="auto-style5">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3">&nbsp;</td>
                                            <td class="auto-style5">
                                                <asp:Label ID="Label3" runat="server" Text="Pdate" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="LabelPdate" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3">&nbsp;</td>
                                            <td class="auto-style5">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3">&nbsp;</td>
                                            <td class="auto-style5">
                                                <asp:Label ID="Label" runat="server" Text="EDate" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="LabelEdate" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3">&nbsp;</td>
                                            <td class="auto-style5">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3">&nbsp;</td>
                                            <td class="auto-style5">
                                                <asp:Label ID="Label6" runat="server" Text="Description" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="LabelDescription" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3">&nbsp;</td>
                                            <td class="auto-style5">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>

                        </div>
                    </div>
                    </div>
                        </div>
                     </div>
                   
               
</asp:Content>

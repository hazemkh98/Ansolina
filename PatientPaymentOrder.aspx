<%@ Page Title="" Language="C#" MasterPageFile="~/PatientMasterSite.Master" AutoEventWireup="true" CodeBehind="PatientPaymentOrder.aspx.cs" Inherits="Gradute_Ansolina.PatientPaymentOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 86px;
        }

        .auto-style2 {
            width: 151px;
        }

        .auto-style6 {
            width: 148px;
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


                        <table class="w-100">
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style6">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td class="auto-style2">
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Medcine Name"></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:ListBox ID="ListBoxMedcine" runat="server" Height="109px" Width="206px" AppendDataBoundItems="true"></asp:ListBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style6">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td class="auto-style2">
                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Total Cost"></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:Label ID="Labeltotalcost" runat="server"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style6">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style6">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td class="auto-style2">
                                    <asp:Label ID="Labelcentername" runat="server" Font-Bold="True" Text="Center Name"></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:DropDownList ID="DropDownListCenterName" runat="server" Width="197px">
                                    </asp:DropDownList>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style6">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style6">
                                    <asp:Button ID="ButtonSave" runat="server" BackColor="#2C896B" Font-Bold="True" Text="Save" OnClick="ButtonSave_Click" />
                                </td>
                                <td>
                                    <asp:Label ID="Labelsendemali" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style6">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="row">
                    <div class="col">

                        <center>       
                      <img width="250px" height="150" src="img/PaidCahs2.png" />
                        </center>

                        <div class="row">
                            <div class="col">
                                <center>
                                 <h4>Paid Cash</h4>
                                    <div>
                                        In the beginning, the payment process will be manual, and we will soon work on it to be through Visa, Bitcoin
                                    </div>
                                </center>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSitePage.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Gradute_Ansolina.AminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 144px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">

                                <center> 
                                    <img  width="150px" src="img/Adminlogin.png" />
                                </center>

                            </div>
                        </div>
                        <table class="w-100">
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td>
                                    <asp:Label ID="Labeleror" runat="server" ForeColor="#CC0000"></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    &nbsp;</td>
                                <td class="auto-style3">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="TextBoxloginName" runat="server" BorderColor="#2C896B" Width="250px" placeholder="Admin ID" BorderStyle="Solid"></asp:TextBox>
                                </td>
                                <td class="auto-style5">
                                    &nbsp;</td>
                                <td class="auto-style5">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td class="auto-style3">
                                    &nbsp;</td>
                                <td class="auto-style3">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="TextBoxloginPassword" runat="server" BorderColor="#2C896B" TextMode="Password" Width="250px" placeholder="Admin Password" BorderStyle="Solid"></asp:TextBox>
                                </td>
                                <td class="auto-style3">
                                    &nbsp;</td>
                                <td class="auto-style3">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td class="auto-style3">
                                    &nbsp;</td>
                                <td class="auto-style3">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td class="auto-style3">
                                    &nbsp;</td>
                                <td class="auto-style3">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td>
                                    <asp:RadioButton ID="RadioButtonAdmin" runat="server" GroupName="a" OnCheckedChanged="RadioButtonAdmin_CheckedChanged" Text="Admin" />
                                    <asp:RadioButton ID="RadioButtonpharmacist" runat="server" GroupName="a" OnCheckedChanged="RadioButtonpharmacist_CheckedChanged" Text="pharmacist" />
                                </td>
                                <td class="auto-style3">
                                    &nbsp;</td>
                                <td></td>
                                <td class="auto-style3">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td class="auto-style3">
                                    &nbsp;</td>
                                <td class="auto-style3">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" class="btn btn-success btn-block
                                        btn-lg "
                                        Text="Sgin in" Width="490px" Height="40px" />
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Button ID="ButtonSignup" runat="server" OnClick="ButtonSignup_Click" class="btn btn-primary" Text="sign up" Width="490px" Font-Bold="False" Height="40px" />
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>

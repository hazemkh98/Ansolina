<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PatintLogin.aspx.cs" Inherits="Gradute_Ansolina.PatintLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 109px;
        }

        .auto-style3 {
            width: 293px;
        }

        .auto-style4 {
            width: 109px;
            height: 29px;
        }

        .auto-style5 {
            width: 293px;
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br>
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                
                      <img width="150px" src="img/userlogin.jpg" />
                                </center>

                            </div>
                        </div>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">
                                    <asp:Label ID="Labeleror" runat="server" ForeColor="#CC0000"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4"></td>
                                <td class="auto-style5">
                                    <asp:TextBox ID="TextBoxloginName" runat="server" BorderColor="#2C896B" Width="250px" placeholder="User ID" BorderStyle="Solid"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="TextBoxloginPassword" runat="server" BorderColor="#2C896B" TextMode="Password" Width="250px" placeholder="User Password" BorderStyle="Solid"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" class="btn btn-success btn-block
                                        btn-lg "
Text="Sign in" Height="40px" Width="490px" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;
                                    <asp:Button ID="ButtonSignup" runat="server" OnClick="ButtonSignup_Click" class="btn btn-primary btn-block btn-lg" Text="sign up" Width="490px" Font-Bold="False" Height="40px" />
                                </td>

                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>

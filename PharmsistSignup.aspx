<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PharmsistSignup.aspx.cs" Inherits="Gradute_Ansolina.PharmsistSignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-7 mx-auto ">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img id="imgview" height="200px" src="img/Adminlogin.png" width="250px" />
                                </center>
                            </div>
                        </div>
                        <table class="w3-bordered">
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="National ID"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text=" Name"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:TextBox ID="TextBoxNID" runat="server" BorderColor="#2C896B" BorderStyle="Solid" CssClass="auto-style17" placeholder="Enter Your NID " Width="300px"></asp:TextBox>
                                </td>
                                <td class="auto-style8">
                                    <asp:TextBox ID="TextBoxFullName" runat="server" BorderColor="#2C896B" BorderStyle="Solid" placeholder="Full Name" Width="370px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxNID" ErrorMessage="Invalid NID" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                                </td>
                                <td class="auto-style8">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxFullName" ErrorMessage="Please Enter pharmacist Full Name" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3" colspan="2">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxNID" ErrorMessage="Please Enter pharmacist National Id Number" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style9">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;</td>
                                <td class="auto-style8">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style16">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="User Type"></asp:Label>
                                </td>
                                <td class="auto-style18">&nbsp;</td>
                                <td class="auto-style8">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                <asp:RadioButton ID="RadioButtonpharmacist" runat="server" BorderColor="#2C896B" GroupName="a" Text="pharmacist" />
                                </td>
                                <td class="auto-style1"></td>
                                <td class="auto-style1">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style16">&nbsp;</td>
                                <td class="auto-style18">&nbsp;</td>
                                <td class="auto-style8">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3" colspan="2">
                                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="User Name"></asp:Label>
                                </td>
                                <td class="auto-style9">
                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Password"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:TextBox ID="TextBoxloginName" runat="server" BorderColor="#2C896B" BorderStyle="Solid" placeholder="User Name" Width="280px"></asp:TextBox>
                                </td>
                                <td class="auto-style8">
                                    <asp:TextBox ID="TextBoxloginPassword" runat="server" BorderColor="#2C896B" BorderStyle="Solid" placeholder="Enter Password" TextMode="Password" Width="280px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="labelLoginNameError" runat="server" ForeColor="#CC0000"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBoxloginPassword" ErrorMessage="Please Enter pharmacist Login Password" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBoxloginName" ErrorMessage="Please Enter pharmacist Log Name" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />
                                </td>
                                <td class="auto-style8">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    &nbsp;</td>
                                <td class="auto-style8">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:Button ID="Button1SignUp" runat="server" BorderStyle="Solid" class="btn btn-info
                                        btn-block btn-lg" OnClick="Button1SignUp_Click" Text="Sign Up" Width="629px" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;</td>
                                <td class="auto-style8">&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

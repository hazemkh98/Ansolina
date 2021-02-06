<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PatientSignUp.aspx.cs" Inherits="Gradute_Ansolina.PatientSignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 26px;
        }
        .auto-style8 {
            width: 291px;
        }
        .auto-style9 {
            height: 26px;
            width: 291px;
        }
        .auto-style16 {
            width: 75px;
        }
        .auto-style17 {
            margin-left: 0;
        }
        .auto-style18 {
            width: 83px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <br><br>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-7 mx-auto ">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                 <img  id="imgview" width="250px" height="200px" src="img/signup.png" />
                                </center>    
                            </div>
                            </div>
        
   
    <table class="w3-bordered" >
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text="National ID" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:Label ID="Label6" runat="server" Text="Pateint Name" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="TextBoxNID" runat="server" CssClass="auto-style17" BorderColor="#2C896B" Width="300px" placeholder="Enter Your NID " BorderStyle="Solid"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBoxFullName" runat="server" BorderColor="#2C896B" Width="370px" placeholder="Full Name" BorderStyle="Solid" ></asp:TextBox>
            </td>
        </tr>
      <tr>
            <td colspan="2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxNID" ErrorMessage="Invalid NID" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxFullName" ErrorMessage="Please Enter Patient Full Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
       </tr>
        <tr>
            <td class="auto-style3" colspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxNID" ErrorMessage="Please Enter Patient National Id Number" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text=" Gender"></asp:Label>
            </td>
            <td class="auto-style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">
                <asp:RadioButton ID="RadioButtonMale" runat="server" BorderColor="#2C896B" GroupName="a" Text="Male" />
            </td>
            <td class="auto-style18">
                &nbsp;</td>
            <td class="auto-style8">
                <asp:RadioButton ID="RadioButtonFemale" runat="server" BorderColor="#2C896B" GroupName="a" Text="Female" />
            </td>
        </tr>
        <tr>
            <td class="auto-style16">
                &nbsp;</td>
            <td class="auto-style18">
                &nbsp;</td>
            <td class="auto-style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style3">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Mobile"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Email"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="TextBoxMobile" runat="server" BorderColor="#2C896B" Width="300px" placeholder="Enter You Phone Number" BorderStyle="Solid"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBoxEmail" runat="server" BorderColor="#2C896B" Width="370px" placeholder="Enter Your Email" BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBoxMobile" ErrorMessage="Mobile Number Must be 10 digits" ForeColor="Red" ValidationExpression="\d{10}" ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style8">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Please Enter Your Email" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBoxMobile" ErrorMessage="Please Enter Patient Mobile Number" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxMobile" ErrorMessage="Mobile Number Must start 07-7/8/9 " ForeColor="Red" ValidationExpression="07[789]\d{7}" ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Address"></asp:Label>
            </td>
            <td class="auto-style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:TextBox ID="TextBoxAddress" runat="server" BorderColor="#2C896B" TextMode="MultiLine" Width="628px" placeholder="Enter the full Addres
                    Ex: Jordan  Irbid streat.." BorderStyle="Solid" Height="63px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBoxAddress" ErrorMessage="Please Enter Patient Address" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Birth Day"></asp:Label>
            </td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:TextBox ID="TextBoxBirthDate" runat="server" BorderColor="#2C896B" TextMode="Date" Width="327px" placeholder="DD/MMM/YYYY" BorderStyle="Solid">DD-MON-YYYY</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBoxBirthDate" ErrorMessage="Please Enter Patient Birth Day" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="User Name"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Password"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="TextBoxloginName" placeholder="User Name" runat="server" BorderColor="#2C896B" Width="280px" BorderStyle="Solid"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBoxloginPassword" runat="server" BorderColor="#2C896B" TextMode="Password" Width="280px" placeholder="Enter Password" BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="labelLoginNameError" runat="server" ForeColor="#CC0000"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBoxloginPassword" ErrorMessage="Please Enter Patient Login Password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBoxloginName" ErrorMessage="Please Enter Patient Log Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="Button1SignUp" runat="server" Text="Sign Up" OnClick="Button1SignUp_Click" BorderStyle="Solid" class="btn btn-info
                                        btn-block btn-lg" Width="629px" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td class="auto-style8">
                &nbsp;</td>
        </tr>
    </table>
               
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>

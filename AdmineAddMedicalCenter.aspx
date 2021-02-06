<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSitePage.Master" AutoEventWireup="true" CodeBehind="AdmineAddMedicalCenter.aspx.cs" Inherits="Gradute_Ansolina.AdmineAddMedicalCenter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 395px;
        }
        .auto-style2 {
            width: 112px;
        }
        .auto-style3 {
            width: 112px;
            height: 26px;
        }
        .auto-style4 {
            width: 395px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Welcom "></asp:Label>
    <asp:Label ID="LabelFullname" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <table class="w-100">
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Center Name"></asp:Label>
            </td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBoxCentrName" runat="server" BorderColor="#2C896B" BorderStyle="Solid" Width="377px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxCentrName" ErrorMessage="Please Enter the Name of midical center" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Location"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBoxLocation" runat="server" BorderColor="#2C896B" BorderStyle="Solid" TextMode="MultiLine" Width="377px" Height="87px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxLocation" ErrorMessage="Please Enter the Location of midical center" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">
                <asp:Button ID="ButtonAdd" runat="server" BackColor="#2C896B" OnClick="ButtonAdd_Click" Text="Add" Width="388px" />
            </td>
            <td>
                <asp:Label ID="LabelMessage" runat="server" Font-Bold="True" ForeColor="#00CC00"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br>
    <br>
    <br>
    <br>
</asp:Content>

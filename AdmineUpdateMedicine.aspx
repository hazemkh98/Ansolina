<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSitePage.Master" AutoEventWireup="true" CodeBehind="AdmineUpdateMedicine.aspx.cs" Inherits="Gradute_Ansolina.AdmineUpdateMedicine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 26px;
        }

        .auto-style3 {
            margin-left: 3px;
        }

        .auto-style4 {
            width: 114px;
            margin-left: 22;
        }

        .auto-style5 {
            width: 114px;
            margin-left: 15px;
        }

        .auto-style6 {
            width: 68px;
            margin-left: 22;
        }

        .auto-style7 {
            width: 68px;
            margin-left: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Welcom"></asp:Label>
    <asp:Label ID="LabelFullname" runat="server" Text="Label"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br>
    <br>
    <br>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-7 mx-auto  ">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                 <h4>Medicine Ditals</h4>
                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <center>
                                <img width="150px" src="img/overdose-1030x429.jpg" />
                                </center>
                            </div>
                        </div>
                    </div>
                    <table class="w-100">
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style2">
                                <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="Black" Text="Medicine Code"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style2">
                                <asp:DropDownList ID="DropDownListMedcinename" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownListMedcinename_SelectedIndexChanged" Width="339px" CssClass="auto-style3">
                                </asp:DropDownList>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style2">
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Black" Text="Medicine Name"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style2">
                                <asp:TextBox ID="TextBoxMedicineName" runat="server" BorderColor="#2C896B" Width="250px" placeholder="Ex: Pandol" BorderStyle="Solid"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style2">
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Black" Text="MedicineDescription"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style2" colspan="2">
                                <asp:TextBox ID="TextBoxMedicineDescription" runat="server" BorderColor="#2C896B" Width="614px" placeholder="Ex: that used for hedick" BorderStyle="Solid" TextMode="MultiLine" Height="79px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style2">
                                <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Black" Text="Prodaction Date"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Black" Text="Expire Date"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style2">
                                <asp:TextBox ID="TextBoxPDate" runat="server" BorderColor="#2C896B" Width="250px" BorderStyle="Solid"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxEDate" runat="server" BorderColor="#2C896B" Width="250px" BorderStyle="Solid"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style4">
                                <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Black" Text="Medicine Type"></asp:Label>
                            </td>
                            <td class="auto-style5">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style2">
                                <asp:DropDownList ID="DropDownListMedcineType" runat="server" Width="254px" BackColor="#2C896B">
                                </asp:DropDownList>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style2">
                                <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="Black" Text="Medicine Count"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="Black" Text="Cost"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style2">
                                <asp:TextBox ID="TextBoxMedicineCount" runat="server" BorderColor="#2C896B" Width="250px" placeholder="Ex: 100" BorderStyle="Solid"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxCost" runat="server" BorderColor="#2C896B" Width="250px" placeholder="Ex:1.0 JD" BorderStyle="Solid"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style2">
                                <asp:Image ID="ImageMedcine" runat="server" Height="118px" Width="335px" />
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxImagePath" runat="server" Width="246px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style2">
                                <asp:FileUpload ID="FileUploadMImage" runat="server" BorderColor="#2C896B" BorderStyle="Solid" />
                            </td>
                            <td>
                                <asp:Button ID="ButtonUploade" runat="server" OnClick="ButtonUploade_Click" Text="Uploade" class="btn btn-info" Width="88px" BackColor="#555555" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>
                                <asp:Label ID="LabelError2" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style2">
                                <asp:Button ID="ButtonUpdate" runat="server" Text="Update" class="btn btn-success" BackColor="#2C896B" OnClick="ButtonUpdate_Click" />
                            </td>
                            <td>
                                <asp:Label ID="LabelError" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#00CC00"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>

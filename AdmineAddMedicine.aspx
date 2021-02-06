<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSitePage.Master" AutoEventWireup="true" CodeBehind="AdmineAddMedicine.aspx.cs" Inherits="Gradute_Ansolina.AdmineAddMedicine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 122px;
        }
        .auto-style2 {
            width: 277px;
        }
        .auto-style3 {
            width: 122px;
            height: 29px;
        }
        .auto-style4 {
            width: 277px;
            height: 29px;
        }
        .auto-style5 {
            height: 29px;
            width: 221px;
        }
        .auto-style6 {
            width: 221px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Welcom"></asp:Label>
    <asp:Label ID="LabelFullname" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <br>
    <br>
    <br>
    <div class="container" >
        <div class="row">
            <div class="col-md-7 ">
                <div class="card">
                 <div class="card-body">
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
                        <div class="row">
                            <div class="col">
                                <table class="w3-bordered"  >
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" Text="Medicine Code"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Black" Text="Medicine Name"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBoxMedicineCode" runat="server" BorderColor="#2C896B" Width="250px" placeholder="Ex: 124..." BorderStyle="Solid"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBoxMedicineName" runat="server" BorderColor="#2C896B" Width="250px" placeholder="Ex: Pandol" BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxMedicineCode" ErrorMessage="Enter The Medcine Code" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxMedicineName" ErrorMessage="Enter The Medcine Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Black" Text="MedicineDescription"></asp:Label>
            </td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td colspan="2">
                <asp:TextBox ID="TextBoxMedicineDescription" runat="server" BorderColor="#2C896B" Width="584px" placeholder="Ex: that used for hedick" BorderStyle="Solid" TextMode="MultiLine" CssClass="mt-0" Height="86px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Black" Text="Prodaction Date"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Black" Text="Expire Date"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBoxPDate" runat="server" BorderColor="#2C896B" Width="250px" BorderStyle="Solid" TextMode="Date" ></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBoxEDate" runat="server" BorderColor="#2C896B" Width="250px" BorderStyle="Solid" TextMode="Date" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxPDate" ErrorMessage="Enter The Medcine Prodtion date" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxEDate" ErrorMessage="Enter The Medcine Expire Date" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Black" Text="Medicine Type"></asp:Label>
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:DropDownList ID="DropDownListMedcineType" runat="server" Width="254px" BackColor="#2C896B">
                </asp:DropDownList>
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DropDownListMedcineType" ErrorMessage="Enter The Medcine Safe or Banned" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="Black" Text="Cost"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="Black" Text="Medicine Count"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBoxCost" runat="server" BorderColor="#2C896B" Width="250px" placeholder="Ex:1.0 JD" BorderStyle="Solid"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBoxMedicineCount" runat="server" BorderColor="#2C896B" Width="250px" placeholder="Ex: 100" BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxCost" ErrorMessage="Enter The Medcine Cost" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxMedicineCount" ErrorMessage="Enter The Medcine Count" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Black" Text="Medicine Image"></asp:Label>
            </td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Image ID="ImageMedcine" runat="server" Height="118px" Width="335px" />
            </td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:FileUpload ID="FileUploadMImage" runat="server" BorderColor="#2C896B" BorderStyle="Solid" Width="299px" />
                </td>
            <td class="auto-style6">
                <asp:Button ID="ButtonUploade" runat="server" OnClick="ButtonUploade_Click" Text="Uploade" class="btn btn-info" Width="88px" BackColor="#555555" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">
                <br />
            </td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="ButtonADD" runat="server" Text="Add Medcine" OnClick="ButtonADD_Click" class="btn btn-success" BackColor="#2C896B" />
            </td>
            <td class="auto-style6">
                <asp:Label ID="LabelError" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#00CC00"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">
                <asp:Label ID="LabelError2" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
    </table>

                  
               </div> 
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AnsolinaDbConnectionString %>" SelectCommand="SELECT [MedicineCode], [MedicineName], [MedicineDescription] FROM [Medicine]"></asp:SqlDataSource>
                <asp:EntityDataSource ID="EntityDataSource1" runat="server">
                </asp:EntityDataSource>
                </div>
                                </div>
                            </div>
                     </div>
              </div>
                    <div class="col-md-5 ">
                   <div class="card-body">

                        <div class="row">
                            <div class="col">
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MedicineCode" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="MedicineCode" HeaderText="MedicineCode" ReadOnly="True" SortExpression="MedicineCode" />
                        <asp:BoundField DataField="MedicineName" HeaderText="MedicineName" SortExpression="MedicineName" />
                        <asp:BoundField DataField="MedicineType" HeaderText="MedicineType" SortExpression="MedicineType" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                                </div>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AnsolinaDbConnectionString %>" SelectCommand="SELECT [MedicineCode], [MedicineName], [MedicineType] FROM [Medicine]"></asp:SqlDataSource>
                
                            </div>
                       </div>
            </div>
            </div>
    </div>
</asp:Content>

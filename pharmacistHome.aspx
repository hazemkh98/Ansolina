<%@ Page Title="" Language="C#" MasterPageFile="~/pharmacist.Master" AutoEventWireup="true" CodeBehind="pharmacistHome.aspx.cs" Inherits="Gradute_Ansolina.pharmacistHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br>
<br>
<br>
<div class="container">
    <div class="row">
        <div class="card">
            <div class="card-body">
                <div class="card-body">
                    <center>
                        <h1>
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Welcom"></asp:Label>
                            <asp:Label ID="LabelFullname" runat="server"></asp:Label>
                        </h1>
                    </center>
                    <div class="row">
                        <div class="col-md-8">
                            <div class="row">
                                <div class="col">
                                    <img width="250px" hig src="img/pharmacy.png" />
                                </div>
                            </div>
                            <p>
                                    Hello 
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                                   You now enjoy all the powers within the website. The process of adding medications includes monitoring customers, adding health centers and much, much more

we  hope that the task will be accomplished completely without intruding on users' data without any reason or other things 
                                </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>

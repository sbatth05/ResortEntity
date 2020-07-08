<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ResortEntity.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <div class="container">
        <div class="row">
            <div class="from-group">
                <label>Enter User Name </label>
                <asp:TextBox ID="LoginID" runat="server" Class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="LoginID" runat="server" ErrorMessage="Fill User Name to Login"></asp:RequiredFieldValidator>   
            </div>

            <div class="from-group">
                <label>Enter Password </label>
                <asp:TextBox ID="LoginPassword" runat="server" TextMode="Password" Class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="LoginPassword" runat="server" ErrorMessage="Fill User Name to Login"></asp:RequiredFieldValidator>   
            </div>

            <div class="from-group">
                <asp:Button ID="BtnLogin" runat="server" Text="Click Here to Login " Class="btn btn-primary" OnClick="BtnLogin_Click" />
                <h1 id="details" runat="server"> </h1>
            </div>
        </div>

    </div>

</asp:Content>

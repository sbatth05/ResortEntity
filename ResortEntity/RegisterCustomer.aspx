<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterCustomer.aspx.cs" Inherits="ResortEntity.RegisterCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    <br />
    <div class="container">
        <div class="row">
            <div class="from-group">
                <label>Enter  Name </label>
                <asp:TextBox ID="txtName" runat="server" Class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtName" runat="server" ErrorMessage="Fill Your Name"></asp:RequiredFieldValidator>   
            </div>

            <div class="from-group">
                <label>Enter Contact </label>
                <asp:TextBox ID="txtContact" runat="server" TextMode="Number" Class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtContact" runat="server" ErrorMessage="Fill Your Contact"></asp:RequiredFieldValidator>   
            </div>

            <div class="from-group">
                <label>Room No. </label>
                <asp:TextBox ID="txtRoom" runat="server" TextMode="Number" Class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtRoom" runat="server" ErrorMessage="Fill Room No "></asp:RequiredFieldValidator>   
            </div>

            <div class="from-group">
                <label>No Of Person. </label>
                <asp:TextBox ID="txtMember" runat="server" TextMode="Number" Class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtMember" runat="server" ErrorMessage="Fill No of Person "></asp:RequiredFieldValidator>   
            </div>


            <div class="from-group">
                <label>Check-In Date  </label>
                <asp:TextBox ID="txtDate" runat="server" PlaceHolder="mm/dd/yyyy" Class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtDate" runat="server" ErrorMessage="Fill Date "></asp:RequiredFieldValidator>   
            </div>


            







            <div class="from-group">
                <asp:Button ID="BtnLogin" runat="server" Text="Register Customer " Class="btn btn-primary" OnClick="BtnLogin_Click" />
                <h1 id="details" runat="server">  </h1>

           </div>

            


        </div>

    </div>
</asp:Content>

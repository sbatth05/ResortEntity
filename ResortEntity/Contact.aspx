<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ResortEntity.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  


    
    <br />
    <div class="container">
        <div class="row">
            <div class="from-group">
                <label>Enter Name </label>
                <asp:TextBox ID="txtName" runat="server" Class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtName" runat="server" ErrorMessage="Fill Your Name"></asp:RequiredFieldValidator>   
            </div>

            <div class="from-group">
                <label>Enter Email</label>
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtEmail" runat="server" ErrorMessage="Fill Email-ID"></asp:RequiredFieldValidator>   
            </div>

            <div class="from-group">
                <label>Enter Contact</label>
                <asp:TextBox ID="txtContact" runat="server" TextMode="Number" Class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtContact" runat="server" ErrorMessage="Fill Contact No "></asp:RequiredFieldValidator>   
            </div>


            <div class="from-group">
                <label>Enter Message</label>
                <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtMessage" runat="server" ErrorMessage="Fill Message"></asp:RequiredFieldValidator>   
            </div>





            <div class="from-group">
                <asp:Button ID="BtnLogin" runat="server" Text="Click Here to Send Message " Class="btn btn-primary" OnClick="BtnLogin_Click" />
                <h1 id="details" runat="server"> </h1> 
            </div>

            


        </div>

    </div>
</asp:Content>

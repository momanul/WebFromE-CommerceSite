<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Buy.com.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div class="form-horizontal container">
        <div>
            <br />
            <br />
            <br />
            <div class="form-group ">
                <label class="col-md-2">User Name:</label>
                <div class="col-md-5">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group ">
                <label class="col-md-2">Password:</label>
                <div class="col-md-5">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group  ">
                <div class="col-md-offset-2 col-md-2">
                    <asp:Button ID="btnSignUp" runat="server" Text="Sign In" CssClass="btn btn-primary" style="width: 120px;"/>

                </div>
                <div class="">
                    <a href="SignUp.aspx" class="btn btn-primary">Register Now</a>
                </div>
            </div>
        </div>
    </div>
        <br />
    <br />
    <br />
    <br />
    <br />
    <br />
      <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

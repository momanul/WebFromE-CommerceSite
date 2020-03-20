<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Buy.com.Admin.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="form-horizontal container">
        <div>
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" ForeColor="Red" Text=""></asp:Label>
             <br />
            <br />
            <div class="form-group ">
                <label class="col-md-2">User Name:</label>
                <div class="col-md-5">
                    <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group ">
                <label class="col-md-2">Password:</label>
                <div class="col-md-5">
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            
            <div class="form-group ">
                <label class="col-md-2">Email:</label>
                <div class="col-md-5">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group  ">
                <div class="col-md-offset-2 col-md-2">
                    <asp:Button ID="btnSignIn" runat="server" Text="Sign Up" CssClass="btn btn-primary" OnClick="btnSignIn_Click" Height="30px" Width="111px"/>
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

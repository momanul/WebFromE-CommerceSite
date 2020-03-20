<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="IDB.WebForm.PJ1.Admin.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-horizontal container">
        <div>
            <br />
            <br />
            <br />
            <h3><b>Please enter following user name and password to login</b></h3>
            <h4 style="color:#11B57C;"><b>If olgin failed please open with google chrome</b></h4>
            <h4>User Name: Momanul</h4>
            <h4>Password:  momanul1234</h4>
            <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <div class="form-group ">
                <label class="col-md-2">User Name:</label>
                <div class="col-md-5">
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group ">
                <label class="col-md-2">Password:</label>
                <div class="col-md-5">
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </div>
            </div>
            <div class="form-group  ">
                <div class="col-md-offset-2 col-md-2">
                    <asp:Button ID="btnSignUp" runat="server" Text="Sign In" style="width: 150px;" CssClass="btn btn-primary" OnClick="btnSignUp_Click1"/>

                </div>
                <div class="col-md-2" >
                    <a href="../Registration/SignUp.aspx" class="btn btn-primary" style="width: 150px;">Register Now</a>
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

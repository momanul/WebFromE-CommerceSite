<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="AdminHomePage.aspx.cs" Inherits="Buy.com.Admin.AdminHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <div class="container" id="myNavbar">
        <ul class="nav">
            <li><h3><a href="Categories.aspx" class="btn btn-primary">Work With Category Table</a></h3></li>
            <li><h3><a href="Products.aspx" class="btn btn-primary">Work With Product Table</a></h3></li>
            <li><h3><a href="ProductsImages.aspx" class="btn btn-primary">Work With Product Image Table</a></h3></li>            
        </ul>
    </div>
    <br />
    <br />
    <br />
</asp:Content>

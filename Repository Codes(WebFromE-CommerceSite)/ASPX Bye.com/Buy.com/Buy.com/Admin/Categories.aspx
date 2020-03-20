<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="Bye.com_EcomerceSite.Admin.Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div runat="server">
        <div class="form-horizontal container" runat="server">
            <h3>Please Fill-Up This Form To Add A New Category</h3>
            <hr />
            <br />
            <div class="form-group">
                <label for="txtCategoryID" class="col-sm-2 control-label"><b>Category ID:</b></label>
                <div class="col-sm-5" runat="server">
                    <asp:TextBox ID="txtCategoryID" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="txtCategoryName" class="col-sm-2 control-label"><b>Category Name:</b></label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtCategoryName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="txtDisplayOrder" class="col-sm-2 control-label"><b>Display Order:</b></label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtDisplayOrder" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-12">
                    <label for="chkIsActive" class="col-sm-2 control-label"></label>
                    <div class="col-sm-5">
                        <asp:CheckBox ID="chkIsActive" runat="server" /><b>Is Active</b>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-5">
                    <asp:Button ID="btnAddCategory" runat="server" Text="Add New Category" OnClick="btnAddCategory_Click" />
                </div>
            </div>
        </div>
        <div class="container top-margin">
            <asp:GridView class="table table-condensed table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="CategoriesDataSource">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="ParentCatID" HeaderText="ParentCatID" SortExpression="ParentCatID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="DisplayOrder" HeaderText="DisplayOrder" SortExpression="DisplayOrder" />
                    <asp:CheckBoxField DataField="IsActive" HeaderText="IsActive" SortExpression="IsActive" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="CategoriesDataSource" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\ProductDb.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" DeleteCommand="DELETE FROM [Category] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Category] ([ParentCatID], [Name], [DisplayOrder], [IsActive]) VALUES (@ParentCatID, @Name, @DisplayOrder, @IsActive)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Category]" UpdateCommand="UPDATE [Category] SET [ParentCatID] = @ParentCatID, [Name] = @Name, [DisplayOrder] = @DisplayOrder, [IsActive] = @IsActive WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int64" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ParentCatID" Type="Int64" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="DisplayOrder" Type="Int32" />
                    <asp:Parameter Name="IsActive" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ParentCatID" Type="Int64" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="DisplayOrder" Type="Int32" />
                    <asp:Parameter Name="IsActive" Type="Boolean" />
                    <asp:Parameter Name="ID" Type="Int64" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

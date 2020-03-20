<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Buy.com.Admin.Products" %>

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
                    <asp:DropDownList CssClass="form-control" ID="txtCategoryID" runat="server" DataSourceID="CategoryDropDownList" DataTextField="Name" DataValueField="ID"></asp:DropDownList>
                    <asp:SqlDataSource ID="CategoryDropDownList" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\ProductDb.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [ID], [Name] FROM [Category]"></asp:SqlDataSource>
                </div>
            </div>
            <div class="form-group">
                <label for="txtBrandName" class="col-sm-2 control-label"><b>Brand Name:</b></label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtBrandName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="txtProductName" class="col-sm-2 control-label"><b>Product Name:</b></label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtProductName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="txtProductDetails" class="col-sm-2 control-label"><b>Product Details:</b></label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtProductDetails" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="txtPrice" class="col-sm-2 control-label"><b>Product Price:</b></label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="txtStockQuentity" class="col-sm-2 control-label"><b>Stock Quentity:</b></label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtStockQuentity" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="uploadProductPicture" class="col-sm-2 control-label"><b>Product Pictures:</b></label>
                <div class="col-sm-5">
                    <asp:FileUpload ID="uploadProductPicture" runat="server" CssClass="form-control" AllowMultiple="True" />
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-12">
                    <label for="chkIsFavourite" class="col-sm-2 control-label"></label>
                    <div class="col-sm-5">
                        <asp:CheckBox ID="chkIsFavourite" runat="server" /><b>Is Favourite</b>
                    </div>
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
                <label for="uploadActivePicture" class="col-sm-2 control-label"><b>Active Pictures:</b></label>
                <div class="col-sm-5">
                    <asp:FileUpload ID="uploadActivePicture" runat="server" CssClass="form-control" AllowMultiple="True" />
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-5">
                    <asp:Button ID="btnAddCategory" runat="server" Text="Add New Product" OnClick="btnAddCategory_Click" />
                </div>
            </div>
        </div>
        <div class="container">
            <asp:GridView CssClass="table table-condensed" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="ProductsDataSource">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
                    <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="StockQuantity" HeaderText="StockQuantity" SortExpression="StockQuantity" />
                    <asp:CheckBoxField DataField="IsFavorite" HeaderText="IsFavorite" SortExpression="IsFavorite" />
                    <asp:CheckBoxField DataField="IsActive" HeaderText="IsActive" SortExpression="IsActive" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="ProductsDataSource" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\ProductDb.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" DeleteCommand="DELETE FROM [Product] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Product] ([CategoryID], [Brand], [Name], [Details], [Price], [StockQuantity], [IsFavorite], [IsActive]) VALUES (@CategoryID, @Brand, @Name, @Details, @Price, @StockQuantity, @IsFavorite, @IsActive)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [CategoryID] = @CategoryID, [Brand] = @Brand, [Name] = @Name, [Details] = @Details, [Price] = @Price, [StockQuantity] = @StockQuantity, [IsFavorite] = @IsFavorite, [IsActive] = @IsActive WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int64" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CategoryID" Type="Int64" />
                    <asp:Parameter Name="Brand" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Details" Type="String" />
                    <asp:Parameter Name="Price" Type="Double" />
                    <asp:Parameter Name="StockQuantity" Type="Double" />
                    <asp:Parameter Name="IsFavorite" Type="Boolean" />
                    <asp:Parameter Name="IsActive" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CategoryID" Type="Int64" />
                    <asp:Parameter Name="Brand" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Details" Type="String" />
                    <asp:Parameter Name="Price" Type="Double" />
                    <asp:Parameter Name="StockQuantity" Type="Double" />
                    <asp:Parameter Name="IsFavorite" Type="Boolean" />
                    <asp:Parameter Name="IsActive" Type="Boolean" />
                    <asp:Parameter Name="ID" Type="Int64" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

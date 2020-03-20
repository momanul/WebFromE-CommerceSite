<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="ProductsImages.aspx.cs" Inherits="Buy.com.Admin.ProductsImages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br />
        <br />
        <asp:GridView class="table table-condensed" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="ProductImgDataSource">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
                <asp:BoundField DataField="ImgPath" HeaderText="ImgPath" SortExpression="ImgPath" />
                <asp:BoundField DataField="ThumbnailPath" HeaderText="ThumbnailPath" SortExpression="ThumbnailPath" />
                <asp:BoundField DataField="DisplayOrder" HeaderText="DisplayOrder" SortExpression="DisplayOrder" />
                <asp:CheckBoxField DataField="IsDefaultImg" HeaderText="IsDefaultImg" SortExpression="IsDefaultImg" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="ProductImgDataSource" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\ProductDb.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" DeleteCommand="DELETE FROM [ProductImg] WHERE [ID] = @ID" InsertCommand="INSERT INTO [ProductImg] ([ProductID], [ImgPath], [ThumbnailPath], [DisplayOrder], [IsDefaultImg]) VALUES (@ProductID, @ImgPath, @ThumbnailPath, @DisplayOrder, @IsDefaultImg)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [ProductImg]" UpdateCommand="UPDATE [ProductImg] SET [ProductID] = @ProductID, [ImgPath] = @ImgPath, [ThumbnailPath] = @ThumbnailPath, [DisplayOrder] = @DisplayOrder, [IsDefaultImg] = @IsDefaultImg WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int64" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductID" Type="Int64" />
                <asp:Parameter Name="ImgPath" Type="String" />
                <asp:Parameter Name="ThumbnailPath" Type="String" />
                <asp:Parameter Name="DisplayOrder" Type="Int32" />
                <asp:Parameter Name="IsDefaultImg" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductID" Type="Int64" />
                <asp:Parameter Name="ImgPath" Type="String" />
                <asp:Parameter Name="ThumbnailPath" Type="String" />
                <asp:Parameter Name="DisplayOrder" Type="Int32" />
                <asp:Parameter Name="IsDefaultImg" Type="Boolean" />
                <asp:Parameter Name="ID" Type="Int64" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchResult.aspx.cs" Inherits="Buy.com.SearchResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .header-text {
            position: absolute;
            left: 290px;
            top: -10px;
        }

        #header-text {
            position: absolute;
            top: 120px;
        }

        .thumbnail a img {
            height: 250px;
        }

            .thumbnail a img:hover {
                opacity: 0.5;
                transition: 1s ease;
            }
    </style>
    <div class="container">
        <div>
            <h3>Your Search Result For <b><%=Request.QueryString["SearchBoxValue"]%>.... </b></h3>
            <hr />
            <div class="row">
                <asp:Repeater DataMember="" ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <a href="ProductDetails.aspx?ProductID=<%#Eval("ID")%>">
                            <div class="col-md-3">
                                <div class="thumbnail">
                                    <h5 class="price-field-style">TK:<asp:Label CssClass="lbl" Text='<%#Eval("Price")%>' runat="server"></asp:Label>
                                    </h5>
                                    <asp:Image class="img" Style="align-self: center;" ImageUrl='<%#Eval("ImgPath")%>' runat="server" />
                                    <div class="caption">
                                        <h4>
                                            <asp:Label CssClass="lbl" Text='<%#Eval("Name")%>' runat="server"></asp:Label>
                                        </h4>
                                        <a href="ProductDetails.aspx?ProductID=<%#Eval("ID")%>">
                                            <asp:Label Style="text-align: center;" CssClass="lbl" Text='<%#string.Format("{0}{1}", Eval("Details").ToString().Substring(0, 50), "...")%>' runat="server"></asp:Label>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </ItemTemplate>
                </asp:Repeater>
                <%--<asp:SqlDataSource ID="ProductDataSourceForRepeater" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\ProductDb.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" 
        SelectCommand="SELECT Product.*, ProductImg.* FROM Product INNER JOIN ProductImg ON Product.ID = ProductImg.ProductID Where Product.Name = 'Dress' and
 DisplayOrder = (select min(DisplayOrder) as d from ProductImg Where CategoryID = 2)"></asp:SqlDataSource>--%>
            </div>
        </div>
    </div>
</asp:Content>

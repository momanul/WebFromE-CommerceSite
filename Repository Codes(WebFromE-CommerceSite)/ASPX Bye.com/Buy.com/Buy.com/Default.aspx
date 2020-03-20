<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Buy.com._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="Scripts/bootstrap.js"></script>
    <link href="Content/MyCssFile/defaultPaga.css" rel="stylesheet" />
    <style>
        .thumbnail a img {
            height: 250px;
        }
        .thumbnail a img:hover{
            opacity: 0.5;
            transition: 1s ease;
        }
    </style>
    <div class="container">
        <div class="row">
            <div class="slider">
                <div class="slide_viewer">
                    <div class="slide_group">
                        <div class="slide">
                            <div class="slider-info-btn">
                                <h1>You can buy any product from anywhere</h1>
                                <button class="slide-btn" type="button">Shop Now</button>
                            </div>
                            <div>
                                <img src="Photos/sliderImage/compras_lg.gif" />
                            </div>
                        </div>
                        <div class="slide">
                            <div class="slider-info-btn" style="color: #00CCCD">
                                <h1>Your every need is here</h1>
                                <h5>Don't forget to see our product</h5>
                                <button class="slide-btn" type="button">Read More</button>
                            </div>
                            <div>
                                <img src="Photos/sliderImage/women-shopping.jpg" />
                            </div>
                        </div>
                        <div class="slide">
                            <img src="Photos/sliderImage/shopping-placeholder.jpg" />
                        </div>
                        <div class="slide">
                            <img src="Photos/sliderImage/shopping03.jpg" />
                        </div>
                    </div>
                </div>
                <div id="header-text">
                    <a href="Admin/AdminHomePage.aspx"><marquee behavior="scroll" direction="left"><h1>PLEASE <strong style="color:#11B57C;">CLICK HERE </strong>OR ON THE <strong style="color:#11B57C;">ADMIN</strong> BUTTON ON THE TOP FOR <strong style="color:#11B57C;">CRUD OPERATION</strong></h1></marquee></a>
                </div>
            </div>
            <div class="slide_buttons">
            </div>
            <div class="directional_nav">
                <div class="previous_btn" title="Previous">
                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="65px" height="65px" viewBox="-11 -11.5 65 66">
                        <g>
                            <g>
                                <path fill="#474544" d="M-10.5,22.118C-10.5,4.132,4.133-10.5,22.118-10.5S54.736,4.132,54.736,22.118
			c0,17.985-14.633,32.618-32.618,32.618S-10.5,40.103-10.5,22.118z M-8.288,22.118c0,16.766,13.639,30.406,30.406,30.406 c16.765,0,30.405-13.641,30.405-30.406c0-16.766-13.641-30.406-30.405-30.406C5.35-8.288-8.288,5.352-8.288,22.118z" />
                                <path fill="#474544" d="M25.43,33.243L14.628,22.429c-0.433-0.432-0.433-1.132,0-1.564L25.43,10.051c0.432-0.432,1.132-0.432,1.563,0	c0.431,0.431,0.431,1.132,0,1.564L16.972,21.647l10.021,10.035c0.432,0.433,0.432,1.134,0,1.564	c-0.215,0.218-0.498,0.323-0.78,0.323C25.929,33.569,25.646,33.464,25.43,33.243z" />
                            </g>
                        </g>
                    </svg>
                </div>
                <div class="next_btn" title="Next">
                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="65px" height="65px" viewBox="-11 -11.5 65 66">
                        <g>
                            <g>
                                <path fill="#474544" d="M22.118,54.736C4.132,54.736-10.5,40.103-10.5,22.118C-10.5,4.132,4.132-10.5,22.118-10.5	c17.985,0,32.618,14.632,32.618,32.618C54.736,40.103,40.103,54.736,22.118,54.736z M22.118-8.288	c-16.765,0-30.406,13.64-30.406,30.406c0,16.766,13.641,30.406,30.406,30.406c16.768,0,30.406-13.641,30.406-30.406 C52.524,5.352,38.885-8.288,22.118-8.288z" />
                                <path fill="#474544" d="M18.022,33.569c 0.282,0-0.566-0.105-0.781-0.323c-0.432-0.431-0.432-1.132,0-1.564l10.022-10.035 			L17.241,11.615c 0.431-0.432-0.431-1.133,0-1.564c0.432-0.432,1.132-0.432,1.564,0l10.803,10.814c0.433,0.432,0.433,1.132,0,1.564 L18.805,33.243C18.59,33.464,18.306,33.569,18.022,33.569z" />
                            </g>
                        </g>
                    </svg>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="thumbnail">
            <h3>Popular Babies Products</h3>
            <div class="row">
                <asp:Repeater DataMember="" ID="Repeater1" runat="server" DataSourceID="ProductDataSourceForRepeater">
                    <ItemTemplate>
                        <div class="col-md-3 col-sm-4 col-xs-6">
                            <div class="thumbnail">
                                <div>
                                    <h5 class="price-field-style">TK:<asp:Label CssClass="lbl" Text='<%#Eval("Price")%>' runat="server"></asp:Label>
                                    </h5>
                                    <div id="d" class="lable" style="width: 50px;">
                                        <h5 class="new-logo">new</h5>
                                    </div>
                                </div>
                                <a href="ProductDetails.aspx?ProductID=<%# Eval("ID")%>">
                                    <asp:Image class="img" Style="align-self: center;" ImageUrl='<%#Eval("ImgPath")%>' runat="server" />
                                    <div class="caption">
                                        <h4>
                                            <asp:Label CssClass="lbl" Text='<%#Eval("Name")%>' runat="server"></asp:Label>
                                        </h4>
                                        <a href="ProductDetails.aspx?ProductID=<%# Eval("ID")%>">
                                            <asp:Label Style="text-align: center;" CssClass="lbl" Text='<%#string.Format("{0}{1}", Eval("Details").ToString().Substring(0, 50), "...")%>' runat="server"></asp:Label>
                                        </a>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        <div class="thumbnail">
            <h3>Popular Shirt</h3>
            <div class="row">
                <asp:Repeater DataMember="" ID="Repeater2" runat="server" DataSourceID="shirtDataSource">
                    <ItemTemplate>
                        <div class="col-md-3 col-sm-4 col-xs-6">
                            <div class="thumbnail">
                                <div>
                                    <h5 class="price-field-style">TK:<asp:Label CssClass="lbl" Text='<%#Eval("Price")%>' runat="server"></asp:Label>
                                    </h5>
                                    <div id="d" class="lable" style="width: 50px;">
                                        <h5 class="new-logo">new</h5>
                                    </div>
                                </div>
                                <a href="ProductDetails.aspx?ProductID=<%# Eval("ID")%>">
                                    <asp:Image class="img" Style="align-self: center;" ImageUrl='<%#Eval("ImgPath")%>' runat="server" />
                                    <div class="caption">
                                        <h4>
                                            <asp:Label CssClass="lbl" Text='<%#Eval("Name")%>' runat="server"></asp:Label>
                                        </h4>
                                        <a href="ProductDetails.aspx?ProductID=<%# Eval("ID")%>">
                                            <asp:Label Style="text-align: center;" CssClass="lbl" Text='<%#string.Format("{0}{1}", Eval("Details").ToString().Substring(0, 50), "...")%>' runat="server"></asp:Label>
                                        </a>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        <div class="thumbnail">
            <h3>Popular Shoe</h3>
            <div class="row">
                <asp:Repeater DataMember="" ID="Repeater3" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <div class="col-md-3 col-sm-4 col-xs-6">
                            <div class="thumbnail">
                                <div>
                                    <h5 class="price-field-style">TK:<asp:Label CssClass="lbl" Text='<%#Eval("Price")%>' runat="server"></asp:Label>
                                    </h5>
                                    <div id="d" class="lable" style="width: 50px;">
                                        <h5 class="new-logo">new</h5>
                                    </div>
                                </div>
                                <a href="ProductDetails.aspx?ProductID=<%# Eval("ID")%>">
                                    <asp:Image class="img" Style="align-self: center;" ImageUrl='<%#Eval("ImgPath")%>' runat="server" />
                                    <div class="caption">
                                        <h4>
                                            <asp:Label CssClass="lbl" Text='<%#Eval("Name")%>' runat="server"></asp:Label>
                                        </h4>
                                        <a href="ProductDetails.aspx?ProductID=<%# Eval("ID")%>">
                                            <asp:Label Style="text-align: center;" CssClass="lbl" Text='<%#string.Format("{0}{1}", Eval("Details").ToString().Substring(0, 50), "...")%>' runat="server"></asp:Label>
                                        </a>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="thumbnail">
                <section id="sectionPictureConrainer">
                    <div id="footerButtonDiv">
                        <h1>Shoap With 100% Confidence on My Website</h1>
                        <h5>Check Our Products And Take it For Your Betterment</h5>
                        <h5>We Will Always Serve for Mankind</h5>
                        <button class="shopnow">Shop Now</button>
                    </div>
                </section>
            </div>
        </div>
    </div>
    <asp:SqlDataSource ID="ProductDataSourceForRepeater" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\ProductDb.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient"
        SelectCommand="SELECT Product.*, ProductImg.* FROM Product INNER JOIN ProductImg ON Product.ID = ProductImg.ProductID Where DisplayOrder =
(select min(DisplayOrder) as d from ProductImg Where CategoryID = 2)"></asp:SqlDataSource>
    <asp:SqlDataSource ID="shirtDataSource" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\ProductDb.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient"
        SelectCommand="SELECT Product.*, ProductImg.* FROM Product INNER JOIN ProductImg ON Product.ID = ProductImg.ProductID Where DisplayOrder =
(select min(DisplayOrder) as d from ProductImg Where CategoryID = 1)"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\ProductDb.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient"
        SelectCommand="SELECT Product.*, ProductImg.* FROM Product INNER JOIN ProductImg ON Product.ID = ProductImg.ProductID Where DisplayOrder =
(select min(DisplayOrder) as d from ProductImg Where CategoryID = 3)"></asp:SqlDataSource>
</asp:Content>

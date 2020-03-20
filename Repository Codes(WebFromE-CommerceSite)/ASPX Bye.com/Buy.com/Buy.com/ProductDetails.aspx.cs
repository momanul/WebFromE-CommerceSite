using Buy.com.Data_Access_Layer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Buy.com
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        ProductDbContext productDbContext = new ProductDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            long productID = Convert.ToInt64(Request.QueryString["ProductID"]);

            if (productID != 0)
            {
                var query = (from a in productDbContext.Products
                             join b in productDbContext.ProductImgs
                             on a.ID equals b.ProductID
                             select new
                             {
                                 productID = a.ID,
                                 productBrand = a.Brand,
                                 productStockQuantity = a.StockQuantity,
                                 productCategoryID = a.CategoryID,
                                 productImg = b.ImgPath,
                                 productDetails = a.Details,
                                 productName = a.Name,
                                 productPrice = a.Price
                             }).Where(a => a.productID == productID).ToList().Take(1);
                var query2 = (from a in productDbContext.Products
                             join b in productDbContext.ProductImgs
                             on a.ID equals b.ProductID
                             select new
                             {
                                 productID = a.ID,
                                 productBrand = a.Brand,
                                 productStockQuantity = a.StockQuantity,
                                 productCategoryID = a.CategoryID,
                                 productImg = b.ImgPath,
                                 productDetails = a.Details,
                                 productName = a.Name,
                                 productPrice = a.Price
                             }).Where(a => a.productID == productID).ToList();
                Repeater1.DataSource = query;
                Repeater1.DataBind();
                Repeater2.DataSource = query2;
                Repeater2.DataBind();
            }
        }
    }
}
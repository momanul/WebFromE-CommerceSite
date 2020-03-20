using Buy.com.Data_Access_Layer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Buy.com
{
    public partial class SearchResult : System.Web.UI.Page
    {
        ProductDbContext productDbContext = new ProductDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Class1> list = new List<Class1>();
            long dropDownValue = Convert.ToInt64(Request.QueryString["DropDownValue"]);
            string searchBoxValue = Request.QueryString["SearchBoxValue"];

            if (dropDownValue != -1 && searchBoxValue != "")
            {
                var query = (from a in productDbContext.Products
                             join b in productDbContext.ProductImgs
                             on a.ID equals b.ProductID
                             select new
                             {
                                 productID = a.ID,
                                 productCategoryID = a.CategoryID,
                                 productImg = b.ImgPath,
                                 productDetails = a.Details,
                                 productName = a.Name,
                                 displayOrder = b.DisplayOrder,
                                 productPrice = a.Price
                             }).Where(a => a.productCategoryID == dropDownValue & a.productName.StartsWith(searchBoxValue)).ToList();
                if(query.Count == 0)
                {
                    query = (from a in productDbContext.Products
                             join b in productDbContext.ProductImgs
                             on a.ID equals b.ProductID
                             select new
                             {
                                 productID = a.ID,
                                 productCategoryID = a.CategoryID,
                                 productImg = b.ImgPath,
                                 productDetails = a.Details,
                                 productName = a.Name,
                                 displayOrder = b.DisplayOrder,
                                 productPrice = a.Price
                             }).Where(a => a.productCategoryID == dropDownValue & a.productName.Contains(searchBoxValue)).ToList();
                }

                foreach(var i in query)
                {
                    if(i.displayOrder == 1)
                    {
                        Class1 class1 = new Class1();
                        class1.ID = i.productID;
                        class1.DisplayOrder = Convert.ToInt32(i.displayOrder);
                        class1.Details = i.productDetails;
                        class1.ImgPath = i.productImg;
                        class1.Name = i.productName;
                        class1.Price = Convert.ToDouble(i.productPrice);

                        list.Add(class1);
                    }
                }
                Repeater1.DataSource = list;
                Repeater1.DataBind();
            }
            else if (dropDownValue == -1 && searchBoxValue != "")
            {
                var query = (from a in productDbContext.Products
                             join b in productDbContext.ProductImgs
                             on a.ID equals b.ProductID
                             select new
                             {
                                 productID = a.ID,
                                 productCategoryID = a.CategoryID,
                                 productImg = b.ImgPath,
                                 productDetails = a.Details,
                                 productName = a.Name,
                                 displayOrder = b.DisplayOrder,
                                 productPrice = a.Price
                             }).Where(a => a.productName.StartsWith(searchBoxValue)).ToList();
                if (query == null)
                {
                    query = (from a in productDbContext.Products
                             join b in productDbContext.ProductImgs
                             on a.ID equals b.ProductID
                             select new
                             {
                                 productID = a.ID,
                                 productCategoryID = a.CategoryID,
                                 productImg = b.ImgPath,
                                 productDetails = a.Details,
                                 productName = a.Name,
                                 displayOrder = b.DisplayOrder,
                                 productPrice = a.Price
                             }).Where(a => a.productName.Contains(searchBoxValue)).ToList();
                }
                foreach (var i in query)
                {
                    if (i.displayOrder == 1)
                    {
                        Class1 class1 = new Class1();
                        class1.ID = i.productID;
                        class1.DisplayOrder = Convert.ToInt32(i.displayOrder);
                        class1.Details = i.productDetails;
                        class1.ImgPath = i.productImg;
                        class1.Name = i.productName;
                        class1.Price = Convert.ToDouble(i.productPrice);

                        list.Add(class1);
                    }
                }
                Repeater1.DataSource = list;
                Repeater1.DataBind();
            }
            else if (dropDownValue != -1 && searchBoxValue == "")
            {
                var query = (from a in productDbContext.Products
                             join b in productDbContext.ProductImgs
                             on a.ID equals b.ProductID
                             select new
                             {
                                 productID = a.ID,
                                 productCategoryID = a.CategoryID,
                                 productImg = b.ImgPath,
                                 productDetails = a.Details,
                                 productName = a.Name,
                                 displayOrder = b.DisplayOrder,
                                 productPrice = a.Price
                             }).Where(a => a.productCategoryID == dropDownValue).ToList();
                foreach (var i in query)
                {
                    if (i.displayOrder == 1)
                    {
                        Class1 class1 = new Class1();
                        class1.ID = i.productID;
                        class1.DisplayOrder = Convert.ToInt32(i.displayOrder);
                        class1.Details = i.productDetails;
                        class1.ImgPath = i.productImg;
                        class1.Name = i.productName;
                        class1.Price = Convert.ToDouble(i.productPrice);

                        list.Add(class1);
                    }
                }
                Repeater1.DataSource = list;
                Repeater1.DataBind();
            }
        }
    }
}
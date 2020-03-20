using Buy.com.Data_Access_Layer.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Buy.com.Admin
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataBind();
            }
        }

        protected void btnAddCategory_Click(object sender, EventArgs e)
        {
            ProductDbContext productDbContext = new ProductDbContext();
            ProductLayer productLayer = new ProductLayer();
            Product product = new Product();

            productLayer.CategoryID = Convert.ToInt64(txtCategoryID.Text);
            productLayer.Name = txtProductName.Text;
            productLayer.Price = Convert.ToDouble(txtPrice.Text);
            productLayer.Details = txtProductDetails.Text;
            productLayer.Brand = txtBrandName.Text;
            productLayer.StockQuantity = Convert.ToDouble(txtStockQuentity.Text);
            productLayer.IsFavorite = chkIsFavourite.Checked;
            productLayer.IsActive = chkIsActive.Checked;

            product.CategoryID = productLayer.CategoryID;
            product.Name = productLayer.Name;
            product.Price = productLayer.Price;
            product.Details = productLayer.Details;
            product.Brand = productLayer.Brand;
            product.StockQuantity = productLayer.StockQuantity;
            product.IsFavorite = productLayer.IsFavorite;
            product.IsActive = productLayer.IsActive;

            productDbContext.Products.Add(product);
            productDbContext.SaveChanges();

            long ProductID = product.ID;
            ProductImg productImg = new ProductImg();
            ProductImgLayer productImgLayer = new ProductImgLayer();
            int displayOrder = 1;
            string activePictureName = uploadActivePicture.FileName;
            
            foreach(var a in uploadProductPicture.PostedFiles)
            {
                string fileExtension = Path.GetExtension(a.FileName);
                if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".png")
                {
                    Random random = new Random();
                    int randomNum = random.Next(0, 100000000);

                    a.SaveAs(Server.MapPath("~/Photos/Products/" + randomNum + a.FileName));
                    string imagePath = "~/Photos/Products/" + randomNum + a.FileName;
                    if (activePictureName == a.FileName)
                    {
                        productImgLayer.IsDefaultImg = true;
                    }
                    else
                    {
                        productImgLayer.IsDefaultImg = false;
                    }
                    productImgLayer.ProductID = ProductID;
                    productImgLayer.ImgPath = imagePath;
                    productImgLayer.DisplayOrder = displayOrder;

                    productImg.ProductID = productImgLayer.ProductID;
                    productImg.ImgPath = productImgLayer.ImgPath;
                    productImg.DisplayOrder = productImgLayer.DisplayOrder;
                    productImg.IsDefaultImg = productImgLayer.IsDefaultImg;

                    productDbContext.ProductImgs.Add(productImg);
                    productDbContext.SaveChanges();
                    displayOrder += 1;
                }
            }
            GridView1.DataBind();
            ClearProductInputField();
        }
        public void ClearProductInputField()
        {
            txtBrandName.Text = "";
            txtPrice.Text = "";
            txtProductDetails.Text = "";
            txtProductName.Text = "";
            txtStockQuentity.Text = "";
            chkIsActive.Checked = false;
            chkIsFavourite.Checked = false;
        }
    }
}
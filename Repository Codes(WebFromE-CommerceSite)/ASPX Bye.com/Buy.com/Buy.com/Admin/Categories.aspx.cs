using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Buy.com.Data_Access_Layer.Models;

namespace Bye.com_EcomerceSite.Admin
{
    public partial class Categories : System.Web.UI.Page
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
            CategoryLayer categoryLayer = new CategoryLayer();
            Category category = new Category();

            categoryLayer.ParentCatID = Convert.ToInt32(txtCategoryID.Text);
            categoryLayer.Name = txtCategoryName.Text;
            categoryLayer.IsActive = chkIsActive.Checked;
            categoryLayer.DisplayOrder = Convert.ToInt32(txtDisplayOrder.Text);
            
            category.ParentCatID = categoryLayer.ParentCatID;
            category.Name = categoryLayer.Name;
            category.DisplayOrder = categoryLayer.DisplayOrder;
            category.IsActive = categoryLayer.IsActive;

            productDbContext.Categories.Add(category);
            productDbContext.SaveChanges();
            GridView1.DataBind();
            ClearCategoryInputField();
        }
        public void ClearCategoryInputField()
        {
            txtCategoryID.Text = "";
            txtCategoryName.Text = "";
            txtDisplayOrder.Text = "";
            chkIsActive.Checked = false;
        }
    }
}
using Buy.com.Data_Access_Layer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Buy.com
{
    public partial class SiteMaster : MasterPage
    {
        ProductDbContext productDbContext = new ProductDbContext();
        protected void Page_Load(object sender, EventArgs e)

        {
            if (!IsPostBack)
            {
                var categories = productDbContext.Categories.Select(p => p).ToList();
                DropDownList1.DataSource = categories;
                DropDownList1.DataValueField = "ID";
                DropDownList1.DataTextField = "Name";
                DropDownList1.DataBind();
                ListItem listItem = new ListItem("Select Category", "-1");
                DropDownList1.Items.Insert(0, listItem);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            long dropDownValue = Convert.ToInt64(DropDownList1.SelectedValue);
            string searchBoxValue = txtSearch.Text;
           
            if(dropDownValue != -1 || searchBoxValue != "")
            {
                Response.Redirect("~/SearchResult.aspx?DropDownValue=" + dropDownValue + "&SearchBoxValue=" + searchBoxValue);
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
        }
    }
}
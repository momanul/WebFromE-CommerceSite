using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMatrix.WebData;

namespace IDB.WebForm.PJ1.Admin
{
    public partial class AdminLayout : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userName = WebSecurity.CurrentUserName;
            int userID = WebSecurity.CurrentUserId;
            bool isUserLoggedIn = WebSecurity.IsAuthenticated;
            if (isUserLoggedIn)
            {
                Label1.Visible = false;
                Label2.Visible = true;
            }
            if (!isUserLoggedIn)
            {
                Label1.Visible = true;
                Label2.Visible = false;
            }
        }
        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            WebSecurity.Logout();
            Response.Redirect("Login.aspx");
        }
    }
}
using Buy.com.Data_Access_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMatrix.WebData;

namespace IDB.WebForm.PJ1.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
        }

        protected void btnSignUp_Click1(object sender, EventArgs e)
        {
            var password = txtPassword.Text;
            string name = txtName.Text;
            if(password != "" && name != "")
            {
                LoginModel lm = new LoginModel() { UserName = name, Password = password, RememberMe = true };
                bool isAuthenticated = WebSecurity.Login(lm.UserName, lm.Password);//, lm.RememberMe);

                if (isAuthenticated)
                {
                    string returnUrl = Request.QueryString["ReturnUrl"];
                    if (returnUrl == null) returnUrl = "~/Admin/AdminHomePage.aspx";
                    Response.Redirect(returnUrl);
                }
                else
                {
                    Label1.Text = "User Name or Password is incorrect";               
                }
            }
            else
            {
                Label1.Text = "Please enter a valid user name and password";
            }
        }
    }
}
using Buy.com.Data_Access_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMatrix.WebData;

namespace Buy.com.Admin
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            RegisterModel uData = new RegisterModel();
            uData.Role = "Admin";
            uData.UserName = txtUserName.Text;
            uData.Email = txtEmail.Text;
            uData.FullName = txtUserName.Text;
            uData.Password = txtPassword.Text;
            if (uData.UserName != "" && uData.Email != "" && uData.Password != "")
            {
                bool isUserExists = WebSecurity.UserExists(uData.UserName);
                if (isUserExists)
                {
                    Label1.Text = "User name already exits please try another user name";
                }
                else
                {
                    WebSecurity.CreateUserAndAccount(uData.UserName, uData.Password,
                        new { FullName = uData.FullName, Email = uData.Email });
                    Roles.AddUserToRole(uData.UserName, uData.Role);
                    Response.Redirect("AdminHomePage.aspx");

                }
            }
            else
            {
                Label1.Text = "Please fill up the form first then click sign up";
            }
        }
    }
}
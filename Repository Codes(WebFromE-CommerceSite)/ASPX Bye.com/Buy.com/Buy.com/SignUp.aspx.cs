using Buy.com.Data_Access_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMatrix.WebData;

namespace Buy.com
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            RegisterModel uData = new RegisterModel();
            uData.Role = "GeneralUser";
            uData.UserName = txtUserName.Text;
            uData.FullName = txtUserName.Text;
            uData.Email = txtEmail.Text;
            bool isUserExists = WebSecurity.UserExists(uData.UserName);
            if (isUserExists)
            {
                //User Name already exists
            }
            else
            {
                WebSecurity.CreateUserAndAccount(uData.UserName, uData.Password,
                    new { FullName = uData.FullName, Email = uData.Email });
                Roles.AddUserToRole(uData.UserName, uData.Role);
                Response.Redirect("~/Account/Dashboard");

            }
        }
    }
}
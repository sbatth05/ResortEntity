using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResortEntity
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            Database.Class1 conn = new Database.Class1();
            int x = conn.login(LoginID.Text,LoginPassword.Text);
            if (x == 1)
            {
                details.InnerHtml = "Wel Come to the Dashboard ";
                Response.Redirect("Dashboard.aspx");
            }
            else {
                details.InnerHtml = "<Script> alert('Check Your Login Id and Password ');</script>";
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResortEntity
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            Database.Class1 conn = new Database.Class1();
            conn.AddDelUpdate("insert into Contact values('"+txtName.Text+"','"+txtEmail.Text+"','"+txtContact.Text+"','"+txtMessage.Text+"')");
            details.InnerHtml = "<script> alert('Thanks for the Message we will contact you soon ! '); </script>";
            txtContact.Text = "";
            txtEmail.Text = "";
            txtMessage.Text = "";
            txtName.Text = "";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResortEntity
{
    public partial class RegisterCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            Database.Class1 conn = new Database.Class1();
            conn.AddDelUpdate("insert into Customer values('" + txtName.Text + "','" + txtContact.Text + "','" + txtRoom.Text + "','" + txtMember.Text + "','"+txtDate.Text+"')");
            details.InnerHtml = "<script> alert('Customer is Registered in the Resort ! '); </script>";

            txtContact.Text = "";
            txtRoom.Text = "";
            txtMember.Text = "";
            txtName.Text = "";
            txtDate.Text = "";

        }
    }
}
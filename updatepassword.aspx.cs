using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class updatepassword : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("forgatepassword.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string s="update register set password='"+TextBox1.Text+"'where username='"+Session["userid"]+"'";
        dc.dal(s);
        Response.Write("<script>alert('Password Update Succesfully..')</script>");
        Response.Redirect("login.aspx");
    }
}
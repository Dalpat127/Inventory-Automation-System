using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class forgatepassword : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
            if (TextBox1.Text != "")
            {
                if (checkid())
                {
                    Session["userid"] = TextBox1.Text;
                    Response.Redirect("updatepassword.aspx");
                }
                else
                    Response.Write("<script>alert('Enter valid user id')</script>");
            }
            else
                Response.Write("<script>alert('Please Enter user id')</script>");
      
    }
    public bool checkid()
    {
        string s = "select * from register where username='" + TextBox1.Text + "'";
        DataSet ds = new DataSet();
        ds=dc.kal(s);
        if(ds.Tables[0].Rows.Count==0)
            return false;
        else
            return true;
    }
}
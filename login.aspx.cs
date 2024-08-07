using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class login : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (TextBox1.Text != "" && TextBox2.Text != "")
        {
            if (checkid())
            {
                if (checkpassword())
                {
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Please Enter Valid Password...')</script>");
                    TextBox1.Text = TextBox2.Text = "";
                }
            }
            else
            {
                Response.Write("<script>alert('Please Enter Valid UserID...')</script>");
                TextBox1.Text = TextBox2.Text = "";
            }
        }
        else
        {
            Response.Write("<script>alert('Please Enter UserID and Password....')</script>");
            TextBox1.Text = TextBox2.Text = "";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
    public bool checkid()
    {
        string s = "select * from register where username='"+TextBox1.Text+"'";
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        if (ds.Tables[0].Rows.Count == 0)
            return false;
        else
            return true;
    }
    public bool checkpassword()
    {
        string s = "select * from register where username='" + TextBox1.Text + "' and password='"+TextBox2.Text+"'";
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        if (ds.Tables[0].Rows.Count == 0)
            return false;
        else
            return true;
    }
}
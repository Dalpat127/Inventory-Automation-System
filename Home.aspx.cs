using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Home : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.Visible = false;
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        if (checkstock())
        {
            if (TextBox1.Text != "")
            {
                string s1 = "select * from stock where item_name like'%" + TextBox1.Text + "%'";
                DataSet ds = new DataSet();
                ds = dc.kal(s1);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                GridView1.Visible = true;
            }
            else
                Response.Write("<script>alert('Please Enter Search Item')</script>");
        }
        else
            Response.Write("<script>alert('Item Not Available')</script>");
    }
    public bool checkstock()
    {
        string s = "select * from stock where item_name like'%" + TextBox1.Text + "%'";
        DataSet ds=new DataSet();
        ds = dc.kal(s);
        if (ds.Tables[0].Rows.Count == 0)
            return false;
        else
            return true;
    }
    public void abc(object sender, CommandEventArgs e)
    {
        Response.Redirect("stock_view.aspx?item=" + e.CommandName);
    }
}
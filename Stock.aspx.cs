using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Stock : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        string s1 = "select * from stock";
        DataSet ds = new DataSet();
        ds = dc.kal(s1);
        GridView1.Visible = true;
        GridView1.DataSource = ds;
        GridView1.DataBind();
        
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            string s = "select * from stock where item_name like'%" + TextBox1.Text + "%'";
            DataSet ds = new DataSet();
            ds = dc.kal(s);
            if (ds.Tables[0].Rows.Count == 0)
                Response.Write("<script>alert('Item Not Found....')</script>");
            else
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
                TextBox1.Text = "";
            }
            
        }
        else
            Response.Write("<script>alert('Please Enter Search Item....')</script>");
    }
    public void abc(object sender, CommandEventArgs e)
    {
        Response.Redirect("stock_view.aspx?item=" + e.CommandName);
    }
}
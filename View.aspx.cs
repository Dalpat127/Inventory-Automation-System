using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class View : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        GridView2.Visible = false;
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked)
        {
            string s="select * from purchase";
            DataSet ds=new DataSet();
            ds=dc.kal(s);
            if(ds.Tables[0].Rows.Count==0)
            {
                Response.Write("<script>alert('No Any Item Purchase...')</script>");
            }
            else
            {
                GridView1.Visible = true;
                GridView2.Visible = false;
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
               
          
        }
        else if(RadioButton2.Checked)
            {
            string s1 = "select * from sell";
            DataSet ds = new DataSet();
            ds = dc.kal(s1);
            if (ds.Tables[0].Rows.Count == 0)
            {
                Response.Write("<script>alert('No Any Item Sell...')</script>");
            }
            else
            {
                GridView2.Visible = true;
                GridView1.Visible = false;
                GridView2.DataSource = ds;
                GridView2.DataBind();
            }
        }
        else
            Response.Write("<script>alert('Please Select View Option...')</script>");
        
    }
    public void abc(object sender, CommandEventArgs e)
    {
        string s = e.CommandName;
        Response.Redirect("purchase_view.aspx?ssid=" + e.CommandName);
    }
    public void abcd(object sender, CommandEventArgs e)
    {
        string s1 = e.CommandName;
        Response.Redirect("Sell_view.aspx?ssid=" + e.CommandName);
    }
}
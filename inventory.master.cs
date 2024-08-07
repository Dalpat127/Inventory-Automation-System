using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class inventory : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Search_Supplier.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("All_Supllier.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("New_Customer.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("Search_Customer.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("All_Customer.aspx");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Redirect("Purchase.aspx");
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        Response.Redirect("Sell.aspx");
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Response.Redirect("View.aspx");
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        Response.Redirect("Stock.aspx");
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("new_supplier.aspx");
    }
}

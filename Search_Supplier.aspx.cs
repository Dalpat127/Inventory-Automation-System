using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Search_Supplier : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        string s1 = "select * from new_supplier";
        DataSet ds = new DataSet();
        ds = dc.kal(s1);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        GridView1.Visible = true;
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
            if (RadioButton1.Checked)
            {
                if (TextBox6.Text != "")
                {
                    string s = "select * from new_supplier where sid like '%" + TextBox6.Text + "%'";
                    DataSet ds = new DataSet();
                    ds = dc.kal(s);
                    if (ds.Tables[0].Rows.Count == 0)
                    {
                        Response.Write("<script>alert('Supplier Not Found...')</script>");
                        TextBox6.Text = "";
                    }
                    else
                    {
                        GridView1.Visible = true;
                        GridView1.DataSource = ds;
                        GridView1.DataBind();
                    }

                }
                else
                {
                    Response.Write("<script>alert('Please Enter Supplier ID...')</script>");
                }
            }
            else
            {
                if (TextBox6.Text != "")
                {
                    string s = "select * from new_supplier where company_name like '%" + TextBox6.Text + "%'";
                    DataSet ds = new DataSet();
                    ds = dc.kal(s);
                    if (ds.Tables[0].Rows.Count == 0)
                    {
                        Response.Write("<script>alert('Supplier Not Found...')</script>");
                        TextBox6.Text = "";
                    }
                    else
                    {
                        GridView1.Visible = true;
                        GridView1.DataSource = ds;
                        GridView1.DataBind();
                    }
                }
                else
                {
                    Response.Write("<script>alert('Please Enter Company Name...')</script>");
                }
            }
    }
    
}
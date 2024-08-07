using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Search_Customer : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked)
        {
            if (TextBox6.Text != "")
            {
                string s = "select * from new_customer where cid like '%" + TextBox6.Text + "%'";
                DataSet ds = new DataSet();
                ds = dc.kal(s);
                if (ds.Tables[0].Rows.Count == 0)
                {
                    Response.Write("<script>alert('Customer Not Found...')</script>");
                    TextBox6.Text = "";
                }
                else
                {
                    Panel1.Visible = true;
                    Label1.Text = ds.Tables[0].Rows[0][0].ToString();
                    Label2.Text = ds.Tables[0].Rows[0][1].ToString();
                    Label3.Text = ds.Tables[0].Rows[0][2].ToString();
                    Label4.Text = ds.Tables[0].Rows[0][3].ToString();
                    Label5.Text = ds.Tables[0].Rows[0][4].ToString();
                    Label6.Text = ds.Tables[0].Rows[0][5].ToString();
                    Label7.Text = ds.Tables[0].Rows[0][6].ToString();
                    Label8.Text = ds.Tables[0].Rows[0][7].ToString();
                    Label9.Text = ds.Tables[0].Rows[0][8].ToString();
                    Label10.Text = ds.Tables[0].Rows[0][9].ToString();
                    Label11.Text = ds.Tables[0].Rows[0][10].ToString();
                    Label12.Text = ds.Tables[0].Rows[0][11].ToString();
                }

            }
            else
            {
                Response.Write("<script>alert('Please Enter Customer ID...')</script>");
            }
        }
        else
        {
            if (TextBox6.Text != "")
            {
                string s = "select * from new_customer where full_name like '%" + TextBox6.Text + "%'";
                DataSet ds = new DataSet();
                ds = dc.kal(s);
                if (ds.Tables[0].Rows.Count == 0)
                {
                    Response.Write("<script>alert('Customer Not Found...')</script>");
                    TextBox6.Text = "";
                }
                else
                {
                    Panel1.Visible = true;
                    Label1.Text = ds.Tables[0].Rows[0][0].ToString();
                    Label2.Text = ds.Tables[0].Rows[0][1].ToString();
                    Label3.Text = ds.Tables[0].Rows[0][2].ToString();
                    Label4.Text = ds.Tables[0].Rows[0][3].ToString();
                    Label5.Text = ds.Tables[0].Rows[0][4].ToString();
                    Label6.Text = ds.Tables[0].Rows[0][5].ToString();
                    Label7.Text = ds.Tables[0].Rows[0][6].ToString();
                    Label8.Text = ds.Tables[0].Rows[0][7].ToString();
                    Label9.Text = ds.Tables[0].Rows[0][8].ToString();
                    Label10.Text = ds.Tables[0].Rows[0][9].ToString();
                    Label11.Text = ds.Tables[0].Rows[0][10].ToString();
                    Label12.Text = ds.Tables[0].Rows[0][11].ToString();
                }
            }
            else
            {
                Response.Write("<script>alert('Please Enter Customer Name...')</script>");
            }
        }
    }
}
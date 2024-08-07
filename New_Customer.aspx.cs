using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class New_Customer : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime currentime = DateTime.Now;
        DateTime currendate = DateTime.Now;
        Label2.Text = currentime.ToShortTimeString();
        Label3.Text = currendate.ToShortDateString();
        string s = "select cid from new_customer order by cid desc";
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        if (ds.Tables[0].Rows.Count == 0)
        {
            Label1.Text = "1";
        }
        else
            Label1.Text = Convert.ToString(Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString()) + 1);
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        string gen;
        if (RadioButton1.Checked)
            gen = "Male";
        else
            gen = "Female";
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "" && TextBox7.Text != ""&&TextBox8.Text!="")
        {
            string s1 = "insert into new_customer values(" + Label1.Text + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + gen + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "'," + TextBox7.Text + ",'" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + TextBox8.Text + "','" + Label2.Text + "','" + Label3.Text + "')";
            dc.dal(s1);
            Response.Write("<script>alert('New Customer Added successfully...')</script>");
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = TextBox6.Text = TextBox7.Text =TextBox8.Text= "";
            Label1.Text = Convert.ToInt32(Label1.Text + 1).ToString();
        }
        else
            Response.Write("<script>alert('Please Fill Up All Details...')</script>");
    }
}
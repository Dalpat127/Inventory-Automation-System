using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Sell : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime currenttime = DateTime.Now;
        DateTime currentdate = DateTime.Now;
        Label2.Text = currenttime.ToShortTimeString();
        Label3.Text = currentdate.ToShortDateString();
        string s = "select * from sell order by id desc";
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        if (ds.Tables[0].Rows.Count == 0)
        {
            Label1.Text = "1";
        }
        else
            Label1.Text = Convert.ToString(Convert.ToInt32(ds.Tables[0].Rows[0][0]) + 1).ToString();
        Label4.Visible = false;
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "")
        {
            if (checkcustomerid())
            {
                FileUpload1.SaveAs(Server.MapPath("~img") + Path.GetFileName(FileUpload1.FileName));
                string pic1 = "img/" + Path.GetFileName(FileUpload1.FileName);

                FileUpload2.SaveAs(Server.MapPath("~img") + Path.GetFileName(FileUpload2.FileName));
                string pic2 = "img/" + Path.GetFileName(FileUpload2.FileName);

                FileUpload3.SaveAs(Server.MapPath("~img") + Path.GetFileName(FileUpload3.FileName));
                string pic3 = "img/" + Path.GetFileName(FileUpload3.FileName);

                FileUpload4.SaveAs(Server.MapPath("~img") + Path.GetFileName(FileUpload4.FileName));
                string pic4 = "img/" + Path.GetFileName(FileUpload4.FileName);

                string s2 = "insert into sell values(" + Label1.Text + "," + DropDownList1.Text + ",'" + TextBox1.Text + "'," + TextBox2.Text + "," + TextBox3.Text + "," + Label4.Text + ",'" + Label2.Text + "','" + Label3.Text + "','" + pic1 + "','" + pic2 + "','" + pic3 + "','" + pic4 + "','" + TextBox4.Text + "')";
                dc.dal(s2);
                if (checkstock())
                {
                    string s4 = "update stock set item_qty=item_qty -" + TextBox2.Text + ",amount=amount-" + Label4.Text + ",sot='" + Label2.Text + "',sod='" + Label3.Text + "' where item_name='" + TextBox1.Text + "'";
                    dc.dal(s4);
                }
                else
                    Response.Write("<script>alert('Item Not Available....')</script>");
                Response.Write("<script>alert('Item Sell Successfully...')</script>");
                TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = "";
                Label1.Text = Convert.ToInt32(Label1.Text + 1).ToString();
            }
            else
                Response.Write("<script>alert('Customer Not Found...')</script>");
        }
        else
            Response.Write("<script>alert('Please fill up all details...')</script>");

    }
    protected void Button14_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text != "" && TextBox3.Text != "")
        {
            Label4.Text = (Convert.ToInt32(TextBox2.Text) * Convert.ToInt32(TextBox3.Text)).ToString();
            Label4.Visible = true;
        }
        else
            Response.Write("<script>alert('Please Enter Item Quantity and Item Price...')</script>");
    }
    public bool checkcustomerid()
    {
        string s1 = "select * from new_customer where cid=" + DropDownList1.Text + " ";
        DataSet ds = new DataSet();
        ds = dc.kal(s1);
        if (ds.Tables[0].Rows.Count == 0)
            return false;
        else
            return true;
    }
    public bool checkstock()
    {
        string s3 = "select * from stock where item_name like '%" + TextBox1.Text + "%'";
        DataSet ds = new DataSet();
        ds = dc.kal(s3);
        if (ds.Tables[0].Rows.Count == 0)
            return false;
        else
            return true;

    }

}
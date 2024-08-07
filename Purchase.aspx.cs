using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Purchase : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime currentime = DateTime.Now;
        DateTime currendate = DateTime.Now;
        Label2.Text = currentime.ToShortTimeString();
        Label3.Text = currendate.ToShortDateString();
        string s = "select * from purchase order by id desc";
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        if (ds.Tables[0].Rows.Count == 0)
        {
            Label1.Text = "1";
        }
        else
            Label1.Text = Convert.ToString(Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString()) + 1);
        Label4.Visible = false;

    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "")
        {
            if (checksid())
            {
                //if (FileUpload1.HasFile)
                //{
                //    int size1 = FileUpload1.PostedFile.ContentLength;
                //    if (size1 > 200000)
                //        Response.Write("<script>alert('File Exceeds 200kb...')</script>");
                //    else
                //    {
                        FileUpload1.SaveAs(Server.MapPath("~/img") + Path.GetFileName(FileUpload1.FileName));
                        string pic1 = "img/" + Path.GetFileName(FileUpload1.FileName);
                //    }
                //}
                //else
                //{
                //    Response.Write("<script>alert('Please Select Picture 1...')</script>");
                //}

                //if (FileUpload2.HasFile)
                //{
                //    int size2 = FileUpload2.PostedFile.ContentLength;
                //    if (size2 > 200000)
                //        Response.Write("<script>alert('File Exceeds 200kb...')</script>");
                //    else
                //    {
                        FileUpload2.SaveAs(Server.MapPath("~img") + Path.GetFileName(FileUpload2.FileName));
                        string pic2 = "img/" + Path.GetFileName(FileUpload2.FileName);
                //    }
                //}
                //else
                //{
                //    Response.Write("<script>alert('Please Select Picture 2...')</script>");
                //}
                // if (FileUpload3.HasFile)
                // {
                //     int size3 = FileUpload3.PostedFile.ContentLength;
                //     if (size3 > 200000)
                //         Response.Write("<script>alert('File Exceeds 200kb...')</script>");
                //     else
                //     {
                         FileUpload3.SaveAs(Server.MapPath("~img") + Path.GetFileName(FileUpload3.FileName));
                         string pic3 = "img/" + Path.GetFileName(FileUpload3.FileName);
                 //    }
                 //}
                 //else
                 //{
                 //    Response.Write("<script>alert('Please Select Picture 3...')</script>");
                 //}
                 //if (FileUpload4.HasFile)
                 //{
                 //    int size4 = FileUpload4.PostedFile.ContentLength;
                 //    if (size4 > 200000)
                 //        Response.Write("<script>alert('File Exceeds 200kb...')</script>");
                 //    else
                 //    {
                         FileUpload4.SaveAs(Server.MapPath("~img") + Path.GetFileName(FileUpload4.FileName));
                         string pic4 = "img/" + Path.GetFileName(FileUpload4.FileName);
                 //    }
                 //}
                 //else
                 //{
                 //    Response.Write("<script>alert('Please Select Picture 4...')</script>");
                 //}
               
               // Label4.Text = (Convert.ToInt32(TextBox2.Text) * Convert.ToInt32(TextBox3.Text)).ToString();
                string s2 = "insert into purchase values(" + Label1.Text + "," + DropDownList1.Text + ",'" + TextBox1.Text + "'," + TextBox2.Text + "," + TextBox3.Text + "," + Label4.Text + ",'" + Label2.Text + "','" + Label3.Text + "','" + pic1 + "','" + pic2 + "','" + pic3 + "','" + pic4 + "','"+TextBox4.Text+"')";
                dc.dal(s2);
                if (checkitem())
                {
                    string s4 = "update stock set item_qty=item_qty +" + TextBox2.Text + ",amount=amount+" + Label4.Text + ",sot='" + Label2.Text + "',sod='" + Label3.Text + "' where item_name='" + TextBox1.Text + "'";
                    dc.dal(s4);
                }
                else
                {
                    string s5 = "insert into stock values('" + TextBox1.Text + "'," + TextBox2.Text + "," + TextBox3.Text + "," + Label4.Text + ",'" + Label2.Text + "','" + Label3.Text + "','" + pic1 + "','" + pic2 + "','" + pic3 + "','" + pic4 + "')";
                    dc.dal(s5);
                }
                Response.Write("<script>alert('Item Purchase Successfully...')</script>");
                TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = "";
                Label1.Text = Convert.ToInt32(Label1.Text + 1).ToString();
            }
            else
            {
                Response.Write("<script>alert('Supplier Not Found...')</script>"); 
            }

        }
        else
            Response.Write("<script>alert('Please Fill Up All Details...')</script>");

    }
    public bool checksid()
    {
        string s1 = "select * from new_supplier where sid=" + DropDownList1.Text + "";
        DataSet ds = new DataSet();
        ds = dc.kal(s1);
        if (ds.Tables[0].Rows.Count == 0)
        {
            return false;
        }
        else
            return true;
    }
    public bool checkitem()
    {
        string s3 = "select * from stock where item_name like '%" + TextBox1.Text + "%'";
        DataSet ds = new DataSet();
        ds = dc.kal(s3);
        if (ds.Tables[0].Rows.Count == 0)
            return false;
        else
            return true;
    }
    protected void Button14_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text != "" && TextBox3.Text != "")
        {
            Label4.Text = (Convert.ToInt32(TextBox2.Text) * Convert.ToInt32(TextBox3.Text)).ToString();
            Label4.Visible = true;
        }
        else
            Response.Write("<script>alert('Please Enter Item Quantity and their Price...')</script>");
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for datacon
/// </summary>
public class datacon
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
	public datacon()
	{
        con = new SqlConnection(@"Data Source=DESKTOP-1H4QHR3;Initial Catalog=Inventory_Automation_System;Integrated Security=True");
        con.Open();
		//
		// TODO: Add constructor logic here
		//
	}
    public void dal(string s)
    {
        SqlCommand cmd = new SqlCommand(s,con);
        cmd.ExecuteNonQuery();
    }
    public DataSet kal(string s)
    {
        SqlDataAdapter da = new SqlDataAdapter(s,con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }
}
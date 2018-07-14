using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Subject : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-VPEVBIA; Initial Catalog=freecharity; Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnlgot_Click(object sender, EventArgs e)
    {
        Session.Remove("USERNAME");
        Response.Redirect("~/Default.aspx");
    }

    protected void addsubbtn_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into Subject values('" + addsubtxt.Text + "')";
        cmd.ExecuteNonQuery();
        con.Close();

        addsubtxt.Text = "";
        

        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Subject Added Successfully');</script>");
    }
}

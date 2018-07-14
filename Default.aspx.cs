using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-VPEVBIA; Initial Catalog=freecharity; Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlgn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into Contact_Form values('"+TextBox1.Text+ "','" + TextBox2.Text + "','" + DropDownList1.Text + "','" +TextBox3.Text+ "')";
        cmd.ExecuteNonQuery();
        con.Close();

        TextBox1.Text = "";
        TextBox2.Text = "";
        DropDownList1.Text = "";
        TextBox3.Text = "";

        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Message Send Successfully');</script>");
    }
}
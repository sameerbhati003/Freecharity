using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class signup : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-VPEVBIA; Initial Catalog=freecharity; Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnadduser_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into Add_User values('" + txtusername.Text + "', '" + txtemail.Text + "', '" + txtcountry.Text + "', '" + txtpassword.Text + "', '" + txtrole.Text + "')";
        cmd.ExecuteNonQuery();
        con.Close();

        txtusername.Text = "";
        txtemail.Text = "";
        txtcountry.Text = "";
        txtpassword.Text = "";
        txtrole.Text = "";

        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('User Added Successfully');</script>");
    }

    protected void btnclruser_Click(object sender, EventArgs e)
    {
        txtusername.Text = "";
        txtemail.Text = "";
        txtcountry.Text = "";
        txtpassword.Text = "";
        txtrole.Text = "";
    }
}
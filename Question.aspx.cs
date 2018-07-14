using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Question : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-VPEVBIA; Initial Catalog=freecharity; Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void addquebtn_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into Question values('" + questiontxt.Text + "', '" + opt1txt.Text + "', '" + opt2txt.Text + "', '" + opt3txt.Text + "', '" + opt4txt.Text + "', '" + coropttxt.Text + "', '" + subidtxt.Text + "')";
        cmd.ExecuteNonQuery();
        con.Close();

        questiontxt.Text = "";
        opt1txt.Text = "";
        opt2txt.Text = "";
        opt3txt.Text = "";
        opt4txt.Text = "";
        coropttxt.Text = "";
        subidtxt.Text = "";

        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Question Added Successfully');</script>");
    }

    protected void btnclruser_Click(object sender, EventArgs e)
    {
        questiontxt.Text = "";
        opt1txt.Text = "";
        opt2txt.Text = "";
        opt3txt.Text = "";
        opt4txt.Text = "";
        coropttxt.Text = "";
        subidtxt.Text = "";
    }

    protected void btnlgot_Click(object sender, EventArgs e)
    {
        Session.Remove("USERNAME");
        Response.Redirect("~/Default.aspx");
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-VPEVBIA; Initial Catalog=freecharity; Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnuserlgn_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
        con.Open();
        string query = "select * from Add_User where USERNAME ='" + txtlgnusername.Text + "' and PASSWORD ='" + txtlgnpass.Text + "'";

        SqlCommand cmd = new SqlCommand(query, con);
        //string output = cmd.ExecuteScalar().ToString();

        //if (output == "1")
        //{
        //    Session["USERNAME"] = txtlgnusername.Text;
        //    Response.Redirect("~/User.aspx");
        //}
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            if (ds.Tables[0].Rows[0]["ROLE"].ToString() == "2")
            {
                Session["USERNAME"] = txtlgnusername.Text;
                Response.Redirect("~/User.aspx");
            }
            else if (ds.Tables[0].Rows[0]["ROLE"].ToString() == "1")
            {
                Session["USERNAME"] = txtlgnusername.Text;
                Response.Redirect("~/Admin.aspx");
            }
           else if (ds.Tables[0].Rows[0]["ROLE"].ToString() == "0")
            {
                Session["USERNAME"] = txtlgnusername.Text;
                Response.Redirect("~/User.aspx");
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Failed');</script>");
        }
    }
}
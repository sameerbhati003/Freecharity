using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserMyAccount : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-VPEVBIA; Initial Catalog=freecharity; Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USERNAME"] != null)
        {
            Label7.Text = "Welcome   " + Session["USERNAME"].ToString();
        }
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
    }

    protected void btnsrcuser_Click(object sender, EventArgs e)
    {
        int i = 0;
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Add_User where USERNAME='" + txtsrcusername.Text + "'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        i = Convert.ToInt32(dt.Rows.Count.ToString());

        if (i == 0)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Not Found');</script>");
        }
        else
        {
            foreach (DataRow dr in dt.Rows)
            {
                TextBox2.Text = dr["USERNAME"].ToString();
                TextBox3.Text = dr["EMAIL"].ToString();
                TextBox4.Text = dr["COUNTRY"].ToString();
                TextBox5.Text = dr["PASSWORD"].ToString();
                

            }
        }
    }

    protected void btnlgot_Click(object sender, EventArgs e)
    {
        Session.Remove("USERNAME");
        Response.Redirect("~/Default.aspx");
    }

    
        protected void btnupdateuser_Click(object sender, EventArgs e)
    {
        SqlCommand cmd1 = con.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "update Add_User set USERNAME ='" + TextBox2.Text + "', EMAIL='" + TextBox3.Text + "',COUNTRY='" + TextBox4.Text + "', PASSWORD='" + TextBox5.Text + "' where USERNAME = '" + txtsrcusername.Text + "'";
        cmd1.ExecuteNonQuery();

        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Record Updated Successfully');</script>");
    }
}
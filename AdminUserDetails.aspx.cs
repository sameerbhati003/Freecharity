using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminUserDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-VPEVBIA; Initial Catalog=freecharity; Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if(con.State==ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        if (!IsPostBack)
        {
           // DataBindGrid();
        }

    }

    protected void btnlgot_Click(object sender, EventArgs e)
    {
        Session.Remove("USERNAME");
        Response.Redirect("~/Default.aspx");
    }
    
    void DataBindGrid()
    {
        SqlCommand cmd = new SqlCommand("[searchuserdetails]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }

   

    protected void Button2_Click(object sender, EventArgs e)
    {
        
        SqlCommand cmd1 = new SqlCommand("searchuserdetailemail", con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@pAdd_Useremail", TextBox2.Text);
        SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
        DataTable dt1 = new DataTable();
        da1.Fill(dt1);
        if (dt1.Rows.Count > 0)
        {
            GridView1.DataSource = dt1;
            GridView1.DataBind();

        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('No Data Found');</script>");
        }

    }







    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gr = GridView1.SelectedRow;
        txtusername.Text = gr.Cells[2].Text;
        txtemail.Text = gr.Cells[3].Text;
        txtcountry.Text = gr.Cells[4].Text;
        txtpassword.Text = gr.Cells[5].Text;
        txtrole.Text = gr.Cells[6].Text;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update Add_User set USERNAME='" + txtusername.Text + "',EMAIL='" + txtemail.Text + "',COUNTRY='" + txtcountry.Text + "',PASSWORD='" + txtpassword.Text + "',ROLE='" + txtrole.Text + "' where EMAIL='"+TextBox2.Text+"' ";
        cmd.ExecuteNonQuery();

        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Data Updated Successfully');</script>");

    }
}
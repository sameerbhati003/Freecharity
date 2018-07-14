using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class MyPenny : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-VPEVBIA; Initial Catalog=freecharity; Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //DataBindGrid();
        }
    }

    protected void btnlgot_Click(object sender, EventArgs e)
    {
        Session.Remove("USERNAME");
        Response.Redirect("~/Default.aspx");
    }



    void DataBindGrid()
    {
        SqlCommand cmd = new SqlCommand("selectdata", con);
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

    protected void btnsrcpenny_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT COUNT(UserAns) AS MyPenny ,convert(date,ANS_DATE) ANS_DATE FROM Question_User_Ans WHERE Correct_ans = UserAns and Userid = '" + TextBox1.Text + "' GROUP BY convert(date,ANS_DATE)";
        cmd.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();


            int totalpanny = dt.AsEnumerable().Sum(row => row.Field<int>("MyPenny"));
            GridView1.FooterRow.Cells[0].Text = totalpanny.ToString();
            GridView1.FooterRow.Cells[1].Text = "Total Panny";
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('No Records Available');</script>");
        }
        con.Close();
       


    }
}
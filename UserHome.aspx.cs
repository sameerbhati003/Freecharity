using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserHome : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;

    public UserHome()
    {
        con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["connect"].ToString();
        cmd = new SqlCommand();
    }
    //SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-VPEVBIA; Initial Catalog=freecharity; Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            loadgrid();
        }
    }

    private void loadgrid()
    {
        con.Open();
        String psubid = "";
        if(Session["pid"] != null)
        {
            if(Session["pid"].ToString() != null)
            {
                psubid = Session["pid"].ToString();

            }

        }
        cmd.CommandText = "select top 1 Question,ans1,ans2,ans3,ans4,Question_id from Question where (Subject_id="+ psubid +" or "+ psubid +"='') order by Question_id";
        cmd.Connection = con;
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();

    }

    

    protected void btnlgot_Click(object sender, EventArgs e)
    {
        Session.Remove("USERNAME");
        Response.Redirect("~/Default.aspx");
    }

       protected void btnqueNEXT_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow gvrow in GridView1.Rows)
        {
            CheckBox chk1 = (CheckBox)gvrow.FindControl("ans1");
            CheckBox chk2 = (CheckBox)gvrow.FindControl("ans2");
            CheckBox chk3 = (CheckBox)gvrow.FindControl("ans3");
            CheckBox chk4 = (CheckBox)gvrow.FindControl("ans4");
            string questid = gvrow.Cells[1].Text;
            String psubid = "";
            if (Session["pid"] != null)
            {
                if (Session["pid"].ToString() != null)
                {
                    psubid = Session["pid"].ToString();

                }

            }
            Int32 val = 0;
            if (chk1 != null & chk1.Checked)
            {
                val = 1;
            }
            else if (chk2 != null & chk2.Checked)
            {
                val = 2;
            }
            else if (chk3 != null & chk3.Checked)
            {
                val = 3;
            }
            else if (chk4 != null & chk4.Checked)
            {
                val = 4;
            }
            //Update user answer..
            string usertid = Session["USERNAME"].ToString();
            con.Open();
            SqlCommand cmd1 = new SqlCommand("Question_User_Ans_ins", con);
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.Parameters.AddWithValue("@pQuestion_id", questid);
            cmd1.Parameters.AddWithValue("@pUserid", usertid);
            cmd1.Parameters.AddWithValue("@pUserAns", val); 
            cmd1.ExecuteNonQuery();
            con.Close();

            con.Open();
            string qury = "select top 1 Question,ans1,ans2,ans3,ans4,Question_id from Question where (Subject_id="+ psubid +" or "+ psubid +"='') and Question_id>" + questid + " order by Question_id";
            cmd.CommandText = qury;
            cmd.Connection = con;
            SqlDataReader rd = cmd.ExecuteReader();
            GridView1.DataSource = rd;
            GridView1.DataBind();
        }

        
        
    }
    protected void btnquesub_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/UserSubject.aspx");
    }
}
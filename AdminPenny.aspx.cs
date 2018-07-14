using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminPenny : System.Web.UI.Page

{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-VPEVBIA; Initial Catalog=freecharity; Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataBindGrid();
        }
    }

    protected void btnlgot_Click(object sender, EventArgs e)
    {
        Session.Remove("USERNAME");
        Response.Redirect("~/Default.aspx");
    }

    void DataBindGrid()
    {
        SqlCommand cmd = new SqlCommand("SELECT Userid,COUNT(Correct_ans)Penny,MAX(ANS_DATE)Date FROM Question_User_Ans WHERE Correct_ans = UserAns group by Userid,CONVERT(date,ANS_DATE); ", con);
        cmd.CommandType = CommandType.Text;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();


            int totalpanny = dt.AsEnumerable().Sum(row => row.Field<int>("Penny"));
            GridView1.FooterRow.Cells[1].Text = totalpanny.ToString();
            GridView1.FooterRow.Cells[0].Text = "Total Panny";
        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace task_m
{
    public partial class add_empregado : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["task-mConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            Label5.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Insert into empregado values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text+"')", con);
            cmd.ExecuteNonQuery();
            //SqlCommand cmd2 = new SqlCommand("Insert into utilizador values('" + TextBox1.Text + "','" + TextBox3.Text +"','"+TextBox4.Text+ "')", con);
            //cmd2.ExecuteNonQuery();
            
            con.Close();
            Response.Redirect("empregados.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("empregados.aspx");
        }
    }
}
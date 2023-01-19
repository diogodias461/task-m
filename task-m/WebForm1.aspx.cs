using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; 
using System.Configuration;

namespace task_m
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["task-mConnectionString"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string uemail = TextBox1.Text;
                string upass = TextBox2.Text;
                //SqlCommand naE = new SqlCommand("Select passwordU from utilizador where nivel_acesso = '2'");
                //string naE = "Select nivel_acesso from utilizador where emailU='" + uemail;
                //SqlCommand naE2 = new SqlCommand(naE, con);

                con.Open();

                string qry = "select * from utilizador where emailU='" + uemail + "' and passwordU='" + upass + "'";
                //System.Diagnostics.Debug.WriteLine(naE2);
                //SqlCommand naP = new SqlCommand("Select emailU from utilizador where nivel_acesso = '2'");
                //string na = "Select nivel_acesso from utilizador where passwordU='"+upass+"'";
                //System.Diagnostics.Debug.WriteLine(na);
                //SqlCommand naT = new SqlCommand(na, con);
                //int count = (int)naT.ExecuteScalar();



                SqlCommand cmd = new SqlCommand(qry, con);  
                
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Response.Redirect("Home-M.aspx");

                    //if(count == 1)
                    //{
                    //Response.Redirect("empregados.aspx");
                    //}
                    //else
                    //{
                    //Response.Redirect("Home-M.aspx");
                    //}
                }
                else
                {
                    Label1.Text = "Detalhes de Login Errados!";     
                }
                con.Close();
            }
            catch (Exception ex)
            {

                Response.Write(ex.Message);
            }
        }
    }
}
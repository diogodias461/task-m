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
    public partial class add_tarefa : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["task-mConnectionString"].ConnectionString);
       
        protected void Page_Load(object sender, EventArgs e)
        {
            Label8.Visible = false;
            string sqlquery = "select id_manager from manager";
            string sqlquery1 = "select id_empregado from empregado";
            SqlDataAdapter sda = new SqlDataAdapter(sqlquery, con);
            SqlDataAdapter sda1 = new SqlDataAdapter(sqlquery1, con);
            con.Open();
            DataTable dt = new DataTable();
            DataTable dt1 = new DataTable();
            sda.Fill(dt);
            sda1.Fill(dt1);
            //manager
            Select1.DataSource = dt;
            Select1.DataTextField = "id_manager";
            Select1.DataValueField = "id_manager";
            Select1.DataBind();
            //empregado
            Select2.DataSource = dt1;
            Select2.DataTextField = "id_empregado";
            Select2.DataValueField = "id_empregado";
            Select2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into tarefa(id_manager,id_empregado,estado_tarefa,data_inicio,data_fim,desc_tarefa) values('" + Select1.Value + "','" + Select2.Value + "','" + TextBox2.Text + "','"+TextBox1.Text+"','"+TextBox3.Text+"','" + TextArea1.Value + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label8.Visible = true;
            Response.Redirect("tarefas.aspx");
            //Label8.Text = "Tarefa Adicionada com Sucesso!";
            Select1.Items[Select1.SelectedIndex].Text = "";
            Select2.Items[Select2.SelectedIndex].Text = "";
            TextBox2.Text = "";
            TextBox1.Text = "";
            TextArea1.Value = "";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("tarefas.aspx");
        }
    }
}
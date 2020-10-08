using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace BillProject
{
    public partial class GenerateNew_Bill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bind();
            due();
        }
        void bind()
        {
            string p = "select * from generatebills";
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Integrated Security=True");
            con.Open();
            SqlDataAdapter adp = new SqlDataAdapter(p, con);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        void due()
        {
            string p = "select * from generatebills where(billduedate>='10-10-2020')";
            SqlConnection con = new SqlConnection("Data Source = (localdb)\\MSSQLLocalDB; Integrated Security = True");
            con.Open();
            SqlDataAdapter adp = new SqlDataAdapter(p, con);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source = (localdb)\\MSSQLLocalDB; Integrated Security = True");
            con.Open();
            string q = "Insert into generatebills values('" + TextBox1.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList2.SelectedItem.Text + "','" + DropDownList3.SelectedItem.Text + "')";
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.ExecuteNonQuery();
            Label1.Text = "Generated successfully";
            
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            bind();
        }

        protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView2.PageIndex = e.NewPageIndex;
            due();
        }
    }
}
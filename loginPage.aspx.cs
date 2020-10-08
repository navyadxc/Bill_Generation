using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace BillProject
{
    public partial class loginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string q = "select * from register where name='" + TextBox1.Text + "' and password='" + TextBox2.Text + "' ";
           
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Integrated Security=True");
            
            con.Open();

            SqlCommand cmd = new SqlCommand(q, con);
                
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Response.Redirect("GenerateBill.aspx");
            }
            else
            {
                Label1.Text = "Wrong UserName and password....Register if You are a New User";
               // Response.Redirect("RegisterForm.aspx");
               
            }
        }
    }
}
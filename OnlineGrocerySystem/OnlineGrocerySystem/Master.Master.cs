using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace OnlineGrocerySystem
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Welcome " + Session["user"];
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string url = "Random.aspx?";
            url += "Name=" + txtSearch.Text;
            Response.Redirect(url);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Fruits.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Vegetables.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Diary.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string str = WebConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "delete from Cart";
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Home.aspx");
        }
    }
}
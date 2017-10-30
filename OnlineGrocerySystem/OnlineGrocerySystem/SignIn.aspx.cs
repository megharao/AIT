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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = WebConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(str);
            con.Open();
            string chk = "select count(*) from Customer where EmailID='" + TextBox1.Text + "'";
            string user= "select Name from Customer where EmailID='" + TextBox1.Text + "'";
            SqlCommand cmdd = new SqlCommand(user, con);
            Session["user"] = cmdd.ExecuteScalar().ToString();
            SqlCommand com = new SqlCommand(chk, con);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
            if (temp >= 1)
            {
                con.Open();
                string chkpass = "select Password from Customer where EmailID='" + TextBox1.Text + "'";
                SqlCommand cmd = new SqlCommand(chkpass, con);
                string pass = cmd.ExecuteScalar().ToString().Replace(" ", "");
                if (pass == TextBox2.Text)
                {
                    Response.Redirect("Main.aspx");
                }
                else
                {
                    Response.Write("<script language=javascript>alert('Password is not correct');</script>");
                }
            }
            else
            {
                Response.Write("<script language=javascript>alert('UserID is not correct');</script>");
            }
        }
    }
}
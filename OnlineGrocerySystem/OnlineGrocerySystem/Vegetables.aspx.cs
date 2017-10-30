using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace OnlineGrocerySystem
{
    
    public partial class WebForm6 : System.Web.UI.Page
    {
        public static int id = 10;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ShoppingCart.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataListItem item = (DataListItem)((Button)sender).Parent;
            Label img = (Label)item.Controls[3];
            Label name = (Label)item.Controls[5];
            Label price = (Label)item.Controls[7];
            string str = WebConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "insert into Cart (Id, Name, Price, Image) values ('" + ++id + "','" + name.Text + "','" + price.Text + "','" + img.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}
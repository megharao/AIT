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
    public partial class Set : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void b1_Click(object sender, EventArgs e)
        {
            string str = WebConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand sql = con.CreateCommand();
            sql.CommandText = "update Product set InventoryLevel=@level where Name=@nam";
            sql.Parameters.AddWithValue("@level", t1.Text);
            sql.Parameters.AddWithValue("@nam", d1.SelectedValue);
            sql.ExecuteNonQuery();
            con.Close();
            Response.Write("<script language=javascript>alert('Inventory Level updated Successfully!');</script>");
            Response.Redirect("StoreData.aspx");
        }
    }
}
﻿using System;
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
    public partial class Van : System.Web.UI.Page
    {
        public static int id = 1;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = WebConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand sql = con.CreateCommand();
            sql.CommandText = "insert into Van (Id, VanNumber, Model) values('" + ++id + "','" + TextBox1.Text + "','" + TextBox2.Text + "') ";
            sql.ExecuteNonQuery();
            con.Close();
            Response.Redirect("StoreData.aspx");
        }
    }
}
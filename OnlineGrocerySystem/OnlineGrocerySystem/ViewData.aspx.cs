using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineGrocerySystem
{
    public partial class ViewData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "Employee")
            {
                GridView1.Visible = true;
                GridView2.Visible = false;
                GridView3.Visible = false;
                GridView4.Visible = false;
            }
            else if (DropDownList1.SelectedValue == "Farmer")
            {
                GridView1.Visible = false;
                GridView2.Visible = true;
                GridView3.Visible = false;
                GridView4.Visible = false;
            }
            else if (DropDownList1.SelectedValue == "Manufacturer")
            {
                GridView1.Visible = false;
                GridView2.Visible = false;
                GridView3.Visible = true;
                GridView4.Visible = false;
            }
            else
            {
                GridView1.Visible = false;
                GridView2.Visible = false;
                GridView3.Visible = false;
                GridView4.Visible = true;
            }
        }
    }
}
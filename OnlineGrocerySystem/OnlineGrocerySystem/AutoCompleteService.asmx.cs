using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;

namespace OnlineGrocerySystem
{
    /// <summary>
    /// Summary description for AutoCompleteService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
     [System.Web.Script.Services.ScriptService]
    public class AutoCompleteService : System.Web.Services.WebService
    {

        [WebMethod]
        public List<string> GetAutoCompleteData(string name)
        {
            List<string> result = new List<string>();
            using(SqlConnection con=new SqlConnection(@"Data Source=(localdb)\ProjectsV13;Initial Catalog=master;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"))
            {
                using(SqlCommand cmd=new SqlCommand("select DISTINCT Name from Product where Name LIKE '%' +@SearchText+'%'", con))
                {
                    con.Open();
                    cmd.Parameters.AddWithValue("@SearchText", name);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        result.Add(dr["Name"].ToString());
                    }
                    return result;
                }
            }
        }
        public string HelloWorld()
        {
            return "Hello World";
        }
    }
}

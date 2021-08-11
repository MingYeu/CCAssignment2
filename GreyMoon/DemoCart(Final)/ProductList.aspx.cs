using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace DemoCart
{
    public partial class ProductList : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\ArtDatabase.mdf;Integrated Security=True");
        string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {


            DataSet ds = GetData();

            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }
        private DataSet GetData()
        {
            using (SqlConnection sqlcon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\ArtDatabase.mdf;Integrated Security=True"))
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from dbo.Products", sqlcon);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        }


    }
}
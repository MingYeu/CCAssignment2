using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace DemoCart
{
    public partial class PurchaseHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlConnection sqlcon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\ArtDatabase.mdf;Integrated Security=True");
                string sql = "SELECT * FROM Cart";
                sqlcon.Open();
                SqlCommand cmd = new SqlCommand(sql, sqlcon);
                SqlDataReader dr = cmd.ExecuteReader();

                History.DataSource = dr;
                History.DataBind();

                sqlcon.Close();


            }
        }

    }
}
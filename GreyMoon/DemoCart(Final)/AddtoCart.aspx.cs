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
    public partial class AddtoCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
            if (!Page.IsPostBack)
            {
                if (Session["name"] != null)
                {
                    string username = (string)Session["name"];
                    SqlConnection sqlcon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\ArtDatabase.mdf;Integrated Security=True");
                    string sql = "SELECT * FROM (SELECT Username FROM Login) AS l LEFT OUTER JOIN Cart AS c ON l.Username = c.Username LEFT OUTER JOIN Products AS p ON c.CartProductId = p.productId WHERE l.Username = @username";

                    sqlcon.Open();
                    SqlCommand cmd = new SqlCommand(sql, sqlcon);
                    cmd.Parameters.AddWithValue("@Username", username);
                    SqlDataReader dr = cmd.ExecuteReader();

                    //CartView.DataSource = dr;
                    //CartView.DataBind();

                    sqlcon.Close();
                }
            }
        }

        protected void btnHistory_Click(object sender, EventArgs e)
        {
            Response.Redirect("History.aspx");
        }
    }
}
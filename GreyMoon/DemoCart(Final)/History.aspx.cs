using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace DemoCart
{
    public partial class History : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string username = Session["username"].ToString();
                SqlConnection sqlcon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\ArtDatabase.mdf;Integrated Security=True");
                string sql = "SELECT HistoryProdId as 'History No.', UsernameHistory as 'Username', TotalPrice as 'Total Payment (RM)', DateTime as 'Payment Date' FROM History WHERE UsernameHistory = @Username";

                sqlcon.Open();
                SqlCommand cmd = new SqlCommand(sql, sqlcon);
                cmd.Parameters.AddWithValue("@Username", username);
                SqlDataReader dr = cmd.ExecuteReader();

                gvHistory.DataSource = dr;
                gvHistory.DataBind();

                sqlcon.Close();
                
                
            }
            
        }
    }
}
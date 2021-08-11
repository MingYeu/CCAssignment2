using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Globalization;

namespace DemoCart
{
    public partial class productDetails : System.Web.UI.Page
    {
        string maxQty = "";
        SqlConnection sqlcon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\ArtDatabase.mdf;Integrated Security=True");
        string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Request.QueryString["view"].ToString();
            }

            if (Request.QueryString["view"] == null)
            {
                Response.Write("Alert('error')");
            }
            else
            {
                SqlConnection connection = new SqlConnection(strCon);
                string sql = "select * from dbo.Products where ProductId=" + Request.QueryString["view"].ToString();


                sqlcon.Open();
                SqlCommand cmd = new SqlCommand(sql, sqlcon);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    lblArtName.Text = reader.GetValue(1).ToString();
                    lblProduceDate.Text = reader.GetValue(4).ToString();
                    lblPrice.Text = reader.GetValue(2).ToString();
                    lblQuantity.Text = reader.GetValue(7).ToString();

                    if (reader.GetValue(3).ToString() == "1")
                        lblTypeOfArt.Text = "Graphic Art";
                    else if (reader.GetValue(3).ToString() == "2")
                        lblTypeOfArt.Text = "Visual Art";
                    else
                        lblTypeOfArt.Text = "Plastic Art";

                    lblDescription.Text = reader.GetValue(6).ToString();

                    Image1.ImageUrl = reader.GetValue(5).ToString();
                    maxQty = reader["Quantity"].ToString();

                }
                sqlcon.Close();
            }
            RangeValidator1.MaximumValue = maxQty;
        }

        protected void btncart_Click(object sender, EventArgs e)
        {
            /*
            if (Session["username"] == null)
            {
                Response.Write("<script>alert('You havent logged in... Press OK redirect to the Login page!')</script>");
                Response.Redirect("Login.aspx");
            }*/

            if (!User.Identity.IsAuthenticated)
            {
                SqlConnection sqlcon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\ArtDatabase.mdf;Integrated Security=True");

                string id = Request.QueryString["view"];
                string username = (string)Session["username"];
                int quantity = int.Parse(qtyProduct.Text);
                float price = quantity * float.Parse(lblPrice.Text);
                float unitPrice = float.Parse(lblPrice.Text);

                //HttpCookie cookName = new HttpCookie("price");
                //cookName.Value = "totalprice";

                string sql = "INSERT INTO Cart (CartProductId,Username,Quantity,Price,UnitPrice) VALUES (@id,@username,@quantity,@price,@unitprice)";

                SqlCommand cmd = new SqlCommand(sql, sqlcon);

                cmd.Parameters.AddWithValue("@id", id);
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@quantity", quantity);
                cmd.Parameters.AddWithValue("@price", price);
                cmd.Parameters.AddWithValue("@unitprice", unitPrice);
                sqlcon.Open();
                cmd.ExecuteNonQuery();
                sqlcon.Close();

                Response.Write("<script>alert('This product already added to your cart.')</script>");

            }
            else
            {
                string HTMLPath = "Login.aspx";
                ShowConfirmAlert("You havent logged in... Press OK redirect to the Login page", HTMLPath);
            }

        }
        public static void ShowConfirmAlert(string message, string confirmurl)
        {
            if (message == null)
                message = "";
            System.Web.HttpContext.Current.Response.Write("<script Language=Javascript>if( confirm('" + message + "') ) {document.location.href='" + confirmurl + "'; } else { }</script>");
        }
        protected void btnbuynow_Click(object sender, EventArgs e)
        {
            /*
            if (Session["username"] == null)
            {
                //string HTMLPath = "Login.aspx";
                //ShowConfirmAlert("You havent logged in... Press OK redirect to the Login page", HTMLPath);
                Response.Write("<script>alert('You havent logged in... Press OK redirect to the Login page!')</script>");
                Response.Redirect("Login.aspx");
                
            }*/

            if (!User.Identity.IsAuthenticated)
            {

                SqlConnection sqlcon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\ArtDatabase.mdf;Integrated Security=True");

                string id = Request.QueryString["view"];
                string username = (string)Session["username"];
                int quantity = int.Parse(qtyProduct.Text);
                float price = quantity * float.Parse(lblPrice.Text);
                float unitPrice = float.Parse(lblPrice.Text);

                //HttpCookie cookName = new HttpCookie("price");
                //cookName.Value = "totalprice";

                string sql = "INSERT INTO Cart (CartProductId,Username,Quantity,Price,UnitPrice) VALUES (@id,@username,@quantity,@price,@unitprice)";

                SqlCommand cmd = new SqlCommand(sql, sqlcon);

                cmd.Parameters.AddWithValue("@id", id);
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@quantity", quantity);
                cmd.Parameters.AddWithValue("@price", price);
                cmd.Parameters.AddWithValue("@unitprice", unitPrice);
                sqlcon.Open();
                cmd.ExecuteNonQuery();
                sqlcon.Close();

                Response.Redirect("AddtoCart_Test.aspx");
            }

            else
            {
                string HTMLPath = "Login.aspx";
                ShowConfirmAlert("You havent logged in... Press OK redirect to the Login page", HTMLPath);
            }
        }
    }
}
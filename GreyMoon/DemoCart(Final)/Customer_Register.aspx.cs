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
    public partial class WebForm2 : System.Web.UI.Page
    {
        string UserType = "customer";
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\ArtDatabase.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string check = "select count(*) from [Login] where Email = '" + txtemail.Text + "' ";
            string checkPhone = "select count(*) from [Login] where Phone = '" + txtphone.Text + "' ";
            SqlCommand checkcom = new SqlCommand(check, con);
            SqlCommand checkpho = new SqlCommand(checkPhone, con);

            con.Open();
            int temp = Convert.ToInt32(checkcom.ExecuteScalar().ToString());
            int tempPhone = Convert.ToInt32(checkpho.ExecuteScalar().ToString());
            con.Close();

            if (temp == 1)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alertMessage", "alert('" + txtemail.Text + " Email has been taken ');", true);
            }

            if(tempPhone ==1)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alertMessage", "alert('" + txtphone.Text + " Phone has been taken ');", true);
            }

            else
            {


                    string ins = "Insert into [Login](Username, Password, UserType, Email, FirstName, LastName, Phone) values('" + txtusername.Text + "', '" + txtpassword.Text + "', '" + UserType + "', '" + txtemail.Text + "', '" + txtfname.Text + "' ,'" + txtlname.Text + "','" + txtphone.Text + "')";
                    SqlCommand com = new SqlCommand(ins, con);
                    con.Open();
                    com.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("Login.aspx");


            }


        }

        //}
    }
}
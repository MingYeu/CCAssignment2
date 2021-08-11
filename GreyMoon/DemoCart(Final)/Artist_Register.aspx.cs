using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.Script.Serialization;
using System.Data.SqlClient;

namespace DemoCart
{
    public partial class Register : System.Web.UI.Page
    {
        string UserType = "artist";
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\ArtDatabase.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_register_Click(object sender, EventArgs e)
        {

            string check = "select count(*) from [Login] where Email = '" + txtemail.Text + "' ";

            SqlCommand checkcom = new SqlCommand(check, con);

            con.Open();
            int temp = Convert.ToInt32(checkcom.ExecuteScalar().ToString());

            con.Close();

            if (temp == 1)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alertMessage", "alert('" + txtemail.Text + " Email has been taken ');", true);
            }

            else
            {
                    btnupload.SaveAs(Server.MapPath("~/ArtProduct/") + Path.GetFileName(btnupload.FileName));
                    String link = "ArtProduct/" + Path.GetFileName(btnupload.FileName);
                    string ins = "Insert into [Login](Username, Password, UserType, Email, ImageId, FirstName, LastName, Phone) values('" + txtusername.Text + "', '" + txtpassword.Text + "', '" + UserType + "', '" + txtemail.Text + "', '" + link + "','" + txtfname.Text + "' ,'" + txtlname.Text + "','" + txtphone.Text + "')";
                    SqlCommand com = new SqlCommand(ins, con);
                    con.Open();
                    com.ExecuteNonQuery();
                    con.Close();

                    Response.Redirect("Login.aspx");
                    

            }
        }
}
    
}
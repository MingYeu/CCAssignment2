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
    public partial class Login : System.Web.UI.Page
    {
        
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\ArtDatabase.mdf;Integrated Security=True");

        public object CheckState { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["username"] = null;
            if (!IsPostBack)
            {
                if (Request.Cookies["username"] != null && Request.Cookies["password"] != null)
                {
                    txtUser.Text = Request.Cookies["username"].Value;
                    txtpassword.Attributes["value"] = Request.Cookies["password"].Value;
                }
            }
            Status_Check_Box.Attributes.Add("onclick", "radioMe(event);");
           
        }

        protected void Unnamed4_Click(object sender, EventArgs e)
        {
            if (RememberMe.Checked)
            {
                Response.Cookies["username"].Value = txtUser.Text;
                Response.Cookies["password"].Value = txtpassword.Text;
                Response.Cookies["username"].Expires = DateTime.Now.AddMinutes(1);
                Response.Cookies["password"].Expires = DateTime.Now.AddMinutes(1);
            }
            else
            {
                Response.Cookies["username"].Expires = DateTime.Now.AddMinutes(-1);
                Response.Cookies["password"].Expires = DateTime.Now.AddMinutes(-1);
            }

            string chkbox_status = "";
            for (int i = 0; i < Status_Check_Box.Items.Count; i++)
            {
                if (Status_Check_Box.Items[i].Selected)
                {
                    if (chkbox_status == "")
                    {
                        chkbox_status = Status_Check_Box.Items[i].Value;
                      
                    }

                    
                }
            }
            if (chkbox_status == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please select your user type ');", true);

            }

            if(txtUser.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Username is required ');", true);

            }

            if(txtpassword.Text =="")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Password is required ');", true);
            }


            string check = "select count(*) from [Login] where Username = '" + txtUser.Text + "' and Password = '" + txtpassword.Text + "' and UserType = '" + chkbox_status + "' ";
            
            SqlCommand com = new SqlCommand(check, con);
            
            con.Open();
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
            if(temp == 1)
            {
               
                    Session["username"] = txtUser.Text;
                    Session["status"] = chkbox_status;
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Login Successful');", true);
                Response.Redirect("ProductList.aspx");
               

            }

            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Your Username or Password is Invalid');", true);

            }
        }

        protected void Unnamed8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customer_Register.aspx");
        }

        protected void Unnamed7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Artist_Register.aspx");
        }
    }
}
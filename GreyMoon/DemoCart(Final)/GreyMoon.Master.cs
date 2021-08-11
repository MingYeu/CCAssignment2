using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace DemoCart
{
    public partial class GreyMoon : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Set the session named username and current DateTime to the
            //Labels User Control properties
            if (Session["username"] != null)
            {
                ctlStatus.UserName = "You logged on as " + Session["username"].ToString();
                ctlStatus.TimeStatus = "You logged on at " + DateTime.Now.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddToCart_Test.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("History.aspx");
        }

        //protected void Button_Click(object sender, EventArgs e)
        //{
        //    if(Status.Text != "artist")
        //    {
        //        Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Only Artist is Allow ');", true);
        //    }
        //    else
        //    {
        //        Response.Redirect("demo.aspx");
        //    }
        //}
    }
}
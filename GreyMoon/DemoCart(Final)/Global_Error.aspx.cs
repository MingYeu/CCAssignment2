using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoCart
{
    public partial class Global_Error : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Exception ex = new Exception();
            ex = (Exception)Application["ex"];
            PageError.Text = (string)Application["location"];
            ErrorMessage.Text = (string)Application["Message"];
            InnerMessage.Text = (string)Application["InnerMessage"];
        }
    }
}
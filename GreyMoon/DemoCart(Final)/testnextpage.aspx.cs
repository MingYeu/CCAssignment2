using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoCart
{
    public partial class testnextpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            passuser.Text = (string)Session["user"];
        }
    }
}
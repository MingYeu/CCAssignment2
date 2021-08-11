using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoCart
{
public partial class Labels : System.Web.UI.UserControl
    {
        public string UserName { get; set; } = " ";
        public string TimeStatus { get; set; } = " ";
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUserName.Text = UserName;
            lblLoginTime.Text = TimeStatus;
        }
    }
}
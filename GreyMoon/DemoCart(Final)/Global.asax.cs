using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace DemoCart
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {


        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {
            HttpContext con = HttpContext.Current;
            var v = Server.GetLastError();

            var HttpEx = v as HttpException;
            if(HttpEx != null && HttpEx.GetHttpCode()==404)
            {
                Response.Redirect("ErrorHanding.aspx");
            }

            else
            {
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                Application["exception"] = v;
                Application["location"] = Request.Url.ToString();
                Application["Message"] = v.Message;
                Application["InnerMessage"] = v.InnerException.ToString();
                Server.ClearError();
                Response.Redirect("Global_Error.aspx");


            }
        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}
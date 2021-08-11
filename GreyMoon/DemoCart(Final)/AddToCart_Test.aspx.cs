using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Net.Mail;
using System.Net.Mime;
using System.IO;
using System.Text;

namespace DemoCart
{
    public partial class AddToCart_Test : System.Web.UI.Page
        
    {
        SqlConnection sqlcon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\ArtDatabase.mdf;Integrated Security=True");
        private static string userName = "";
        private static double totalprice = 0;
        string[] arrayProduct = { };
        int[] quantityProduct = { };
        float[] priceProduct = { };

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.MaintainScrollPositionOnPostBack = true;
            if (!Page.IsPostBack)
            {
                string username = (string)Session["username"];
           
                string sql = "SELECT * FROM (SELECT Username FROM Login) AS l LEFT OUTER JOIN Cart AS c ON l.Username = c.Username LEFT OUTER JOIN Products AS p ON c.CartProductId = p.productId WHERE l.Username = @username";

                sqlcon.Open();
                SqlCommand cmd = new SqlCommand(sql, sqlcon);
                cmd.Parameters.AddWithValue("@Username", username);
                DataSet ds = new DataSet();
                SqlDataReader dr = cmd.ExecuteReader();
                ImgList.DataSource = dr ;
                ImgList.DataBind();

                sqlcon.Close();

                getTotalPayment();
                getUsername();
            }
            if (PayMethodBox.SelectedValue == "card")
            {
                CardInfo.Visible = true;
            }
            else
            {
                CardInfo.Visible = false;
            }
            //string price = Request.Cookies["totalprice"].Value;
        }

        protected void getTotalPayment()
        {
            string username = (string)Session["username"];
            sqlcon.Open();
            SqlDataAdapter sda = new SqlDataAdapter("SELECT SUM(Price) FROM Cart WHERE Username = @username", sqlcon);
            sqlcon.Close();
            sda.SelectCommand.Parameters.AddWithValue("@Username", username);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            lblTotalPayment.Text = dt.Rows[0][0].ToString();
        }

        //get cust_id
        protected void getUsername()
        {
            if (!IsPostBack)
            {
                //if (Session["UserId"] == null)
                //{
                //    sqlcon.Open();
                //    string getUserId = "SELECT [Username] FROM [Login] WHERE ([Username] = @Username)";
                //    SqlCommand cmd = new SqlCommand(getUserId, sqlcon);
                //    cmd.Parameters.AddWithValue("@Username", userName);
                //    Session["Username"] = cmd.ExecuteScalar().ToString();
                //    sqlcon.Close();
                //}


            //get cust_info
           if (Session["username"] != null)
            {
             sqlcon.Open();
            string getCustId = "SELECT * FROM Login WHERE ([Username] = @Username)";
            SqlCommand cmd = new SqlCommand(getCustId, sqlcon);
             cmd.Parameters.AddWithValue("@Username", Session["username"].ToString());
            //cmd.Parameters.AddWithValue("@Cust_ID", Session["CustId"].ToString());
            SqlDataReader custDetails = cmd.ExecuteReader();
            if (custDetails.HasRows)
             {
             while (custDetails.Read())
             {
            Session["Username"] = custDetails["Username"].ToString();
            Session["FirstName"] = custDetails["FirstName"].ToString();
            Session["LastName"] = custDetails["LastName"].ToString();
            Session["Phone"] = custDetails["Phone"].ToString();
             }
            sqlcon.Close();
       }
}
                 nameBox.Text = Session["Username"].ToString();
                 FnameBox.Text = Session["FirstName"].ToString();
                 LnameBox.Text = Session["LastName"].ToString();
                 phoneBox.Text = Session["Phone"].ToString();
       }
        }

        //protected void EmailReceipt()
        //{

        //    string to = Session["username"].ToString(); //To user email address
        //    string from = "greymoonartgallery2000@gmail.com"; //From address    
        //    MailMessage message = new MailMessage(from, to);

        //    //attachment
        //    string file = Server.MapPath("~/PDF/OrderID_" + Request.QueryString["OrderId"] + ".pdf");
        //    Attachment data = new Attachment(file, MediaTypeNames.Application.Octet);

        //    message.Attachments.Add(data);

        //    //email
        //    string mailbody = "Hey!" +
        //        " Thank you for your purchase at Grey Moon Art Gallery, kindly refer below attachment for your invoice reference. Have a nice day! :)";
        //    message.Subject = "Yay! Your order id #" + Request.QueryString["OrderId"] + " is confirmed";
        //    message.Body = mailbody;
        //    message.BodyEncoding = Encoding.UTF8;
        //    message.IsBodyHtml = true;
        //    SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
        //    System.Net.NetworkCredential basicCredential1 = new
        //    System.Net.NetworkCredential("greymoonartgallery2000@gmail.com", "1234");
        //    client.EnableSsl = true;
        //    client.UseDefaultCredentials = false;
        //    client.Credentials = basicCredential1;
        //    try
        //    {
        //        client.Send(message);
        //    }

        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //}

        ////Email sending function
        

        public void emailSending()
        {
            string orderDetails = "";
            //generate order details
            for (int i = 0; i < ImgList.Items.Count; i++)
            {
                string artName = "";
                string qtyValue = "";
                string unitPValue = "";
                string subTotalValue = "";
                Label qtyLbl = ImgList.Items[i].FindControl("Label2") as Label;
                Label unitPLbl = ImgList.Items[i].FindControl("Label3") as Label;
                Label art_Title = ImgList.Items[i].FindControl("Label1") as Label;
                Label subTotalLabel = ImgList.Items[i].FindControl("Label4") as Label;

                if (qtyLbl.Text != "")
                {
                    qtyValue = qtyLbl.Text.ToString();
                }
                if (unitPLbl.Text != "")
                {
                    unitPValue = unitPLbl.Text.ToString();
                }
                if (art_Title.Text != "")
                {
                    artName = art_Title.Text.ToString();
                }
                if (subTotalLabel.Text != "")
                {
                    subTotalValue = subTotalLabel.Text.ToString();
                }
                orderDetails = orderDetails + "<tr id=\"itemRow\">" +
                    "<td class=\"Art_col\">" + artName + "</td>" +
                    "<td class=\"Qty_col\">" + qtyValue + "</td>" +
                    "<td class=\"Up_col\">" + unitPValue + "</td>" +
                    "<td class=\"Total_col\">" + subTotalValue + "</td>" +
                    "</tr>";
            }

            string toEmail = "junshenyeoh@gmail.com";
            string fromEmail = "greymoonartgallery2000@gmail.com";
            string emailSMTPHost = "smtp.gmail.com";
            string emailSubject = "Your payment is successful with Grey Moon Art Gallery - Order" + Session["username"]; //subject
           
            if (Session["username"] != null)
            {
                string sqlEmail = "SELECT * FROM Login WHERE Username = @username";
                SqlCommand cmd = new SqlCommand(sqlEmail, sqlcon);
                cmd.Parameters.AddWithValue("@Username", Session["username"].ToString());
                sqlcon.Open();
                SqlDataReader drEmail = cmd.ExecuteReader();

                while (drEmail.Read())
                {
                    toEmail = (string)drEmail["Email"];
                }
                sqlcon.Close();

            }

            string emailName = fromEmail;

           
            string HTMLPath = Server.MapPath(@"~/Email_Template/Checkout.html");
            StreamReader HtmlStr = new StreamReader(HTMLPath);
            string MailContent = HtmlStr.ReadToEnd();
            MailContent = MailContent.Replace("[ReceiverName]", nameBox.Text.ToString());
            MailContent = MailContent.Replace("[orderNo]", Session["username"].ToString());
            MailContent = MailContent.Replace("[Date]", DateTime.Now.ToString("yyyy-MM-dd"));
            MailContent = MailContent.Replace("[Price]", lblTotalPayment.Text.ToString());
            //MailContent = MailContent.Replace("[ImageSrc]", "cid:MyImage");
            MailContent = MailContent.Replace("[DetailTable]", orderDetails);
            MailContent = MailContent.Replace("[TotalAmt]", lblTotalPayment.Text.ToString());
            MailContent = MailContent.Replace("[Type]", PayMethodBox.SelectedValue.ToString());
            HtmlStr.Close();
            string emailBody = MailContent;
            string attachmentPath = Server.MapPath(@"~/logo2.PNG");
            Attachment inline = new Attachment(attachmentPath);
            inline.ContentDisposition.Inline = true;
            inline.ContentDisposition.DispositionType = DispositionTypeNames.Inline;
            inline.ContentId = "MyImage";
            inline.ContentType.MediaType = "image/png";

            using (MailMessage msg = new MailMessage(fromEmail, toEmail, emailSubject, emailBody))
            {
                msg.IsBodyHtml = true;  //allow html
                                        //msg.To.Add("xxx.xxx@hotmail.com");    //multiple receiver
                msg.Priority = MailPriority.High;

                msg.Attachments.Add(inline);
                SmtpClient client = new SmtpClient(emailSMTPHost);
                client.UseDefaultCredentials = false;
                client.Credentials = new System.Net.NetworkCredential(emailName, "2000grey");
                client.EnableSsl = true;
                client.Send(msg);
            } 
        }

        protected void clearBtn_Click(object sender, EventArgs e)
        {
            CardNoBox.Text = "";
            nameBox.Text = "";
            FnameBox.Text = "";
            LnameBox.Text = "";
            pcodeBox.Text = "";
            phoneBox.Text = "";
            stateBox.SelectedIndex = 0;
            PayMethodBox.SelectedIndex = 0;
            CVVBox.Text = "";
            MonthBox.Text = "";
            YearBox.Text = "";

        }

        protected void PayBtn_Click(object sender, EventArgs e)
        {
            //send email
            emailSending();
            string username = Session["username"].ToString();
            float price = float.Parse(lblTotalPayment.Text);
            DateTime today = DateTime.Now;

            string sqlPay = "INSERT INTO History (UsernameHistory,TotalPrice,DateTime) VALUES (@username,@price,@datetime)";
            SqlCommand cmdPay = new SqlCommand(sqlPay, sqlcon);
            cmdPay.Parameters.AddWithValue("@username", username);
            cmdPay.Parameters.AddWithValue("@price", price);
            cmdPay.Parameters.AddWithValue("datetime", today);
            sqlcon.Open();

            cmdPay.ExecuteNonQuery();
            
            sqlcon.Close();

            string sqlDelete = "DELETE FROM Cart WHERE Username = @username";
            SqlCommand cmdDelete = new SqlCommand(sqlDelete, sqlcon);
            cmdDelete.Parameters.AddWithValue("@username", username);
         
            sqlcon.Open();

            cmdDelete.ExecuteNonQuery();

            sqlcon.Close();
            Response.Redirect("ProductList.aspx");
        }

        protected void removeBtn_Click(object sender, CommandEventArgs e)
        {
            string productId = (string)e.CommandArgument;
            string username = Session["username"].ToString();

            string sqlRemove = "DELETE FROM Cart WHERE CartProductId = @productId AND Username = @username";
            SqlCommand removeCmd = new SqlCommand(sqlRemove, sqlcon);
            removeCmd.Parameters.AddWithValue("productId", productId);
            removeCmd.Parameters.AddWithValue("username", username);

            sqlcon.Open();
            removeCmd.ExecuteNonQuery();
            sqlcon.Close();

            Response.Redirect("AddToCart_Test.aspx");
        }

        /* Edit
        void Delete_Command(Object sender, DataListCommandEventArgs e)
        {

            // Retrieve the name of the item to remove.
            String item = ((Label)e.Item.FindControl("ItemLabel")).Text;

            // Filter the CartView for the selected item and remove it from
            // the data source.
            DataView.RowFilter = "Item='" + item + "'";
            if (CartView.Count > 0)
            {
                CartView.Delete(0);
            }
            CartView.RowFilter = "";

            // Set the Edit

        }*/

    }
}
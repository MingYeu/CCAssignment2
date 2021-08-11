using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

namespace DemoCart
{
    public partial class demo : System.Web.UI.Page
    {
        //String constring = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename="C:\Users\laiha\Downloads\DemoCart v8\DemoCart v7\DemoCart v3\DemoCart v2\
        //DemoCart\App_Data\ArtDatabase.mdf";Integrated Security=True;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            calendarDate.Text = Calendar1.SelectedDate.ToShortDateString();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
            SqlConnection sqlcon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\ArtDatabase.mdf;Integrated Security=True");
            FileUpload1.SaveAs(Server.MapPath("~/ArtProduct/") + Path.GetFileName(FileUpload1.FileName));
            String link = "ArtProduct/" + Path.GetFileName(FileUpload1.FileName);

            int num = 0;

            if (ddlTypeOfArt.SelectedValue.Equals("Graphic Art"))
                num = 1;
            else if (ddlTypeOfArt.SelectedValue.Equals("Visual Art"))
                num = 2;
            else
                num = 3;

                string ins = "Insert into [Products](ArtName, Quantity, TypeOfArt, Price, ProduceDate, ImageId, Description) values('" + txtArtName.Text + "', '" + txtQuantity.Text + "', '" 
                            + num + "', '" + txtPrice.Text + "', '" + calendarDate.Text + "', '" + link + "','" + txtDescription.Text + "')";
            SqlCommand com = new SqlCommand(ins, sqlcon);
            sqlcon.Open();
            com.ExecuteNonQuery();
            sqlcon.Close();

            lblSelect.Text = "Hi " + txtQuantity.Text + ". </br>"
                + "Your art ( " + txtArtName.Text + " )"
                + " is produced from " + calendarDate.Text + ". </br>"
                + "You have posted the art to public with RM " + txtPrice.Text
                + " and the description: </br>" + txtDescription.Text + ".";
        }
    }
}
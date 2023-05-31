using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineJobPortal.User
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;

        string Password;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnsend_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand();
            string query = @"Select* from[User] where Username = '" + txtUsername.Text + "' and EmailAddress = '" + txtEmail.Text + "'";
            cmd.CommandText = query;
            cmd.Connection = con;
            SqlDataAdapter sda = new SqlDataAdapter();
            sda.SelectCommand = cmd;
            DataSet ds = new DataSet();
            sda.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Password = ds.Tables[0].Rows[0]["Password"].ToString();
                sendpassword(Password, txtEmail.Text);
                LabelMessage.Visible = true;
                LabelMessage.Text = "Password has been send to Registered Email Address,Check your Mail Inbox!";
                LabelMessage.CssClass = "alert alert-success";
            }
            else
            {
                LabelMessage.Visible = true;
                LabelMessage.Text = "Invalid Username or Unregistered Email Address!";
                LabelMessage.CssClass = "alert alert-warning";
            }
            con.Close();
        }

        private void sendpassword(string password, string text)
        {
            SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
            SMTP.DeliveryMethod = SmtpDeliveryMethod.Network;
            SMTP.UseDefaultCredentials = false;
            SMTP.Credentials = new NetworkCredential("finderjob72@gmail.com", "JobFinder@1234");
            SMTP.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Forgot Password (JobFinder)";
            msg.Body = "Hello, \nYour Password is " + Password + "\n\nThank you & Regards\nJobFinder & Team";
            string toaddress = txtEmail.Text;
            msg.To.Add(toaddress);
            string fromaddress = "JobFinder<finderjob72@gmail.com>";
            msg.From = new MailAddress(fromaddress);
            try
            {
                SMTP.Send(msg);
            }
            catch (SqlException)
            {
                //esponse.Write("<script>alert('" + ex.Message + "')</script>");
                throw;
            }
        }
    }
}
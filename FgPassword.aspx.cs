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
    public partial class FgPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Btnsend_Click(object sender, EventArgs e)
        {
            string username = string.Empty;
            string password = string.Empty;
            string str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
            using (SqlConnection con = new SqlConnection(str))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT Username, Password FROM [User] WHERE EmailAddress  = @EmailAddress "))
                {
                    cmd.Parameters.AddWithValue("@EmailAddress ", txtEmail.Text.Trim());
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        if (sdr.Read())
                        {
                            username = sdr["Username"].ToString();
                            password = sdr["Password"].ToString();
                        }
                    }
                    con.Close();
                }
            }
            if (!string.IsNullOrEmpty(password))
            {
                MailMessage mm = new MailMessage("srushtinaik002@gmail.com", txtEmail.Text.Trim());
                mm.Subject = "Forgot Password (JobFinder)";
                mm.Body = string.Format("Hello, <br/> Your Username is: " + username + "<br/> Your Password is: " + password + "<br/> <br/> \n\n Thank you & Regards, <br/> \n \n JobFinder & Team");
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential();
                NetworkCred.UserName = "srushtinaik002@gmail.com";
                NetworkCred.Password = "Srushti@1234";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
                lblMsg.Visible = true;
                lblMsg.Text = "Username and Password has been send to Registered Email Address, Check your Mail Inbox!";
                lblMsg.CssClass = "alert alert-success";
            }
            else
            {
                lblMsg.Visible = true;
                lblMsg.Text = "Invalid Registered Email Address!";
                lblMsg.CssClass = "alert alert-warning";
            }
        }
    }
}
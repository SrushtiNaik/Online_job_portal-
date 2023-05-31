using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineJobPortal.User
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        SqlConnection con;
        string str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Btnsend_Click(object sender, EventArgs e)
        {
            try
            {
                string NewPassword = txtNewPassword.Text;
                string CurrentPassword = txtCurrentPassword.Text;
                string ConfirmPassword = txtConfirmPassword.Text;
                con = new SqlConnection(str);
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from [User] where Password='" + CurrentPassword + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    dr.Read();
                    con.Close();

                    if (NewPassword == ConfirmPassword)
                    {
                        con.Open();
                        cmd = new SqlCommand("update [User] set Password='" + NewPassword + "'where Password='" + CurrentPassword + "'", con);
                        int r = cmd.ExecuteNonQuery();
                        if (r > 0)
                        {
                            lblMsg.Visible = true;
                            lblMsg.Text = "Password updated Successfully!";
                            lblMsg.CssClass = "alert alert-success";
                            clear();
                        }
                        else
                        {
                            lblMsg.Visible = true;
                            lblMsg.Text = "Cannot update the records, please try after sometime!";
                            lblMsg.CssClass = "alert alert-danger";
                        }

                    }
                }
                else
                {
                    lblMsg.Visible = true;
                    lblMsg.Text = "Invalid Password, please type Correct password!";
                    lblMsg.CssClass = "alert alert-warning";
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                con.Close();
            }
        }

        private void clear()
        {
            txtNewPassword.Text = string.Empty;
            txtCurrentPassword.Text = string.Empty;
            txtNewPassword.Text = string.Empty;
        }
    }
}
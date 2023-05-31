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
    public partial class ResumeBuild : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader sdr;
        string str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
        string query;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    showUserInfo();
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }

        private void showUserInfo()
        {
            try
            {
                con = new SqlConnection(str);
                string query = "Select * from [User] where UserId=@userId";
                cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@userId", Request.QueryString["id"]);
                con.Open();
                sdr = cmd.ExecuteReader();
                if (sdr.HasRows)
                {
                    if (sdr.Read())
                    {
                        txtFirstName.Text = sdr["FirstName"].ToString();
                        txtLname.Text = sdr["LastName"].ToString();
                        txtUserName.Text = sdr["Username"].ToString();
                        txtEmail.Text = sdr["EmailAddress"].ToString();
                        txtContact.Text = sdr["ContactNo"].ToString();
                        txtAge.Text = sdr["Age"].ToString();
                        txtAddress.Text = sdr["Address"].ToString();
                        txtTenth.Text = sdr["TenthGrade"].ToString();
                        txtTwelfth.Text = sdr["TwelfthGrade"].ToString();
                        txtGraduation.Text = sdr["GraduationCGPA"].ToString();
                        txtPG.Text = sdr["PostGraduationCGPA"].ToString();
                        txtPhd.Text = sdr["Phd"].ToString();
                        txtAchievements.Text = sdr["ExceptionalWorksofar"].ToString();
                        txtWork.Text = sdr["CurrentlyWorking"].ToString();
                        txtExperience.Text = sdr["JobExperienece"].ToString();
                        txtCTC.Text = sdr["CurrentCTC"].ToString();
                        ddlState.SelectedValue = sdr["State"].ToString();
                        ddlCity.SelectedValue = sdr["City"].ToString();
                    }
                }
                else
                {
                    lblMsg.Visible = true;
                    lblMsg.Text = "User not found!";
                    lblMsg.CssClass = "alert alert-danger";
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            finally
            {
                con.Close();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                if (Request.QueryString["id"] != null)
                {
                    string concatQuery = string.Empty;
                    string filePath = string.Empty;
                    //bool isValidToExecute = false;
                    bool isValid = false;
                    con = new SqlConnection(str);
                    if (fuResume.HasFile)
                    {
                        if (Utils.IsValidExtension4Resume(fuResume.FileName))
                        {
                            concatQuery = "Resume=@resume,";
                            isValid = true;
                        }
                        else
                        {
                            concatQuery = string.Empty;
                        }
                    }
                    else
                    {
                        concatQuery = string.Empty;
                    }

                    query = @"Update [User] set Username=@Username,FirstName=@FirstName,LastName=@LastName,EmailAddress=@EmailAddress,
                            ContactNo=@ContactNo,Address=@Address,City=@City,State=@State,TenthGrade=@TenthGrade,TwelfthGrade=@TwelfthGrade,
                            GraduationCGPA=@GraduationCGPA,PostGraduationCGPA=@PostGraduationCGPA,Phd=@Phd,ExceptionalWorksofar=@ExceptionalWorksofar,
                            JobExperienece=@JobExperienece,CurrentlyWorking=@CurrentlyWorking,CurrentCTC=@CurrentCTC," + concatQuery + "Age=@Age where UserId=@UserId";
                    cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@Username", txtUserName.Text.Trim());
                    cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text.Trim());
                    cmd.Parameters.AddWithValue("@LastName", txtLname.Text.Trim());
                    cmd.Parameters.AddWithValue("@EmailAddress", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@ContactNo", txtContact.Text.Trim());
                    cmd.Parameters.AddWithValue("@Address", txtAddress.Text.Trim());
                    cmd.Parameters.AddWithValue("@State", ddlState.SelectedValue);
                    cmd.Parameters.AddWithValue("@City", ddlCity.SelectedValue);
                    cmd.Parameters.AddWithValue("@TenthGrade", txtTenth.Text.Trim());
                    cmd.Parameters.AddWithValue("@TwelfthGrade", txtTwelfth.Text.Trim());
                    cmd.Parameters.AddWithValue("@GraduationCGPA", txtGraduation.Text.Trim());
                    cmd.Parameters.AddWithValue("@PostGraduationCGPA", txtPG.Text.Trim());
                    cmd.Parameters.AddWithValue("@Phd", txtPhd.Text.Trim());
                    cmd.Parameters.AddWithValue("@ExceptionalWorksofar", txtAchievements.Text.Trim());
                    cmd.Parameters.AddWithValue("@JobExperienece", txtExperience.Text.Trim());
                    cmd.Parameters.AddWithValue("@CurrentlyWorking", txtWork.Text.Trim());
                    cmd.Parameters.AddWithValue("@CurrentCTC", txtCTC.Text.Trim());
                    cmd.Parameters.AddWithValue("@Age", txtAge.Text.Trim());
                    cmd.Parameters.AddWithValue("@UserId", Request.QueryString["id"]);
                    if (fuResume.HasFile)
                    {
                        if (Utils.IsValidExtension4Resume(fuResume.FileName))
                        {
                            Guid obj = Guid.NewGuid();
                            filePath = "Resumes/" + obj.ToString() + fuResume.FileName;
                            fuResume.PostedFile.SaveAs(Server.MapPath("~/Resumes/") + obj.ToString() + fuResume.FileName);

                            cmd.Parameters.AddWithValue("@resume", filePath);
                            isValid = true;
                        }
                        else
                        {
                            concatQuery = string.Empty;
                            lblMsg.Visible = true;
                            lblMsg.Text = "Please upload resume in .doc, .docx, .pdf format!";
                            lblMsg.CssClass = "alert alert-danger";
                        }
                    }
                    else
                    {
                        isValid = true;
                    }

                    if (isValid)
                    {
                        con.Open();
                        int r = cmd.ExecuteNonQuery();
                        if (r > 0)
                        {
                            lblMsg.Visible = true;
                            lblMsg.Text = "Resume details updated Successfully!";
                            lblMsg.CssClass = "alert alert-success";
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
                    lblMsg.Text = "Cannot update the records, please try <b>Relogin</b>!";
                    lblMsg.CssClass = "alert alert-danger";
                }
            }
            catch (SqlException ex)
            {
                if (ex.Message.Contains("Violation of UNIQUE KEY constraint"))
                {
                    lblMsg.Visible = true;
                    lblMsg.Text = "<b>" + txtUserName.Text.Trim() + "</b> Username already exist, please try a new one!";
                    lblMsg.CssClass = "alert alert-warning";
                }
                else
                {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");
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

        //protected void btnUploadResume_Click(object sender, EventArgs e)
        //{
        //    if (fuResume.HasFile)
        //    {
        //        if (fuResume.PostedFile.ContentLength < 20728650)
        //        {
        //            try
        //            {
        //              //lblMsg.Visible = true;
        //                lblMsg.Text = "File name: " + fuResume.PostedFile.FileName + "<br>" + fuResume.PostedFile.ContentLength + " kb<br>" + "Content type: " + fuResume.PostedFile.ContentType;
        //            }
        //            catch(Exception ex)
        //            {
        //              //lblMsg.Visible = true;
        //                lblMsg.Text = "ERROR: " + ex.Message.ToString();
        //            //  lblMsg.CssClass = "alert alert-danger";

        //            }
        //        }
        //        else
        //        {
        //          //lblMsg.Visible = true;
        //            lblMsg.Text = "File size exceeds maximum limit 20 MB.";
        //        }
        //    }
        //}
    }
}
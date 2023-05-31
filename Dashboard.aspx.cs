using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;

namespace OnlineJobPortal.Admin
{
    public partial class Dashboard : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter sda;
        DataTable dt;
        string str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //DataSet ds = new DataSet();
            //SqlDataAdapter da = new SqlDataAdapter("select * from Jobs", con);
            //da.Fill(ds);
            //Chart1.DataSource = ds;

            if (Session["Admin"] == null)
            {
                Response.Redirect("../User/Login.aspx");
            }
            if (!IsPostBack)
            {
                Users();
                Jobs();
                AppliedJobs();
                ContactCount();
                //GetChartData();

            }

            using (SqlConnection con = new SqlConnection(str))
            {
                //query to fetch State and getting Count of each state in table, the group by with Jobs
                using (SqlCommand cmd = new SqlCommand("SELECT State,count(State) FROM Jobs Group by State"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;

                        DataSet ds = new DataSet();
                        sda.Fill(ds);

                        DataTable ChartData = ds.Tables[0];

                        //storing total rows count to loop on each Record                          
                        string[] XPoints = new string[ChartData.Rows.Count];

                        int[] YPOints = new int[ChartData.Rows.Count];

                        for (int count = 0; count < ChartData.Rows.Count; count++)
                        {
                            // store values for X axis  
                            XPoints[count] = ChartData.Rows[count]["State"].ToString();
                            //store values for Y Axis  
                            YPOints[count] = Convert.ToInt32(ChartData.Rows[count][1]);

                        }
                        //binding chart control  
                        Jobstate.Series[0].Points.DataBindXY(XPoints, YPOints);

                        //Setting width of line  
                        Jobstate.Series[0].BorderWidth = 5;

                        //setting Chart type   
                        Jobstate.Series[0].ChartType = SeriesChartType.Pie;

                        //enable to show legend
                        Jobstate.Legends[0].Enabled = true;

                        //show pie chart in 3d
                        Jobstate.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;

                    }
                }
            }


            using (SqlConnection con = new SqlConnection(str))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT City,count(City) FROM Jobs Group by City"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;

                        DataSet ds = new DataSet();
                        sda.Fill(ds);

                        DataTable ChartData = ds.Tables[0];

                        //storing total rows count to loop on each Record                          
                        string[] XPoints = new string[ChartData.Rows.Count];

                        int[] YPOints = new int[ChartData.Rows.Count];

                        for (int count = 0; count < ChartData.Rows.Count; count++)
                        {
                            // store values for X axis  
                            XPoints[count] = ChartData.Rows[count]["City"].ToString();
                            //store values for Y Axis  
                            YPOints[count] = Convert.ToInt32(ChartData.Rows[count][1]);

                        }
                        //binding chart control  
                        JobCity.Series[0].Points.DataBindXY(XPoints, YPOints);

                        //Setting width of line  
                        JobCity.Series[0].BorderWidth = 5;

                        //setting Chart type   
                        JobCity.Series[0].ChartType = SeriesChartType.Doughnut;

                        //enable to show legend
                        JobCity.Legends[0].Enabled = true;

                        //show pie chart in 3d
                        JobCity.ChartAreas["JobArea"].Area3DStyle.Enable3D = true;

                    }
                }
            }

            using (SqlConnection con = new SqlConnection(str))
            {
                //query to fetch State and getting Count of each state in table, the group by with Jobs
                using (SqlCommand cmd = new SqlCommand("SELECT Gender,count(Gender) FROM [User] Group by Gender"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;

                        DataSet ds = new DataSet();
                        sda.Fill(ds);

                        DataTable ChartData = ds.Tables[0];

                        //storing total rows count to loop on each Record                          
                        string[] XPoints = new string[ChartData.Rows.Count];

                        int[] YPOints = new int[ChartData.Rows.Count];

                        for (int count = 0; count < ChartData.Rows.Count; count++)
                        {
                            // store values for X axis  
                            XPoints[count] = ChartData.Rows[count]["Gender"].ToString();
                            //store values for Y Axis  
                            YPOints[count] = Convert.ToInt32(ChartData.Rows[count][1]);

                        }
                        //binding chart control  
                        totalUsers.Series[0].Points.DataBindXY(XPoints, YPOints);

                        //Setting width of line  
                        totalUsers.Series[0].BorderWidth = 5;

                        //setting Chart type   
                        totalUsers.Series[0].ChartType = SeriesChartType.Column;

                        //enable to show legend
                        totalUsers.Legends[0].Enabled = true;

                        //show pie chart in 3d
                        totalUsers.ChartAreas["UsersArea"].Area3DStyle.Enable3D = true;

                    }
                }
            }
        }



        //[WebMethod]
        //[ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        //public static object[] GetChartData()
        //{
        //    List<Contact> data = new List<Contact>();
        //    //Here MyDatabaseEntities  is our dbContext
        //    //using (MyDatabaseEntities dc = new MyDatabaseEntities())
        //    //{
        //    //    data = dc.GoogleChartDatas.ToList();
        //    //}

        //    var chartData = new object[data.Count + 1];
        //    chartData[0] = new object[]{
        //        "Name",
        //        "Email",
        //        "Subject",
        //        "Message"
        //    };

        //    int j = 0;
        //    foreach (var i in data)
        //    {
        //        j++;
        //        chartData[j] = new object[] { i.Name.ToString(), i.Email, i.Subject, i.Message };
        //    }
        //    return chartData;
        //}




        private void ContactCount()
        {
            con = new SqlConnection(str);
            sda = new SqlDataAdapter("Select Count(*) from Contact", con);
            dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["Contact"] = dt.Rows[0][0];
            }
            else
            {
                Session["Contact"] = 0;
            }
        }

        private void AppliedJobs()
        {
            con = new SqlConnection(str);
            sda = new SqlDataAdapter("Select Count(*) from AppliedJobs", con);
            dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["AppliedJobs"] = dt.Rows[0][0];
            }
            else
            {
                Session["AppliedJobs"] = 0;
            }
        }

        private void Jobs()
        {
            con = new SqlConnection(str);
            sda = new SqlDataAdapter("Select Count(*) from Jobs", con);
            dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["Jobs"] = dt.Rows[0][0];
            }
            else
            {
                Session["Jobs"] = 0;
            }
        }

        private void Users()
        {
            con = new SqlConnection(str);
            sda = new SqlDataAdapter("Select Count(*) from [User]", con);
            dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["User"] = dt.Rows[0][0];
            }
            else
            {
                Session["User"] = 0;
            }
        }
    }
}
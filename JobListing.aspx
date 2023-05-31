<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="JobListing.aspx.cs" Inherits="OnlineJobPortal.User.JobListing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <style>
            @import url('https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900& display=swap');
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
            }

            .fullportion {
                background: black;
                min-height: 100vh;
                margin-top: 100vh;
            }

            .secton {
                position: fixed;
                left: 0;
                top: 0;
                height: 100%;
                width: 100%;
                pointer-events: none;
            }

                .secton .side {
                    position: absolute;
                    left: 0;
                    top: 0;
                    height: 100%;
                    width: 100%;
                }

                    .secton .side#slide1 {
                        clip-path: polygon(0 0, 0% 100%, 100% 100%);
                    }

                    .secton .side#slide2 {
                        clip-path: polygon(0 0, 100% 0, 100% 100%);
                    }

                    .secton .side video {
                        position: absolute;
                        left: 0;
                        top: 0;
                        height: 100%;
                        width: 100%;
                        object-fit: cover;
                    }

            .paragraphs {
                color: white;
                padding: 200px;
            }

                .paragraphs h2 {
                    color: #fff;
                    font-size: 4em;
                    justify-content: center;
                    align-items: center;
                }

                .paragraphs p {
                    color: white;
                    font-size: 1.2em;
                }
        </style>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css"
            rel="stylesheet" type="text/css" />
        <style type="text/css">
            .checkbox {
                padding-left: 20px;
            }

                .checkbox label {
                    display: inline-block;
                    vertical-align: middle;
                    position: relative;
                    padding-left: 5px;
                }

                    .checkbox label::before {
                        content: "";
                        display: inline-block;
                        position: absolute;
                        width: 17px;
                        height: 17px;
                        left: 0;
                        margin-left: -20px;
                        border: 1px solid #cccccc;
                        border-radius: 3px;
                        background-color: #fff;
                        -webkit-transition: border 0.15s ease-in-out, color 0.15s ease-in-out;
                        -o-transition: border 0.15s ease-in-out, color 0.15s ease-in-out;
                        transition: border 0.15s ease-in-out, color 0.15s ease-in-out;
                    }

                    .checkbox label::after {
                        display: inline-block;
                        position: absolute;
                        width: 16px;
                        height: 16px;
                        left: 0;
                        top: 0;
                        margin-left: -20px;
                        padding-left: 3px;
                        padding-top: 1px;
                        font-size: 11px;
                        color: #FF4357;
                    }

                .checkbox input[type="checkbox"] {
                    opacity: 0;
                    z-index: 1;
                }

                    .checkbox input[type="checkbox"]:checked + label::after {
                        font-family: "FontAwesome";
                        content: "\f00c";
                    }

            .checkbox-primary input[type="checkbox"]:checked + label::before {
                background-color: #FF4357;
                border-color: #FF4357;
            }

            .checkbox-primary input[type="checkbox"]:checked + label::after {
                color: #fff;
            }
        </style>
        <style>
            .radiobuttonlist {
                font: 12px Verdana, sans-serif;
                color: #000; /* non selected color */
            }

                .radiobuttonlist input {
                    width: 0px;
                    height: 20px;
                }

                .radiobuttonlist label {
                    color: #FF4357;
                    background-color: #FFF;
                    padding-left: 6px;
                    padding-right: 6px;
                    padding-top: 2px;
                    padding-bottom: 2px;
                    border: 1px solid #FF4357;
                    border-radius: 10%;
                    margin: 0px 0px 0px 0px;
                    white-space: nowrap;
                    clear: left;
                    margin-right: 5px;
                }

                .radiobuttonlist span.selectedradio label {
                    background-color: #FF4357;
                    color: #FFF;
                    font-weight: bold;
                    border-bottom-color: #F3F2E7;
                    padding-top: 4px;
                }

                .radiobuttonlist label:hover {
                    color: #CC3300;
                    background: #D1CFC2;
                }

            .radiobuttoncontainer {
                position: relative;
                z-index: 1;
            }

            .radiobuttonbackground {
                position: relative;
                z-index: 0;
                border: solid 1px #AcA899;
                padding: 10px;
                background-color: #F3F2E7;
            }
        </style>
        <div class="fullportion" id="fullportion">
            <div class="secton">
                <section>
                    <div class="side" id="slide1">
                        <video src="../assets/img/gallery/pexels-theo-decker-5944868.mp4" typeof="video/mp4" autoplay loop muted></video>
                    </div>
                    <div class="side" id="slide2">
                        <video src="../assets/img/gallery/pexels-theo-decker-5944868.mp4" typeof="video/mp4" autoplay loop muted></video>
                    </div>
                </section>
            </div>
            <div class="paragraphs">
                <h2 style="align-content: center; align-items: center">Get your Job</h2>
                <p>
                    A real job is one which you actually love to do. If you are not enjoying what you are doing then you are just doing the job for the sake of earning a living. 
           Such a job can increase your stress level and makes you unhappy and dissatisfied. Doing what you love can make you contribute to society in a better way and 
           also take your company to new heights. It also makes you comfortable and tries new ideas in your job.
                </p>
            </div>
        </div>
        <script>
            let slide1 = document.getElementById('slide1');
            let slide2 = document.getElementById('slide2');

            window.addEventListener('scroll', function () {
                slide1.style.left = -window.pageYOffset + 'px';
                slide2.style.left = window.pageYOffset + 'px';
            })
        </script>

    
        <!-- Hero Area End -->
        <!-- Job List Area Start -->
        <main>
            <!-- Job List Area Start -->
            <div class="job-listing-area pt-50 pb-0">
                <div class="container">
                    <div class="row">
                        <!-- Left content -->
                        <div class="col-xl-2 col-lg-3 col-md-4">
                            <div class="row">
                                <div class="col-12">
                                    <div class="small-section-tittle2 mb-45">
                                        <div class="ion">
                                            <svg
                                                xmlns="http://www.w3.org/2000/svg"
                                                xmlns:xlink="http://www.w3.org/1999/xlink"
                                                width="20px" height="12px">
                                                <path fill-rule="evenodd" fill="rgb(27, 207, 107)"
                                                    d="M7.778,12.000 L12.222,12.000 L12.222,10.000 L7.778,10.000 L7.778,12.000 ZM-0.000,-0.000 L-0.000,2.000 L20.000,2.000 L20.000,-0.000 L-0.000,-0.000 ZM3.333,7.000 L16.667,7.000 L16.667,5.000 L3.333,5.000 L3.333,7.000 Z" />
                                            </svg>
                                        </div>
                                        <h4>Filter Jobs</h4>
                                    </div>
                                </div>
                            </div>
                            <!-- Job Category Listing start -->
                            <div class="job-category-listing mb-50 pb-0">
                                <!-- single one -->
                                <div class="single-listing">
                                    <div class="small-section-tittle2">
                                        <h4>Job Category</h4>
                                    </div>
                                    <!-- Select job items start -->
                                    <div class="select-job-items2">
                                        <asp:DropDownList ID="ddlState" runat="server" DataSourceID="SqlDataSource2" CssClass="form-control w-100" AppendDataBoundItems="true" DataTextField="SName" DataValueField="SName" OnSelectedIndexChanged="ddlState_SelectedIndexChanged" >
                                            <asp:ListItem Value="0">Select State</asp:ListItem>
                                        </asp:DropDownList>
                                        <%--<asp:RequiredFieldValidator runat="server" ErrorMessage="State name is required" ControlToValidate="ddlState" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Size="Small" InitialValue="0"></asp:RequiredFieldValidator>--%>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT [SName] FROM [State]"></asp:SqlDataSource>
                                    </div>
                                    <br />
                                    <br />
                                    <br />

                                    <div class="select-job-items2">
                                        <asp:DropDownList ID="ddlCity" runat="server" AppendDataBoundItems="true" DataSourceID="SqlDataSource1" DataTextField="CityName" DataValueField="CityName" CssClass="form-control w-100" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged">
                                            <asp:ListItem Value="0">Select City</asp:ListItem>
                                        </asp:DropDownList>
                                        <%--<asp:RequiredFieldValidator runat="server" ErrorMessage="City name is required" ControlToValidate="ddlCity" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Size="Small" InitialValue="0"></asp:RequiredFieldValidator>--%>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT [CityName] FROM [City]"></asp:SqlDataSource>

                                    </div>
                                    <!--  Select job items End-->
                                    <!-- select-Categories start -->
                                    <div class="select-Categories pt-80 pb-50">
                                        <div class="small-section-tittle2">
                                            <h4>Job Type</h4>
                                        </div>
                                        <div class="checkbox checkbox-primary">
                                            <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True"
                                                RepeatDirection="Vertical" RepeatLayout="Flow" CssClass="styled"
                                                TextAlign="Right" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                                                <asp:ListItem>Full Time</asp:ListItem>
                                                <asp:ListItem>Part Time</asp:ListItem>
                                                <asp:ListItem>Remote</asp:ListItem>
                                                <asp:ListItem>Freelance</asp:ListItem>
                                                <asp:ListItem>WFH</asp:ListItem>
                                            </asp:CheckBoxList>
                                        </div>
                                    </div>
                                    <!-- select-Categories End -->
                                </div>
                                <!-- single two -->

                                <!-- single three -->
                                <div class="single-listing">
                                    <!-- select-Categories start -->
                                    <div class="select-Categories pb-50">
                                        <div class="small-section-tittle2">
                                            <h4>Posted Within</h4>
                                        </div>
                                        <div class="radiobuttoncontainer">
                                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="radiobuttonlist" AutoPostBack="true"
                                                OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatLayout="Flow">
                                                <asp:ListItem Value="0" Selected="True">Any</asp:ListItem>
                                                <asp:ListItem Value="1">Today</asp:ListItem>
                                                <asp:ListItem Value="2">Last 2 days</asp:ListItem>
                                                <asp:ListItem Value="3">Last 3 days</asp:ListItem>
                                                <asp:ListItem Value="4">Last 5 days</asp:ListItem>
                                                <asp:ListItem Value="5">Last 10 days</asp:ListItem>
                                                <asp:ListItem Value="6">Last 15 days</asp:ListItem>
                                                <asp:ListItem Value="7">Last 20 days</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                    </div>
                                    <!-- select-Categories End -->
                                    <div class="mb-1">
                                        <asp:LinkButton ID="lbFilter" runat="server" CssClass="btn btn-sm" Width="100%"
                                            OnClick="lbFilter_Click">Filter</asp:LinkButton>
                                    </div>
                                    <div class="mb-4">
                                        <asp:LinkButton ID="lbReset" runat="server" CssClass="btn btn-sm" Width="100%"
                                            OnClick="lbReset_Click">Reset</asp:LinkButton>
                                    </div>

                                </div>

                            </div>
                            <!-- Job Category Listing End -->
                        </div>
                        <!-- Right content -->
                        <div class="col-xl-9 col-lg-9 col-md-8">
                            <!-- Featured_job_start -->
                            <section class="featured-job-area">
                                <div class="container">
                                    <!-- Count of Job list Start -->
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="count-job mb-35">
                                                <asp:Label ID="lbljobCount" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Count of Job list End -->
                                    <!-- single-job-content -->
                                    <asp:DataList ID="DataList1" runat="server">
                                    <ItemTemplate>
                                    <div class="single-job-items mb-30">
                                        <div class="job-items">
                                            <div class="company-img">
                                                <a href="JobDetails.aspx?id=<%# Eval("JobId") %>">
                                                    <img width="80" src="<%# GetImageUrl( Eval("CompanyLogo")) %>" alt="">
                                                </a>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                                           <div class="job-tittle job-tittle2">
                                                        <a href="JobDetails.aspx?id=<%# Eval("JobId") %>">
                                                            <h5><%# Eval("JobTitle") %></h5>
                                                        </a>
                                                        <ul>
                                                            <li><%# Eval("CompanyName") %></li>
                                                            <li><i class="fas fa-map-marker-alt"></i><%# Eval("State") %>, <%# Eval("City") %></li>
                                                            <li><%# Eval("Salary") %></li>                                                            
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="items-link items-link2 f-right">
                                                    <a href="JobDetails.aspx?id=<%# Eval("JobId") %>"><%# Eval("JobType") %></a>
                                                    <span class="text-secondary">
                                                        <i class="fas fa-clock pr-1"></i>
                                                        <%# RelativeDate(Convert.ToDateTime(Eval("CreateDate"))) %>
                                                    </span>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:DataList>
                                </div>
                            </section>
                            <!-- Featured_job_end -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- Job List Area End -->

        </main>


    </main>
</asp:Content>

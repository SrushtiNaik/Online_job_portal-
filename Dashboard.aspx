<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="OnlineJobPortal.Admin.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css" />
    <script type="text/javascript" src="../fusioncharts/fusioncharts.js"></script>

    <style>
        .card {
            background-color: #fff;
            border-radius: 10px;
            border: none;
            position: relative;
            margin-bottom: 30px;
            box-shadow: 0 0.46875rem 2.1875rem rgba(90,97,105,0.1), 0 0.9375rem 1.40625rem rgba(90,97,105,0.1), 0 0.25rem 0.53125rem rgba(90,97,105,0.12), 0 0.125rem 0.1875rem rgba(90,97,105,0.1);
        }

        .l-bg-cherry {
            background: linear-gradient(to right, #493240, #f09) !important;
            color: #fff;
        }

        .l-bg-blue-dark {
            background: linear-gradient(to right, #373b44, #4286f4) !important;
            color: #fff;
        }

        .l-bg-green-dark {
            background: linear-gradient(to right, #0a504a, #38ef7d) !important;
            color: #fff;
        }

        .l-bg-orange-dark {
            background: linear-gradient(to right, #a86008, #ffba56) !important;
            color: #fff;
        }

        .card .card-statistic-3 .card-icon-large .fas, .card .card-statistic-3 .card-icon-large .far, .card .card-statistic-3 .card-icon-large .fab, .card .card-statistic-3 .card-icon-large .fal {
            font-size: 110px;
        }

        .card .card-statistic-3 .card-icon {
            text-align: center;
            line-height: 50px;
            margin-left: 15px;
            color: #000;
            position: absolute;
            right: -5px;
            top: 20px;
            opacity: 0.1;
        }

        .l-bg-cyan {
            background: linear-gradient(135deg, #289cf5, #84c0ec) !important;
            color: #fff;
        }

        .l-bg-green {
            background: linear-gradient(135deg, #23bdb8 0%, #43e794 100%) !important;
            color: #fff;
        }

        .l-bg-orange {
            background: linear-gradient(to right, #f9900e, #ffba56) !important;
            color: #fff;
        }

        .l-bg-cyan {
            background: linear-gradient(135deg, #289cf5, #84c0ec) !important;
            color: #fff;
        }
    </style>
    <style>
        .graphbox {
            position: relative;
            width: 100%;
            padding: 20px;
            display: grid;
            grid-template-columns: 1fr 2fr;
            grid-gap: 30px;
            min-height: 200px;
        }

        .chartbox {
            position: relative;
            background: #fff;
            padding: 20px;
            width: 100%;
            box-shadow: 0 7px 25px rgba(0,0,0,0.08);
            border-radius: 20px;
        }

        @media (max-width:991px) {
            .graphbox {
                grid-template-columns: 1fr;
                height: auto;
            }
        }
    </style>


    <%--<script src="Scripts/jquery-1.7.1.js"></script>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script>
        var chartData; // globar variable for hold chart data
        google.load("visualization", "1", { packages: ["corechart"] });

        // Here We will fill chartData

        $(document).ready(function () {

            $.ajax({
                url: "GoogleChart.aspx/GetChartData",
                data: "",
                dataType: "json",
                type: "POST",
                contentType: "application/json; chartset=utf-8",
                success: function (data) {
                    chartData = data.d;
                },
                error: function () {
                    alert("Error loading data! Please try again.");
                }
            }).done(function () {
                // after complete loading data
                google.setOnLoadCallback(drawChart);
                drawChart();
            });
        });


        function drawChart() {
            var data = google.visualization.arrayToDataTable(chartData);

            var options = {
                title: "Company Performance Product Category Wise",
                pointSize: 5
            };

            var columnChart = new google.visualization.ColumnChart(document.getElementById('Jobstate'));
            columnChart.draw(data, options);

        }

    </script>--%>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container pt-4">
        <div class="row">
            <div class="col-12 pb-3">
                <h2 class="text-center">Dashboard</h2>
            </div>

            <div class="col-md-10 mx-auto">
                <div class="row">

                    <div class="col-xl-3 col-lg-6">
                        <div class="card l-bg-cherry">
                            <div class="card-statistic-3 p-4">
                                <div class="card-icon card-icon-large">
                                    <i class="fas fa-users pr-2"></i>
                                </div>
                                <div class="mb-4">
                                    <h5 class="card-title mb-0">Total Users</h5>
                                </div>
                                <div class="row-align-items-center mb-2 d-flex">
                                    <div class="col-8">
                                        <h2 class="d-flex align-items-center mb-0">
                                            <% Response.Write(Session["User"]); %> <%--User count --%>
                                        </h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-3 col-lg-6">
                        <div class="card l-bg-blue-dark">
                            <div class="card-statistic-3 p-4">
                                <div class="card-icon card-icon-large">
                                    <i class="fas fa-briefcase pr-2"></i>
                                </div>
                                <div class="mb-4">
                                    <h5 class="card-title mb-0">Total Jobs</h5>
                                </div>
                                <div class="row-align-items-center mb-2 d-flex">
                                    <div class="col-8">
                                        <h2 class="d-flex align-items-center mb-0">
                                            <% Response.Write(Session["Jobs"]); %> <%--User count --%>
                                        </h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-3 col-lg-6">
                        <div class="card l-bg-green-dark">
                            <div class="card-statistic-3 p-4">
                                <div class="card-icon card-icon-large">
                                    <i class="fas fa-check-square pr-2"></i>
                                </div>
                                <div class="mb-4">
                                    <h5 class="card-title mb-0">Applied Jobs</h5>
                                </div>
                                <div class="row-align-items-center mb-2 d-flex">
                                    <div class="col-8">
                                        <h2 class="d-flex align-items-center mb-0">
                                            <% Response.Write(Session["AppliedJobs"]); %> <%--Applied jobs count --%>
                                        </h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-3 col-lg-6">
                        <div class="card l-bg-orange-dark">
                            <div class="card-statistic-3 p-4">
                                <div class="card-icon card-icon-large">
                                    <i class="fas fa-comments pr-2"></i>
                                </div>
                                <div class="mb-4">
                                    <h5 class="card-title mb-0">Contact List</h5>
                                </div>
                                <div class="row-align-items-center mb-2 d-flex">
                                    <div class="col-8">
                                        <h2 class="d-flex align-items-center mb-0">
                                            <% Response.Write(Session["Contact"]); %> <%--Contacted User count --%>
                                        </h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

   

    <div class="container pt-4">
        <div class="row">
            <div class="col-md-10 mx-auto">
                <div class="row"  style="text-align:center">

                    <div class="col-xl-4 col-lg-8">
                        <asp:Chart ID="Jobstate" runat="server" >
                            <Legends>
                                <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="False" Name="Default"
                                    LegendStyle="Row" />
                            </Legends>
                            <Series>
                                <asp:Series Name="Default"></asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1" BorderWidth="0"></asp:ChartArea>
                            </ChartAreas>
                        </asp:Chart>
                        <h6 style="text-align:center; color: black"><b>Jobs State Wise</b></h6>
                    </div>
                        

                    <div class="col-xl-4 col-lg-8">
                        <asp:Chart ID="JobCity" runat="server">
                            <Legends>
                                <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="False" Name="Default"
                                    LegendStyle="Row" />
                            </Legends>
                            <Series>
                                <asp:Series Name="Default"></asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="JobArea" BorderWidth="0"></asp:ChartArea>
                            </ChartAreas>
                        </asp:Chart>
                        <h6 style="text-align:center; color: black"><b>Jobs City Wise</b></h6>
                    </div>


                    <div class="col-xl-4 col-lg-8">
                        <asp:Chart ID="totalUsers" runat="server">
                            <Legends>
                                <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="False" Name="Default"
                                    LegendStyle="Row" />
                            </Legends>
                            <Series>
                                <asp:Series Name="Default"></asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="UsersArea" BorderWidth="0"></asp:ChartArea>
                            </ChartAreas>
                        </asp:Chart>
                        <h6 style="text-align:center; color: black"><b>Gender Ratio</b></h6>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

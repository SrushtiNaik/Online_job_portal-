<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OnlineJobPortal.User.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../chat.css">
    <link rel="stylesheet" href="../home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="../chat.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main>
        <style>
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            .showcase video {
                box-sizing: border-box;
                margin: 0;
                padding: 0;
                position: absolute;
                top: 11%;
                bottom: 70%;
                right: 0%;
                left: 0;
                width: 100%;
                height: 100%;
                object-fit: cover;
                opacity: 0.7;
                border-spacing: 0;
            }

            .overlay {
                position: absolute;
                top: 0;
                left: 0;
                right: 0%;
                width: 100%;
                height: 100%;
                mix-blend-mode: overlay;
            }

            .text {
                position: relative;
                z-index: 2;
                top: 70%;
                left: 0%;
                padding-top: 18%;
                padding-bottom: 20%;
            }

                .text h2 {
                    font-size: 4.5em;
                    font-weight: 800;
                    color: #fff;
                    line-height: 1em;
                    text-transform: uppercase;
                }

                .text h3 {
                    font-size: 3.5em;
                    font-weight: 700;
                    color: #fff;
                    line-height: 1em;
                    text-transform: uppercase;
                }

                .text p {
                    font-size: 1.1em;
                    color: #fff;
                    margin: 20px 0;
                    font-weight: 400;
                    max-width: 700px;
                }

                .text a {
                    display: inline-block;
                    font-size: 1em;
                    background: #fff;
                    padding: 10px 30px;
                    text-transform: uppercase;
                    text-decoration: none;
                    font-weight: 500;
                    margin-top: 10px;
                    color: #111;
                    letter-spacing: 2px;
                    transition: 0.2s;
                }

                    .text a:hover {
                        letter-spacing: 6px;
                    }

            @media (max-width: 991px) {

                .showcase,
                .showcase video {
                    padding: 40px;
                    padding-bottom: 20%;
                }

                .text h2 {
                    font-size: 3em;
                }

                .text h3 {
                    font-size: 2em;
                }
            }
        </style>
        <div class="slider-area ">
            <div class="container">                     
            <div class="showcase">
                <video src="../assets/img/gallery/pexels-tima-miroshnichenko-6195520.mp4" muted loop autoplay></video>
                <div class="overlay"></div>
                <div class="text">
                    <h2>Support</h2>
                    <h3>Local Businesses</h3>
                    <p>
                    Local businesses are the heartbeat of your neighborhood, 
                    the spine of your local economy, & the spirit of your town.
                    </p>
                    <a href="JobListing.aspx">Explore</a>
                </div>
            </div>
            </div>
        </div>
        <!-- slider Area Start-->
        <%--<div class="slider-area ">
            <!-- Mobile Menu -->
            <div class="slider-active">
                <div class="single-slider slider-height d-flex align-items-center" data-background="../assets/img/hero/h1_hero.jpg">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-6 col-lg-9 col-md-10">
                                <div class="hero__caption">
                                    <h1>Find the most exciting startup jobs</h1>
                                </div>
                            </div>
                        </div>
                        <!-- Search Box -->
                        <div class="row">
                            <div class="col-xl-8">
                                <!-- form -->
                                <%--<form action="#" class="search-box">
                                    <div class="input-form">
                                        <input type="text" placeholder="Job Tittle or keyword">
                                    </div>
                                    <div class="select-form">
                                        <div class="select-itms">
                                            <select name="select" id="select1">
                                                <option value="">Location BD</option>
                                                <option value="">Location PK</option>
                                                <option value="">Location US</option>
                                                <option value="">Location UK</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="search-form">
                                        <a href="#">Find job</a>
                                    </div>	
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>--%>
        <!-- slider Area End-->
        <!-- Our Services Start -->
        <div class="our-services section-pad-t30">
            <div class="container">
                <!-- Section Tittle -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-tittle text-center">
                            <span>FEATURED JOBS</span>
                            <h2>Browse Top Categories </h2>
                        </div>
                    </div>
                </div>
                <div class="row d-flex justify-contnet-center">
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                        <div class="single-services text-center mb-30">
                            <div class="services-ion">
                               <%-- <span class="flaticon-tour"></span>--%>
                                <img src="https://d2vj71og9gdu4k.cloudfront.net/WEB/service/e2e_ac.svg" height="90" width="70" />
                            </div>
                            <div class="services-cap">
                               <h5><a href="JobListing.aspx">HVAC Services</a></h5>
                                <span>(2)</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                        <div class="single-services text-center mb-30">
                            <div class="services-ion">
                                <%--<span class="flaticon-cms"></span>--%>
                                <img src="https://d2vj71og9gdu4k.cloudfront.net/WEB/service/Salon_at_Home2020102411.svg" height="90" width="70" />
                            </div>
                            <div class="services-cap">
                               <h5><a href="JobListing.aspx">Salon at Home</a></h5>
                                <span>(3)</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                        <div class="single-services text-center mb-30">
                            <div class="services-ion">
                                <%--<span class="flaticon-report"></span>--%>
                                <img src="https://d2vj71og9gdu4k.cloudfront.net/WEB/service/home_cleaning_20201027.svg" height="90" width="70" />
                            </div>
                            <div class="services-cap">
                               <h5><a href="JobListing.aspx">Electrical repairing</a></h5>
                                <span>(5)</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                        <div class="single-services text-center mb-30">
                            <div class="services-ion">
                                <%--<span class="flaticon-app"></span>--%>
                                <img src="https://d2vj71og9gdu4k.cloudfront.net/WEB/service/plumbling_20201027.svg" height="90" width="70" />
                            </div>
                            <div class="services-cap">
                               <h5><a href="JobListing.aspx">Plumbing</a></h5>
                                <span>(3)</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                        <div class="single-services text-center mb-30">
                            <div class="services-ion">
                                <%--<span class="flaticon-helmet"></span>--%>
                                <img src="https://d2vj71og9gdu4k.cloudfront.net/WEB/service/pest_control_20201027.svg" height="90" width="70" />
                            </div>
                            <div class="services-cap">
                               <h5><a href="JobListing.aspx">Pest Control</a></h5>
                                <span>(4)</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                        <div class="single-services text-center mb-30">
                            <div class="services-ion">
                                <%--<span class="flaticon-high-tech"></span>--%>
                                <img src="https://d2vj71og9gdu4k.cloudfront.net/WEB/service/e2e_carpentry.svg" height="90" width="70" />
                            </div>
                            <div class="services-cap">
                               <h5><a href="JobListing.aspx">Carpentry</a></h5>
                                <span>(3)</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                        <div class="single-services text-center mb-30">
                            <div class="services-ion">
                                <%--<span class="flaticon-real-estate"></span>--%>
                                <img src="https://d2vj71og9gdu4k.cloudfront.net/WEB/service/Packers_Movers__2020102411.svg" height="90" width="70" />
                            </div>
                            <div class="services-cap">
                               <h5><a href="JobListing.aspx">Packers & Movers</a></h5>
                                <span>(5)</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                        <div class="single-services text-center mb-30">
                            <div class="services-ion">
                                <%--<span class="flaticon-content"></span>--%>
                                <img src="https://d2vj71og9gdu4k.cloudfront.net/WEB/service/e2e_appliances.svg" height="90" width="70" />
                            </div>
                            <div class="services-cap">
                               <h5><a href="JobListing.aspx">Appliance Servicing</a></h5>
                                <span>(4)</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                        <div class="single-services text-center mb-30">
                            <div class="services-ion">
                                <%--<span class="flaticon-content"></span>--%>
                                <img src=" https://d2vj71og9gdu4k.cloudfront.net/WEB/service/Virus_Fumigation_Service2020031323.svg" height="90" width="70" />
                            </div>
                            <div class="services-cap">
                                <h5><a href="JobListing.aspx">Virus Fumigation</a></h5>
                                <span>(7)</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                        <div class="single-services text-center mb-30">
                            <div class="services-ion">
                                <%--<span class="flaticon-high-tech"></span>--%>
                                 <img src="https://media.istockphoto.com/vectors/icon-of-roller-paint-vector-iconic-design-vector-id855118014?k=20&m=855118014&s=170667a&w=0&h=izhrMi7YA9TXfJ0w5yKCAY_x-o1ptSDeUxAgpiSqqZc=" height="85" width="70" />
                            </div>
                            <div class="services-cap">                              
                                <h5><a href="JobListing.aspx">Painting</a></h5>
                                <span>(8)</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                        <div class="single-services text-center mb-30">
                            <div class="services-ion">
                                <%--<span class="flaticon-high-tech"></span>--%>
                                <img src="https://www.iconbunny.com/icons/media/catalog/product/cache/2/thumbnail/600x/1b89f2fc96fc819c2a7e15c7e545e8a9/3/7/370.1-construction-worker-icon-iconbunny.jpg" height="85" width="85" />
                            </div>
                            <div class="services-cap">                              
                                <h5><a href="JobListing.aspx">Reconstruction & Refurbishing</a></h5>
                                <span>(7)</span>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- More Btn -->
                <!-- Section Button -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="browse-btn2 text-center mt-50">
                            <a href="JobListing.aspx" class="border-btn2">Browse All Sectors</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Our Services End -->
        <!-- Online CV Area Start -->
         <div class="online-cv cv-bg section-overly pt-90 pb-120"  data-background="../assets/img/gallery/cv_bg.jpg">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-10">
                        <div class="cv-caption text-center">
                            <p class="pera1">KEY FEATURE</p>
                            <p class="pera2">Make a Difference with Your Online Resume!</p>
                            <a href="Login.aspx" class="border-btn2 border-btn4">Upload your cv</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Online CV Area End-->
        <!-- Featured_job_start -->
        <section class="featured-job-area feature-padding">
            <div class="container">
                <!-- Section Tittle -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-tittle text-center">
                            <span>Recent Job</span>
                            <h2>Featured Jobs</h2>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-xl-10">
                        <!-- single-job-content -->
                        <div class="single-job-items mb-30">
                            <div class="job-items">
                                <div class="company-img">
                                    <a href="JobDetails.aspx">
                                        <img src="../assets/img/icon/images.jpg" alt="" height="85" width="85"></a>
                                </div>
                                <div class="job-tittle">
                                    <a href="JobListing.aspx"><h4>Joshua Templeton</h4></a>
                                    <ul>
                                        <li>Freelancer</li>
                                        <li><i class="fas fa-map-marker-alt"></i>Karnataka, Bengaluru</li>
                                        <li>₹25000 - ₹30000</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="items-link f-right">
                                <a href="JobListing.aspx">Part Time</a>
                                <span>9 hours ago</span>
                            </div>
                        </div>
                        <!-- single-job-content -->
                        <div class="single-job-items mb-30">
                            <div class="job-items">
                                <div class="company-img">
                                    <a href="JobListing.aspx"><img src="https://media-exp1.licdn.com/dms/image/C5603AQGBY5m1mwNhag/profile-displayphoto-shrink_100_100/0/1622933882580?e=2159024400&v=beta&t=KUCIysVeH6pRR7lY0y8af-9E9wB0rUQc0j7oYk1mEqw" height="85" width="85"></a>
                                </div>
                                <div class="job-tittle">
                                    <a href="JobListing.aspx"><h4>Linda Martin</h4></a>
                                    <ul>
                                        <li>Esthetician</li>
                                        <li><i class="fas fa-map-marker-alt"></i>Santacruz, Mumbai</li>
                                        <li>₹5000 - ₹10000</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="items-link f-right">
                                <a href="JobListing.aspx">Full Time</a>
                                <span>8 hours ago</span>
                            </div>
                        </div>
                         <!-- single-job-content -->
                        <div class="single-job-items mb-30">
                            <div class="job-items">
                                <div class="company-img">
                                    <a href="JobListing.aspx"><img src="https://qph.fs.quoracdn.net/main-thumb-20790911-200-jyegyjflegbynqtdiqcapdvnhfmypeqv.jpeg" height="85" width="85" alt=""></a>
                                </div>
                                <div class="job-tittle">
                                    <a href="JobListing.aspx"><h4>Carpentary Services</h4></a>
                                    <ul>
                                        <li>Ironwood Carpentary & Furnishing</li>
                                        <li><i class="fas fa-map-marker-alt"></i>Khar, Mumbai</li>
                                        <li>₹3500 - ₹4000</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="items-link f-right">
                                <a href="JobListing.aspx">Full Time</a>
                                <span>7 hours ago</span>
                            </div>
                        </div>
                         <!-- single-job-content -->
                        <div class="single-job-items mb-30">
                            <div class="job-items">
                                <div class="company-img">
                                    <a href="JobListing.aspx">
                                        <img src="../assets/img/icon/house.png" height="85" width="85" alt=""></a>
                                </div>
                                <div class="job-tittle">
                                    <a href="JobListing.aspx"><h4>Yelp</h4></a>
                                    <ul>
                                        <li>House Servicing</li>
                                        <li><i class="fas fa-map-marker-alt"></i>Wadala, Mumbai</li>
                                        <li>₹2500 - ₹5000</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="items-link f-right">
                                <a href="JobListing.aspx">Full Time</a>
                                <span>3 hours ago</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Featured_job_end -->
        <!-- How  Apply Process Start-->
        <div class="apply-process-area apply-bg pt-150 pb-150" data-background="../assets/img/gallery/how-applybg.png">
            <div class="container">
                <!-- Section Tittle -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-tittle white-text text-center">
                            <span>Apply process</span>
                            <h2>How it works</h2>
                        </div>
                    </div>
                </div>
                <!-- Apply Process Caption -->
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="single-process text-center mb-30">
                            <div class="process-ion">
                                <span class="flaticon-search"></span>
                            </div>
                            <div class="process-cap">
                               <h5>1. Search a job</h5>
                               <p>Browse Services effortlessly & use filters cost-free for better experience.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="single-process text-center mb-30">
                            <div class="process-ion">
                                <span class="flaticon-curriculum-vitae"></span>
                            </div>
                            <div class="process-cap">
                               <h5>2. Apply for job</h5>
                               <p>Easily apply for jobs that match your profile by importing an impressive C.V.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="single-process text-center mb-30">
                            <div class="process-ion">
                                <span class="flaticon-tour"></span>
                            </div>
                            <div class="process-cap">
                               <h5>3. Get your job</h5>
                               <p>Get connected to your employer and grab your best possible oppportunity.</p>
                            </div>
                        </div>
                    </div>
                </div>
             </div>
        </div>
        <!-- How  Apply Process End-->
        <!-- Testimonial Start -->
        <div class="testimonial-area testimonial-padding">
            <div class="container">
                <!-- Testimonial contents -->
                <div class="row d-flex justify-content-center">
                    <div class="col-xl-8 col-lg-8 col-md-10">
                        <div class="h1-testimonial-active dot-style">
                            <!-- Single Testimonial -->
                            <div class="single-testimonial text-center">
                                <!-- Testimonial Content -->
                                <div class="testimonial-caption ">
                                    <!-- founder -->
                                    <div class="testimonial-founder  ">
                                        <div class="founder-img mb-30">
                                            <img src="../ImgVideos/employee%20man.png" height=130 width=132 alt="">
                                            <span>Murgan</span>
                                            <p>Electrician</p>
                                        </div>
                                    </div>
                                    <div class="testimonial-top-cap">
                                        <p>"Since I joined JobFinder I have received more jobs regularly than I did before. JobFinder has been an extremely helpful and effective way of sourcing our needs within limited time and resources consumption. We rate JobFinder as the one of BEST.”</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Testimonial -->
                            <div class="single-testimonial text-center">
                                <!-- Testimonial Content -->
                                <div class="testimonial-caption ">
                                    <!-- founder -->
                                    <div class="testimonial-founder  ">
                                        <div class="founder-img mb-30">
                                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqFEBlic-EPwnWLHhNRjIBGJn6jLc9SVGZLfUDsZTh8r65MWspNchvAdO0wmd0HPFuqyc&usqp=CAU" height=130 width=132 alt="">
                                            <span>Margaret Lawson</span>
                                            <p>Executive Consultant</p>
                                        </div>
                                    </div>
                                    <div class="testimonial-top-cap">
                                        <p>“JobFinder is an excellent job portal, we value the resumes received through this channel. It provides relevant and accurate matches as per the job openings. We are very satisfied with their service. ”</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Testimonial -->
                            <div class="single-testimonial text-center">
                                <!-- Testimonial Content -->
                                <div class="testimonial-caption ">
                                    <!-- founder -->
                                    <div class="testimonial-founder  ">
                                        <div class="founder-img mb-30">
                                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtfsXXL2AdAh_Gxbeb-XCbGpPnQ8nM9XsmbvP6MBgNmpHXdaFBjBR8vtXkBTPW7Cl4vws&usqp=CAU" height=130 width=132 alt="">
                                            <span>Wade Wilson</span>
                                            <p>HR Manager</p>
                                        </div>
                                    </div>
                                    <div class="testimonial-top-cap">
                                        <p>“JobFinder is like a family. It has been a catalyst for our growth. We are content with the quality of responses. Features in product are user-friendly.”</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Testimonial End -->
         <!-- Support Company Start-->
         <div class="support-company-area support-padding fix">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-6 col-lg-6">
                        <div class="right-caption">
                            <!-- Section Tittle -->
                            <div class="section-tittle section-tittle2">
                                <span>What we are doing</span>
                                <h2>24k Talented people are getting Jobs</h2>
                            </div>
                            <div class="support-caption">
                                <p class="pera-top"> Don't stop until you get it right. If opportunity doesn't knock, build a door</p>
                                <p>Employees dream about their career to be increased form strength to strength. Hence in the need of fulfilling their goal, undergo the process of learning new skills and techniques for betterment of future. </p>
                                <a href="About.aspx" class="btn post-btn">Post a job</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6">
                        <div class="support-location-img">
                            <img src="../assets/img/service/support-img.jpg" alt="">
                            <div class="support-img-cap text-center">
                                <p>Since</p>
                                <span>2001</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Support Company End-->
        <!-- Blog Area Start -->
        <div class="home-blog-area blog-h-padding">
            <div class="container">
                <!-- Section Tittle -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-tittle text-center">
                            <span>Our latest blog</span>
                            <h2>Our recent news</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-6 col-lg-6 col-md-6">
                        <div class="home-blog-single mb-30">
                            <div class="blog-img-cap">
                                <div class="blog-img">
                                    <img src="../assets/img/blog/home-blog1.jpg" alt="">
                                    <!-- Blog date -->
                                    <div class="blog-date text-center">
                                        <span>24</span>
                                        <p>Now</p>
                                    </div>
                                </div>
                                <div class="blog-cap">
                                    <p>|  Properties</p>
                                    <h3><a href="Blog.aspx">Work is no longer a place we go to, it's what we do</a></h3>
                                    <a href="Blog.aspx" class="more-btn">Read more »</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-6">
                        <div class="home-blog-single mb-30">
                            <div class="blog-img-cap">
                                <div class="blog-img">
                                    <img src="../assets/img/blog/home-blog2.jpg" alt="">
                                    <!-- Blog date -->
                                    <div class="blog-date text-center">
                                        <span>30</span>
                                        <p>Now</p>
                                    </div>
                                </div>
                                <div class="blog-cap">
                                    <p>|   Properties</p>
                                    <h3><a href="Blog.aspx">Autograph your work with excellence</a></h3>
                                    <a href="Blog.aspx" class="more-btn">Read more »</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Blog Area End -->

        <div class="chatboxbody">
            <div class="chat-bar-collapsible">
                <button id="chat-button" type="button" class="collapsible">
                    Chat with us!
            <i id="chat-icon" style="color: #fff;" class="fa fa-fw fa-comments-o"></i>
                </button>

                <div class="content">
                    <div class="full-chat-block">
                        <!-- Message Container -->
                        <div class="outer-container">
                            <div class="chat-container">
                                <!-- Messages -->
                                <div id="chatbox">
                                    <h5 id="chat-timestamp"></h5>
                                    <p id="botStarterMessage" class="botText"><span>Loading...</span></p>
                                </div>

                                <!-- User input box -->
                                <div class="chat-bar-input-block">
                                    <div id="userInput">
                                        <input id="textInput" class="input-box" type="text" name="msg"
                                            placeholder="Enter a message to send" />
                                        <p></p>
                                    </div>

                                    <div class="chat-bar-icons">
                                        <i id="chat-iconn" style="color: crimson;" class="fa fa-fw fa-heart"
                                            onclick="heartButton()"></i>
                                        <i id="chat-icoon" style="color: #333;" class="fa fa-fw fa-send"
                                            onclick="sendButton()"></i>
                                    </div>
                                </div>

                                <div id="chat-bar-bottom">
                                    <p></p>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="../response.js"></script>
        <script src="../chat.js"></script>
    </main>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="OnlineJobPortal.User.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <style>
        * {
            margin: 0;
            padding: 0;
            font-family: 'Poppins',sans-serif;
            box-sizing: border-box;
        }

        .sect {
            position: relative;
            height: 100vh;
            width: 100%;
            overflow: hidden;
            display: flex;
            justify-content: center;
            align-items: center;
            background: #000;
        }

            .sect::before {
                content: '';
                position: absolute;
                bottom: 0;
                left: 0;
                width: 100%;
                height: 200px;
                background: linear-gradient(to top,#fff,transparent);
                z-index: 10000;
            }

            .sect img {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                object-fit: cover;
                pointer-events: none;
            }
            .sect img#man{
                transform-origin: bottom;
            }
            .sect h2 {
                position: relative;
                color: #20496a;
                font-size: 100px;
                font-weight: 600;
                margin-bottom: 12%;
            }

        .secton {
            position: relative;
            padding: 100px;
        }

            .secton h2 {
                font-size: 3.5em;
                margin-bottom: 10px;
                color: #20496a;
            }

            .secton p {
                font-size: 1.2em;
                color: #20496a;
            }
    </style>
    <section>
    <div class="sect">
        <img src="../ImgVideos/bg.jpg" id="bg" />
        <h2 id="text">About Us</h2>
        <img src="../ImgVideos/man.png" id="man" />
        <img src="../ImgVideos/clouds_1.png" id="clouds_1" />
        <img src="../ImgVideos/clouds_2.png" id="clouds_2" />
        <img src="../ImgVideos/mountain_left.png" id="mountain_left" />
        <img src="../ImgVideos/mountain_right.png" id="mountain_right" />
    </div>
    <div class="secton">
        <h2>Who we are</h2>
        <p>JobFinder is a zero-funds volunteer organization that works to helps jobseekers as well as jobgivers for finding relaible & high quality services - beauty treatments, massages, haircuts, home cleaning, house keeping, handymen,appliance repair, painting, pest control, sanitization and many 
more- delivered by professionals conveniently at home. We provide a one stop solution that allows skilled and experience professionals, trainees, jobseekers to connect with users looking for specific jobs and services.
<br /><br />Its vision is to empower milions of professionals across the nation to deliver services at home like never experienced before. Our match-making algorithm identifies workers who are closest to the user's requirements
 and available at the requested time and date. This Platform therefore does not tolerate and prohibits discrimination against customers as well as service providers based on religion, Caste, race, gender identity or any other characteristic that may protected under applicable laws.
        </p>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/gsap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/ScrollTrigger.min.js"></script>
    <script>
        gsap.to("#bg", {
            scrollTrigger: {
                scrub: 1
            },
            scale: 1.5
        })
         gsap.to("#man", {
            scrollTrigger: {
                scrub: 1
            },
            scale: 0.5
        })
        gsap.to("#mountain_left", {
            scrollTrigger: {
                scrub: 1
            },
            x: -700,
        })
        gsap.to("#mountain_right", {
            scrollTrigger: {
                scrub: 1
            },
            x: 700,
        })
         gsap.to("#clouds_1", {
            scrollTrigger: {
                scrub: 1
            },
            x: 300,
        })
        gsap.to("#clouds_2", {
            scrollTrigger: {
                scrub: 1
            },
            x: -300,
        })
        gsap.to("#text", {
            scrollTrigger: {
                scrub: 1
            },
            y: 700,
        })
    </script>
        </section>
        <!-- Hero Area Start-->
        <%--<div class="slider-area ">
        <div class="single-slider section-overly slider-height2 d-flex align-items-center" data-background="../assets/img/hero/about.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>About us</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>--%>
        <!-- Hero Area End -->
        <!-- Support Company Start-->
        <style>
            .contain{
                overflow:hidden;
                min-height:70vh;
                position: relative;
                max-width:600px;
                height: 500px;
                padding: 50px;
                color: #555;
            }          
            .contain .content{
                display: none;
                margin-top: 15px;
            }
            .contain .content.contentEnglish{
                display:block;
            }
            .check{
                position: relative;
                width: 50px;
            }
            .check:before{
                content:'';
                position: absolute;
                width: 50px;
                height: 25px;
                background: #333;
                border-radius: 25px;
            }
            .check:checked:before{
                background:#fb246a;
            }
            .check:after{
                content:'';
                position: absolute;
                width: 25px;
                height: 25px;
                background: #fff;
                border-radius: 25px;
                transition: 0.25s;
                border: 2px solid #333;
                box-sizing:border-box;
            }
            .check:checked:after{
                left: 25px;
                border: 2px solid #00a1ff;
            }
            .check:checked ~ .contentEnglish{
                display: none;
            }
            .check:checked ~ .contentHindi{
                display: block;
            }
            .en{
                color: #333;
            }
            .hn{
                color: #00a1ff;
            }
        </style>
                <style>
            * {
                margin: 0 auto;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
            }

            .container-fluid {
                width: 40%;
                margin: 0 auto;
                margin-top: 80px;
                bottom: 60px;
            }

                .container-fluid h2 {
                    color: #fb246a;
                    position: relative;
                    width: 23em;
                }

                    .container-fluid h2::after {
                        content: '';
                        position: absolute;
                        bottom: 0;
                        left: 58%;
                        right: 12px;
                        width: 67px;
                        height: 2px;
                        background-color: #fb246a;
                    }

                .container-fluid h1::after {
                    content: '';
                    position: absolute;
                    bottom: 0;
                    left: 58%;
                    right: 12px;
                    width: 67px;
                    height: 2px;
                    background-color: #fb246a;
                    margin-top: 20%;
                }

            .section {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }

            .con {
                width: 800px;
            }

            .box {
                width: 100%;
                padding: 10px;
            }

                .box .box_head {
                    background-color: #180a91;
                    padding: 15px;
                    color: white;
                    border-radius: 4px;
                    position: relative;
                    cursor: pointer;
                    font-weight: 600;
                }

            .box_head::before {
                content: '+';
                font-weight: 600;
                position: absolute;
                right: 20px;
            }

            .box.active .box_head::before {
                content: '-';
            }

            .box .box_text {
                font-size: 14px;
                background-color: white;
                border-radius: 4px;
                padding: 0px;
                margin-top: 5px;
                height: 0;
                overflow: hidden;
                transition: all .3s ease-in;
            }

            .box.active .box_text {
                height: 100px;
                padding: 10px;
                background-color: white;
                color: black;
                border-left: 2px solid #fb246a;
            }
        </style>
        <div class="support-company-area fix section-padding2">
            <div class="container"> 
                <div class="contain">
                <span class="en">English</span>
                    <input type="checkbox" class="check" />
                <span class="hn">हिन्दी</span> 
                    <div class="content contentEnglish">
                        <h2>English</h2>
                        <p>
                            Going out on your own in the world is a hard thing no matter what you’re doing. Now imagine doing that in this dog-eat-dog corporate world. 
                            Small business owners often have had their work cut out for them every turn for years. 
                            So, it’s a hard task they take on every single day and they do it to offer the public 
                            alternative options that are going to make a difference in the lives of consumers like us.
                        </p>
                    </div>
                     <div class="content contentHindi">
                        <h2>हिन्दी</h2>
                        <p>
                            दुनिया में अपने आप से बाहर जाना एक कठिन काम है, चाहे आप कुछ भी कर रहे हों। 
                            अब इस कुत्ते-खाने-कुत्ते की कॉर्पोरेट दुनिया में ऐसा करने की कल्पना करें। छोटे व्यवसाय के मालिकों ने अक्सर वर्षों से उनके लिए हर मोड़ पर अपना काम काट दिया है।
                            इसलिए, यह एक कठिन काम है जो वे हर एक दिन करते हैं और वे इसे सार्वजनिक वैकल्पिक विकल्पों की पेशकश करने के लिए करते हैं जो हमारे जैसे 
                            उपभोक्ताओं के जीवन में बदलाव लाने वाले हैं।
                        </p>
                    </div>
                </div>

                    <div class="container-fluid ">
                        <h2>Frequently Asked Questions(FAQs)</h2>
                    </div>
                    <div class="con">
                        <div class="box">
                            <div class="box_head">What is the most important thing to include in a resume?</div>
                            <div class="box_text">
                                Other than your personal details and contact information, your resume should have information about your work history, 
                                 educational qualifications and related skills. For every job applications, these needs to be tailored.
                                 Add professional recognitions and accomplishments to stand out.
                            </div>
                        </div>
                        <div class="box">
                            <div class="box_head">I don’t have the required experience. Should I apply for the job?</div>
                            <div class="box_text">
                                If you think you can pull off the job requirements well, you should definitely apply to the job. 
                               If you do not have the required number of years or miss any hard skill, it does not rule you out as an applicant.
                               If you’re the best candidate, years of experience won’t matter in the end.
                            </div>
                        </div>
                        <div class="box">
                            <div class="box_head">When will I hear about the status of my application?</div>
                            <div class="box_text">
                                You can be told about your application status at any stage after the closing date.
                                We encourage you to ask questions that will help you to decide whether the job or our environmentis a good match 
                                for you. Please note that we give oral feedback only to candidates who have been invited for interview.
                            </div>
                        </div>
                        <div class="box">
                            <div class="box_head">Can I apply for several jobs at the same time?</div>
                            <div class="box_text">
                                Of course. If there is more than one job on offer that you feel corresponds to your profile and career goals, 
                                 you may apply for two or more jobs simultaneously.
                            </div>
                        </div>
                    </div>
                    <script>
                        var box = document.querySelectorAll(".box");
                        for (i = 0; i < box.length; i++) {
                            box[i].addEventListener("click", function () {
                                this.classList.toggle("active");
                            })
                        }
                    </script>

<%--               <div class="row align-items-center">
                    <div class="col-xl-6 col-lg-6">
                        <div class="right-caption">
                            <!-- Section Tittle -->
                            <div class="section-tittle section-tittle2">
                                <span>What we are doing</span>
                                <h2>24k Talented people are getting Jobs</h2>
                            </div>
                            <div class="support-caption">
                                <p class="pera-top">Don't stop until you get it right. If opportunity doesn't knock, build a door</p>
                                <p>Employees dream about their career to be increased form strength to strength. Hence in the need of fulfilling their goal, undergo the process of learning new skills and techniques for betterment of future. </p>
                                <a href="about.html" class="btn post-btn">Post a job</a>
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
                </div>--%>
            </div>
        </div>
        <!-- Support Company End-->
        <!-- How  Apply Process Start-->
        <div class="apply-process-area apply-bg pt-150 pb-150" data-background="../assets/img/gallery/how-applybg.png">
            <div class="container">
                <!-- Section Tittle -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-tittle white-text text-center">
                            <span>Apply process</span>
                            <h2> How it works</h2>
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
        <section>
            <style>
                @import 'https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css';
                @import 'https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css';
                @import 'https://fonts.googleapis.com/css?family=Raleway:100,600';
                @import 'https://fonts.googleapis.com/css?family=Open+Sans:300';

                .section-title h2 {
                    text-transform: uppercase;
                    justify-content: center;
                    align-items: center;
                    margin: 0 auto;
                    width: 40%;
                    left: 26%;
                    color: #fb246a;
                    position: relative;
                    width: 23em;
                    font-weight: 600;
                    font-family: 'Poppins', sans-serif;
                }

                .section-title text-container {
                    margin: 0 auto;
                    justify-content: center;
                    align-items: center;
                    color: #fb246a;
                    position: relative;
                    width: 23em;
                }

                .section-title p {
                    text-transform: uppercase;
                    font-weight: bold;
                    justify-content: center;
                    align-items: center;
                    color: #fb246a;
                    position: relative;
                    width: 23em;
                    width: 50%;
                    left: 38%;
                }

                .single-team {
                    position: relative;
                    z-index: 1;
                    overflow: hidden;
                    box-shadow: 5px 5px 15px #000;
                }

                .team-img {
                    padding-bottom: 70px;
                    position: relative;
                    z-index: 5;
                    overflow: hidden;
                }

                    .team-img img {
                        width: 100%;
                        transition: .3s;
                    }

                .single-team:hover .team-img img {
                    transform: scale(1.1);
                }

                .team-content {
                    height: 80px;
                    width: 100%;
                    position: absolute;
                    text-align: center;
                    overflow: hidden;
                    bottom: 0;
                    transition: all .4s;
                    background: #180a91;
                    z-index: 5;
                }

                .single-team:hover .team-content {
                    height: 170px;
                }

                .team-info {
                    padding: 5px 20px 5px 20px;
                    transition: all .5s;
                }

                .single-team:hover .team-content {
                    background: #000;
                }

                .single-team .team-content .team-info h3 {
                    text-transform: uppercase;
                    color: #fff;
                    font-size: 16px;
                    margin: 0px;
                    justify-content: center;
                    align-items: center;
                }

                .single-team:hover .team-info h3 {
                    color: #180a91;
                }

                .team-info p {
                    margin-top: 15px;
                    color: #fff;
                }

                .single-team-text p {
                    margin-top: 5px;
                }

                .team-text {
                    color: #fff;
                    padding: 0 10px 5px;
                }
            </style>

            <div class="team-area" style="margin-top: 10%; margin-bottom: 10%;">
                <div class="container">
                    <div class="col-md-12">
                        <div class="section-title text-container">
                            <h2>Our Team</h2>
                            <p>Meet our Talented Team Members</p>
                        </div>
                    </div>
                    <!--== Single Team Item ==-->
                    <div class="col-md-3">
                        <div class="single-team">
                            <div class="team-img">
                                <img src="https://i.postimg.cc/1t2svTt5/1.jpg" alt="" class="img-responsive">
                            </div>
                            <div class="team-content">
                                <div class="team-info">
                                    <h3>Lisa Ray</h3>
                                    <p>Web Developer</p>
                                </div>
                                <p class="team-text">She create and maintain websites & its technical aspects</p>
                            </div>
                        </div>
                    </div>
                    <!--== Single Team Item ==-->
                    <div class="col-md-3">
                        <div class="single-team">
                            <div class="team-img">
                                <img src="https://i.postimg.cc/qRPHs3bN/2.jpg" alt="" class="img-responsive">
                            </div>
                            <div class="team-content">
                                <div class="team-info">
                                    <h3>Ella Lopez</h3>
                                    <p>UI/UX Designer</p>
                                </div>
                                <p class="team-text">Create and test applications, interfaces, and navigation menus for a website.</p>
                            </div>
                        </div>
                    </div>
                    <!--== Single Team Item ==-->
                    <div class="col-md-3">
                        <div class="single-team">
                            <div class="team-img">
                                <img src="https://i.postimg.cc/K80X9VpS/3.jpg" alt="" class="img-responsive">
                            </div>
                            <div class="team-content">
                                <div class="team-info">
                                    <h3>Anita Roy</h3>
                                    <p>Digital Designer</p>
                                </div>
                                <p class="team-text">She is responsible for the look and functionality of the website or interface.</p>
                            </div>
                        </div>
                    </div>
                    <!--== Single Team Item ==-->
                    <div class="col-md-3">
                        <div class="single-team">
                            <div class="team-img">
                                <img src="https://i.postimg.cc/3JZzRVT4/4.jpg" alt="" class="img-responsive">
                            </div>
                            <div class="team-content">
                                <div class="team-info">
                                    <h3>Lisa Ray</h3>
                                    <p>Network Engineer</p>
                                </div>
                                <p class="team-text">Her role is to ensure the stable operation of the computer networks.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section>
            <style>
                .holder {
                    margin-bottom: 8%;
                    padding: 0;
                    box-sizing: border-box;
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    min-height: 100vh;
                    background: linear-gradient(#180a91, #180a91 50%, #fff 50%, #fff 100%);
                }

                .case {
                    width: 1100px;
                    display: flex;
                    justify-content: space-between;
                    flex-wrap: wrap;
                }

                    .case .boxx {
                        position: relative;
                        width: 340px;
                        height: 440px;
                        background: #fff;
                        padding: 100px 40px 60px;
                        box-shadow: 0 15px 45px rgba(0,0,0,.1);
                    }

                        .case .boxx:before {
                            content: '';
                            position: absolute;
                            top: 0;
                            left: 0;
                            height: 100%;
                            width: 100%;
                            background: #fb246a;
                            transform: scaleY(0);
                            transform-origin: top;
                            transition: transform 0.5s;
                        }

                        .case .boxx:hover:before {
                            transform: scaleY(1);
                            transform-origin: bottom;
                            transition: transform 0.5s;
                        }

                        .case .boxx h2 {
                            position: absolute;
                            left: 40px;
                            top: 60px;
                            font-size: 4em;
                            font-weight: 800;
                            z-index: 1;
                            opacity: 0.3;
                            transition: 0.5s;
                        }

                        .case .boxx:hover h2 {
                            opacity: 1;
                            color: #fff;
                            transform: translateY(-40px);
                        }

                        .case .boxx h3 {
                            position: relative;
                            z-index: 2;
                            font-size: 2em;
                            color: #333;
                            font-weight: 600;
                            transition: 0.5s;
                        }

                        .case .boxx p {
                            position: relative;
                            z-index: 2;
                            color: #555;
                            transition: 0.5s;
                        }

                        .case .boxx:hover h3,
                        .case .boxx:hover p {
                            color: #fff;
                        }
            </style>
            <div class="container-fluid" style="margin-top: 16%;">
                <h1 style="width: 50%; margin: 0 auto; color: #fb246a; position: relative;">&emsp; Our Services</h1>
            </div>
            <div class="holder">
                <div class="case">
                    <div class="boxx">
                        <h2>01</h2>
                        <h3>service</h3>
                        <p>
                            JobFinder is an end-to-end technology-driven solutions for all home-related needs – right from construction to maintenance is paving a way for an indeed unique experience for its users.
                        </p>
                    </div>
                    <div class="boxx">
                        <h2>02</h2>
                        <h3>service</h3>
                        <p>
                            JobFinder leading tech-driven Construction, Renovation, Interiors and Home Maintenance company catering to all home-related needs of Indian consumers along with other Job providing facilities.
                        </p>
                    </div>
                    <div class="boxx">
                        <h2>03</h2>
                        <h3>service</h3>
                        <p>
                            We simplify your everyday living & home needs with a variety of at-home services, delivered by verified & qualified professionals only.
                        </p>
                    </div>                  
                </div>
            </div>
        </section>

        <!--Slider section-->
        <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
        <style>
            .swiper-section {
                position: relative;
                width: 100%;
                min-height: 10vh;
                display: flex;
                justify-content: center;
                align-items: center;
                background: linear-gradient(to bottom right, darkblue, pink);
                overflow: hidden;
            }

            .swiper-container {
                width: 100%;
                padding-top: 50px;
                padding-bottom: 50px;
            }

            .swiper-slide {
                background-position: center;
                background-size: cover;
                width: 320px;               
                box-shadow: 0 15px 50px rgba(0,0,0,0.2);
                filter: blur(4px);
                background: #d1ebff;
                border-radius: 10px;
            }
            .swiper-slide-active{
                filter: blur(0px);
                background: #fff;
            }
            .customer-review {
                position: relative;
                padding: 40px;
                padding-top: 90px;
                color: #999;
                width: 100%;
            }

                .customer-review .quote {
                    position: absolute;
                    top: 20px;
                    right: 30px;
                    opacity: 0.2;
                }

                .customer-review .details {
                    display: flex;
                    align-items: center;
                    margin-top: 20px;
                }

                    .customer-review .details .imagebox {
                        position: relative;
                        width: 60px;
                        height: 60px;
                        border-radius: 50%;
                        overflow: hidden;
                        margin-right: 10px;
                    }

                        .customer-review .details .imagebox img {
                            position: absolute;
                            left: 0;
                            right: 0;
                            width: 100%;
                            height: 100%;
                            object-fit: cover;
                        }

                    .customer-review .details h3 {
                        font-size: 16px;
                        font-weight: 500;
                        color: #180a91;
                        letter-spacing: 1px;
                        line-height: 1.1em;
                    }

                        .customer-review .details h3 span {
                            font-size: 12px;
                            color: #666;
                        }

            .swiper-container-3d .swiper-slide-shadow-left,
            .swiper-container-3d .swiper-slide-shadow-right {
                background-image: none;
            }
        </style>
         <div class="container-fluid">
                    <h2 style="margin: 0 auto; width: 100%; position: relative; display: flex;">&emsp; &emsp; &emsp; &emsp; What our Customers say..</h2>
                </div>
        <div class="swiper-section">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="customer-review">
                            <img src="../ImgVideos/right-quote.png" class="quote" />
                            <div class="reviews">
                                <p>
                                    A fantastic organisation! Great cutomer support from beginning to end of the process. The team are really informed and go the extra mile at every stage. I would recommend them unreservedly.
                                    Great service, efficient communication and a really easy way to get a mortgage with lots of help and support to get the right deal.
                                </p>
                                <div class="details">
                                    <div class="imagebox">
                                        <img src="../ImgVideos/user-1.png" />
                                    </div>
                                    <h3>Rachel D'Souza<br />
                                        <span>Respected User</span></h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="customer-review">
                            <img src="../ImgVideos/right-quote.png" class="quote" />
                            <div class="reviews">
                                <p>
                                   Great customer service! The person I spoke with was very helpful in answering questions as well as helping in finding the best hotel for my husband and I.Great customer service.
                                   Excellent customer service! Whenever I needed something they were there for me. Thank you guys. Fantastic company! Excellent customer service, efficient process.
                                </p>
                                <div class="details">
                                    <div class="imagebox">
                                        <img src="../ImgVideos/user-2.png" />
                                    </div>
                                    <h3>Nick Young<br />
                                        <span>Respected User</span></h3>
                                </div>
                            </div>1
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="customer-review">
                            <img src="../ImgVideos/right-quote.png" class="quote" />
                            <div class="reviews">
                                <p>
                                   Very polite and helpful customer service. Response was very satisfactory, given the current health emergency.Great customer service, no hold time when you call. Rates are good.
                                    Great customer service. Didn’t need to use my policy but excellent at answering questions. Great customer service very knowledgeable and helpful. Thank you for the amazing support!  
                                </p>
                                <div class="details">
                                    <div class="imagebox">
                                        <img src="../ImgVideos/user-3.png" />
                                    </div>
                                    <h3>Alisha Bhatt<br />
                                        <span>Respected User</span></h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
            <%-- <script>
                var swiper = new Swiper('.swiper-container', {
                    effect: 'coverflow',
                    grabCursor: true,
                    centeredSlides: true,
                    slidesPerView: 'auto',
                    coverflowEffect: {
                        rotate: 50,
                        stretch: 0,
                        depth: 100,
                        modifier: 1,
                        slideShadows: true,
                    },
                    pagination: {
                        el: '.swiper-pagination',
                    },
                });                   
            </script>--%>
            <script>
                var swiper = new Swiper('.swiper-container', {

                    effect: 'coverflow',
                    grabCursor: true,
                    centeredSlides: true,
                    slidesPerView: 'auto',
                    coverflow: {
                        rotate: 0,
                        stretch: 0,
                        depth: 100,
                        modifier: 2,
                        slideShadows: true
                    },
                    loop: true
                });
            </script>
        </div>

        <!--Slider section-->

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
                                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYNxRAjNCE5sHDQ3jmOrRthgdA4rmz5p0nKnuLhnXX8eaEzc8PBQAxsfvF3RMkw4xgaO8&usqp=CAU" height=130 width=132 alt="">
                                            <span>Gwen Stephanson</span>
                                            <p>Associate Teamleader</p>
                                        </div>
                                    </div>
                                    <div class="testimonial-top-cap">
                                        <p>"JobFinder has been an extremely helpful and effective way of sourcing our needs within limited time and resources consumption. We rate JobFinder as the one of BEST. It helped us in sourcing many niche/critical positions”</p>
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
        <!-- Online CV Area Start -->
       <%-- <div class="online-cv cv-bg section-overly pt-90 pb-120"  data-background="../assets/img/gallery/cv_bg.jpg">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-10">
                        <div class="cv-caption text-center">
                             <p class="pera1">KEY FEATURE</p>
                            <p class="pera2">Make a Difference with Your Online Resume!</p>
                            <a href="#" class="border-btn2 border-btn4">Upload your cv</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>--%>
        <!-- Online CV Area End-->
    
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
                                    <p>|   Properties</p>
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

    </main>
</asp:Content>


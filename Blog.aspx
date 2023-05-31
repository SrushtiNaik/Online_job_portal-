<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="OnlineJobPortal.User.Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width" />
    <link rel="stylesheet" href="jarallaxcs.css">
    <meta charset="utf-8">
    <title>Our Blog</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins',sans-serif;
        }

        .boddy {
            background: #111;
            padding-bottom: 300px;
            overflow-x: hidden;
        }

            .boddy:before {
                content: 'Welcome';
                position: fixed;
                top: 50%;
                left: 47%;
                transform: translate(-50%,-50%);
                font-size: 16em;
                font-weight: 700;
                color: transparent;
                -webkit-text-stroke: 1px #555;
            }

        .part {
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

            .part h2 {
                margin-left: 300px;
                font-size: 3.8em;
                color: #fff;
                margin-bottom: 20px;
            }

            .part .holder {
                position: relative;
                width: 900px;
                display: flex;
                justify-content: space-between;
                align-items: center;
            }

            .part:nth-child(even) .holder {
                flex-direction: row-reverse;
            }

            .part .holder .imBx {
                position: relative;
                width: 800px;
                height: 400px;
                overflow: hidden;
                box-shadow: 0 25px 35px rgba(0,0,0,0.1);
            }

                .part .holder .imBx img {
                    position: absolute;
                    top: 0;
                    left: 0;
                    width: 100%;
                    height: 100%;
                    object-fit: cover;
                }

            .part .holder .contents {
                position: absolute;
                right: 0;
                margin-top: 200px;
                margin-bottom: 40px;
                padding: 40px;
                background: #333;
                z-index: 1;
                max-width: 400px;
                color: #fff;
                border-bottom: 6px solid #4ac7ff;
            }

            .part:nth-child(even) .holder .contents {
                left: 0;
            }

        .bldvideo {
            display: flex;
            justify-content: center;
            align-content: center;
            min-height: 90vh;
        }

        .vessel {
            justify-content: space-between;
            position: relative;
            width: 800px;
            align-items: center;
        }

        .Boxx {
            position: relative;
            width: 450px;
            height: 320px;
            background: #000;
            margin-top: 145px;
        }

        .videoBox {
            position: absolute;
            left: 0;
            right: 0;
            width: 100%;
            height: 100%;
        }

            .videoBox video {
                position: absolute;
                left: 0;
                right: 0;
                width: 100%;
                height: 100%;
                object-fit: cover;
            }

        .contentBox {
            position: absolute;
            top: 40px;
            right: 40px;
            bottom: 40px;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            background: rgba(0,0,0,0.95);
            display: flex;
            justify-content: center;
            align-items: center;
            transition: transform 0.5s;
            transform-origin: right;
            transform: scaleX(0);
        }

        .Boxx:hover .contentBox {
            transition: transform 0.5s;
            transform-origin: left;
            transform: scaleX(1);
        }

        .information {
            position: relative;
            padding: 20px 60px;
            opacity: 0;
        }

            .information h2 {
                color: #fff;
                font-weight: 500;
                margin-bottom: 10px;
            }

        .Boxx:hover .contentBox .information {
            opacity: 1;
            transition: 0.5s;
            transition-delay: 0.5s;
        }

        .information p {
            color: #fff;
            font-weight: 300;
        }
    </style>
    <style>
        .bdparts {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .teams {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
            transform-style: preserve-3d;
            /*width: 1100px;*/
        }

        .Cards {
            position: relative;
            width: 320px;
            height: 320px;
            margin: 20px;
            transform-style: preserve-3d;
            perspective: 1000px;
        }

        .teams .Cards:hover .cardholder {
            transform: rotateY(180deg);
        }

        .cardholder {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            transform-style: preserve-3d;
            transition: 1s ease;
        }

        .imageboxes {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }

            .imageboxes img {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                object-fit: cover;
            }

        .infoContent {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: #333;
            backface-visibility: hidden;
            display: flex;
            justify-content: center;
            align-items: center;
            transform-style: preserve-3d;
            transform: rotateY(180deg);
        }

            .infoContent h2 {
                font-weight: 700;
                color: #fff;
                font-size: 24px;
                letter-spacing: 1px;
            }

            .infoContent p {
                color: #fff;
                font-size: 16px;
                letter-spacing: 1px;
            }

            .infoContent div {
                transform-style: preserve-3d;
                padding: 20px;
                background: linear-gradient(45deg, #fe0061,#ffeb3b);
                transform: translateZ(100px);
            }
    </style>
    <div class="boddy">
        <section>
            <div class="part">
                <div class="carton">
                    <h2 data-jarallax-element="0 -200" class="jarallax">Our Blog</h2>
                    <div class="holder">
                        <div class="imBx jarallax">
                            <img src="https://images.pexels.com/photos/2350511/pexels-photo-2350511.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" class="jarallax-img" />
                        </div>
                        <div class="contents" data-jarallax-element="-200 0">
                            <p style="color:white">
                                JobFinder platform helps customers for finding relaible & high quality services - beauty treatments, massages, haircuts, home cleaning, house keeping, 
                                handymen,appliance repair, painting, pest control, sanitization and many more- delivered by professionals conveniently at home.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <div class="bldvideo">
        <div class="vessel">
            <div class="Boxx">
                <div class="videoBox">
                    <video src="../ImgVideos/pexels-mikhail-nilov-6895619.mp4" muted autoplay loop></video>
                </div>
                <div class="contentBox">
                    <div class="information">
                        <h2>Stand For local</h2>
                        <p>
                            When you are supporting small business you are supporting a dream.
                            We can't help everyone but everyone can help someone.
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="Boxx">
            <div class="videoBox">
                <video src="../ImgVideos/pexels-yan-krukov-8199326.mp4" muted autoplay loop></video>
            </div>
            <div class="contentBox">
                <div class="information">
                    <h2>Team Spirit</h2>
                    <p>
                        Individually we are one drop, together we are an ocean. Teamwork divides the task & multiplies the success
                        Together..Everyone..Achieves..More!!
                    </p>
                </div>
            </div>
        </div>
    </div>

    <style>
        .extra {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: #313131;
        }

        .contentwrite {
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
            width: 1200px;
            flex-wrap: wrap;
        }

        .postercard {
            position: relative;
            width: 300px;
            padding: 20px;
            margin: 20px;
            background: #3f3f3f;
        }

            .postercard::before {
                content: '';
                position: absolute;
                top: 0;
                right: 0;
                border: 20px solid transparent;
                border-top: 20px solid #17e78c;
                border-right: 20px solid #17e78c;
            }

            .postercard.active::before {
                border-top: 20px solid #ff3b7e;
                border-right: 20px solid #ff3b7e;
            }

        .icons {
            margin-bottom: 10px;
        }

            .icons img {
                max-width: 90px;
            }

        .contentwriteup {
            position: relative;
            height: 215px;
            overflow: hidden;
        }

        .postercard.active .contentwriteup {
            height: auto;
        }

        .contentwriteup::before {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 100px;
            background: linear-gradient(transparent, #3f3f3f);
        }

        .postercard.active .contentwriteup::before {
            display: none;
        }

        .contentwriteup h3 {
            font-size: 1.4em;
            color: #fff;
            font-weight: 600;
            margin-bottom: 10px;
        }

        .contentwriteup p {
            font-weight: 300;
            color: #ccc;
        }

        .postercard .more {
            position: relative;
            padding: 10px 15px;
            background: #17e78c;
            margin-top: 15px;
            display: inline-block;
            cursor: pointer;
            text-transform: uppercase;
            color: #383838;
            font-weight: 600;
            letter-spacing: 1px;
            font-size: 14px;
        }

        .postercard.active .more {
            background: #ff3b7e;
            color: #fff;
        }

        .postercard .more::before {
            content: 'Read more';
        }

        .postercard.active .more::before {
            content: 'Read less';
        }
    </style>
    <div class="extra">
        <div class="contentwrite">
            <div class="postercard">
                <div class="icons">
                    <img src="../ImgVideos/employee.png" />
                </div>
                <div class="contentwriteup">
                    <h3>Employment</h3>
                    <p>
                        In the information era, it is quite possible for people to work at home on their computer. The internet has opened up all sorts of possibilities in terms of making 
                        money, and so people may work as freelancers or start their own company. It has never been easier to do this because in the past working for yourself required renting 
                        an office or shop, whereas now you can simply set up a website or social media profile.
                    </p>
                </div>
                <a class="more"></a>
            </div>
            <div class="postercard">
                <div class="icons">
                    <img src="../ImgVideos/service-call.png" />
                </div>
                <div class="contentwriteup">
                    <h3>Customer Support</h3>
                    <p>
                        Excellent customer service starts with the business owner. Proactive Customer Service, when customers take the time to send you an email, they expect a reply. It shows you value them as customers and care about their needs. As a bonus,
                           JobFInder also gives headquarter tours to give their loyal fans a taste of what goes on behind the scenes. It shows corporate responsibility and that the company truly cares about its customers.
                    </p>
                </div>
                <a class="more"></a>
            </div>
            <div class="postercard">
                <div class="icons">
                    <img src="../ImgVideos/target.png" />
                </div>
                <div class="contentwriteup">
                    <h3>Higher Aims</h3>
                    <p>
                        You are capable of more than you know. Choose a goal that seems right for you and strive to be the best, however hard the path. Aim high. Behave honorably. 
                            Persist! The world needs all you can give. It became by mission to work with young people to help show them the way, not save them! But help them understand 
                            that there are choices that can be made today that will make the difference for their rest of their lives
                    </p>
                </div>
                <a class="more"></a>
            </div>
        </div>
        <script type="text/javascript">               
            var more = document.querySelectorAll(".more");
            for (i = 0; i < more.length; i++) {
                more[i].addEventListener("click", function () {
                    this.parentNode.classList.toggle("active");
                })
            }
        </script>
    </div>

    <div class="bdparts">
        <div class="teams">
            <div class="Cards">
                <div class="cardholder">
                    <div class="imageboxes">
                        <img src="../ImgVideos/pexels-pixabay-327533.jpg" />
                    </div>
                    <div class="infoContent">
                        <div>
                            <h2>Leadership</h2>
                            <p>
                                Do not follow where the path may lead. 
                                Go instead where there is no path and leave a trail
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="Cards">
                <div class="cardholder">
                    <div class="imageboxes">
                        <img src="../ImgVideos/pexels-pixabay-461049.jpg" />
                    </div>
                    <div class="infoContent">
                        <div>
                            <h2>Support</h2>
                            <p>
                                It is support that sustains us on the journey we've started.
                                We rise by lifting others so, thank you everyone for your support.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="Cards">
                <div class="cardholder">
                    <div class="imageboxes">
                        <img src="../ImgVideos/pexels-vjapratama-935835.jpg" />
                    </div>
                    <div class="infoContent">
                        <div>
                            <h2>Opportunity</h2>
                            <p>
                                Be brave, Take Risk. Nothing can substitue experience so, Do It Now.
                                Hardwork beats talent when talent doesn't work hard.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%--<section>
            <div class="part">
                <div class="carton">
                    <h2 data-jarallax-element="0 -200" class="jarallax">Our Company Blog</h2>
                    <div class="holder">
                        <div class="imBx jarallax">
                            <img src="Images/bg.jpg" class="jarallax-img"/>
                        </div>                     
                        <div class="contents" data-jarallax-element="-200 0" >
                            <p>
                                JobFinder platform helps customers for finding relaible & high quality services - beauty treatments, massages, haircuts, home cleaning, house keeping, 
                                handymen,appliance repair, painting, pest control, sanitization and many more- delivered by professionals conveniently at home.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
              <section>
            <div class="part">
                <div class="carton">
                    <h2 data-jarallax-element="0 -200" class="jarallax">Our Company Blog</h2>
                    <div class="holder">
                        <div class="imBx jarallax">
                            <img src="Images/bg.jpg" class="jarallax-img"/>
                        </div>                     
                        <div class="contents" data-jarallax-element="-200 0" >
                            <p>
                                JobFinder platform helps customers for finding relaible & high quality services - beauty treatments, massages, haircuts, home cleaning, house keeping, 
                                handymen,appliance repair, painting, pest control, sanitization and many more- delivered by professionals conveniently at home.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
              <section>
            <div class="part">
                <div class="carton">
                    <%--<div data-jarallax-element="-200" >--%>
    <%-- <h2 data-jarallax-element="0 -200" class="jarallax">Our Company Blog</h2><%--</div>
                    <div class="holder">
                        <div class="imBx jarallax">
                            <img src="Images/bg.jpg" class="jarallax-img"/>
                        </div>                     
                        <div class="contents" data-jarallax-element="-200 0" >
                            <p>
                                JobFinder platform helps customers for finding relaible & high quality services - beauty treatments, massages, haircuts, home cleaning, house keeping, 
                                handymen,appliance repair, painting, pest control, sanitization and many more- delivered by professionals conveniently at home.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
              <section>
            <div class="part">
                <div class="carton">
                    <h2 data-jarallax-element="0 -200" class="jarallax">Our Company Blog</h2>
                    <div class="holder">
                        <div class="imBx jarallax">
                            <img src="Images/bg.jpg" class="jarallax-img"/>
                        </div>                     
                        <div class="contents" data-jarallax-element="-200 0" >
                            <p>
                                JobFinder platform helps customers for finding relaible & high quality services - beauty treatments, massages, haircuts, home cleaning, house keeping, 
                                handymen,appliance repair, painting, pest control, sanitization and many more- delivered by professionals conveniently at home.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>--%>

    <script src="../ImgVideos/jarallax-element.js"></script>
    <script src="../ImgVideos/jarallax.min.js"></script>
    <script src="../ImgVideos/jarallax.js"></script>
    <script type="text/javascript">
        jarallax(document.querySelectorAll('.jarallax'), {
            speed: 0.5,
        });
    </script>
</asp:Content>

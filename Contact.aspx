<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="OnlineJobPortal.Contact" %>

<%--<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cap" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Hero Area Start-->
    <%-- <div class="slider-area ">
        <div class="single-slider section-overly slider-height2 d-flex align-items-center" data-background="../assets/img/hero/about.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>Contact Us</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <!-- Hero Area End -->
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .bannerclass {
            position: relative;
            width: 100%;
            height: 105vh;
            background: url(https://images.pexels.com/photos/7682472/pexels-photo-7682472.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940);
            background-size: cover;
            background-position: bottom;
            display: flex;
            justify-content: center;
            align-items: center;
        }

            .bannerclass #text {
                position: relative;
                font-size: 12em;
                color: #fff;
            }

            .bannerclass .clouds {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                overflow: hidden;
                pointer-events: none;
            }

                .bannerclass .clouds img {
                    position: absolute;
                    bottom: 0;
                    max-width: 100%;
                    animation: animate calc(3s * var(--i)) linear infinite;
                }

        @keyframes animate {
            0% {
                opacity: 0;
                transform: scale(1);
            }

            25%,75% {
                opacity: 1;
            }

            100% {
                opacity: 0;
                transform: scale(3);
            }
        }

        .trailsec {
            position: relative;
            padding: 75px 100px;
        }

            .trailsec h2 {
                position: relative;
                font-size: 2.5em;
                margin-bottom: 20px;
            }
    </style>

    <!-- ================ contact section start ================= -->
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .mapBox {
            position: relative;
            width: 100%;
            height: 100%;
            background: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 700vh;
            bottom: 60px;
        }

            .mapBox iframe {
                height: 100%;
                width: 100%;
            }
    </style>
    <div class="bannerclass">
        <h2 id="text">Contact Us</h2>
        <div class="clouds">
            <img src="../ImgVideos/cloud1.png" style="--i: 1;" />
            <img src="../ImgVideos/cloud2.png" style="--i: 2;" />
            <img src="../ImgVideos/cloud3.png" style="--i: 3;" />
            <img src="../ImgVideos/cloud4.png" style="--i: 4;" />
            <img src="../ImgVideos/cloud5.png" style="--i: 5;" />
            <img src="../ImgVideos/cloud1.png" style="--i: 10;" />
            <img src="../ImgVideos/cloud2.png" style="--i: 9;" />
            <img src="../ImgVideos/cloud3.png" style="--i: 8;" />
            <img src="../ImgVideos/cloud4.png" style="--i: 7;" />
            <img src="../ImgVideos/cloud5.png" style="--i: 6;" />
        </div>
    </div>
    <div class="trailsec">
        <h2>Reach Out to Us</h2>
        <p>We'd Love to Hear From You
            <br />
            Whether you're curious about features, job opportunities, or career options - we're ready to answer any & all questions.
            <br />
            Whether you wish to post a Job.
        </p>
        <br />
        <br />
        <h2>What You Get When Asking Your Question</h2>
        <h5>-> Less than 12-hour response to your question.</h5>
        <h5>-> Thoroughness and expertise advice on career guidance and job hiring.</h5>
        <h5>-> Plan of action summarized in an email follow up.</h5>
    </div>

    <script type="text/javascript">
        let text = document.getElementById('text');
        window.addEventListener('scroll', function () {
            let value = window.scrollY;
            text.style.marginBottom = value * 2 + 'px';
        })
    </script>
    
    <section class="contact-section">
        <div class="container">
            <div class="d-none d-sm-block mb-5 pb-4">
                <div id="map" style="height: 480px; position: relative; overflow: hidden;">
                    <div style="height: 100%; width: 100%; position: absolute; top: 0px; left: 0px; background-color: rgb(229, 227, 223);">

                        <div class="gm-style" style="position: absolute; z-index: 0; left: 0px; top: 0px; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px;">
                            <div class="mapBox">
                                <%--<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3773.1287806426367!2d72.80505676405193!3d18.969919160229825!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7ce7687e56e17%3A0x3a08ff3b9150ec07!2sSOPHIA%20COLLEGE%2C%20Cumballa%20Hill%2C%20Mumbai%2C%20Maharashtra%20400026!5e0!3m2!1sen!2sin!4v1654277921491!5m2!1sen!2sin" 
                                    width="900" height="900" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>--%>
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3773.1287806426367!2d72.80505676405193!3d18.969919160229825!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7ce7687e56e17%3A0x3a08ff3b9150ec07!2sSOPHIA%20COLLEGE%2C%20Cumballa%20Hill%2C%20Mumbai%2C%20Maharashtra%20400026!5e0!3m2!1sen!2sin!4v1654277921491!5m2!1sen!2sin"
                                    allowfullscreen="" loading="lazy"></iframe>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12 pb-20">
                    <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
                </div>
                <div class="col-12">
                    <h2 class="contact-title">Get in Touch</h2>
                </div>
                <div class="col-lg-8">
                    <%--<form class="form-contact contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">--%>
                    <div class="form-contact contact_form" id="contactForm">
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group">
                                    <textarea class="form-control w-100" runat="server" name="message" id="message" cols="30" rows="9" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Message'" placeholder=" Enter Message" title="Please Enter Valid Message" pattern="^[a-zA-Z\s]+$" required></textarea>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <input class="form-control valid" runat="server" name="name" id="name" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" placeholder="Enter your name" title="Enter Correct Name" pattern="^[a-zA-Z\s]+$" required>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <input class="form-control valid" runat="server" name="email" id="email" type="email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'"
                                        placeholder="Email" title="Please provide valid E-mail address" pattern="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" required>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter the required detail" ForeColor="Red" ControlToValidate="txtEmail" Display="Dynamic" SetFocusOnError="True" Font-Size="Small"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Size="Small" ControlToValidate="txtEmail" ></asp:RegularExpressionValidator>--%>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <input class="form-control" runat="server" name="subject" id="subject" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Subject'" placeholder="Enter Subject" title="Please Enter Valid Subject" pattern="^[a-zA-Z\s]+$" required>
                                </div>
                            </div>
                        </div>
                        <div class="form-group mt-3">
                            <%--<button type="submit" class="button button-contactForm boxed-btn">Send</button>--%>
                            <asp:Button ID="btnSend" runat="server" Text="Send" CssClass="button button-contactForm boxed-btn" OnClick="btnSend_Click" />
                        </div>
                    </div>
                    <%--</form>--%>
                </div>
                <div class="col-lg-3 offset-lg-1">
                    <div class="media contact-info">
                        <span class="contact-info__icon"><i class="ti-home"></i></span>
                        <div class="media-body">
                            <h3>Mumbai, Maharashtra.</h3>
                            <p>Sophia College for Women, Bhulabhai Desai Road, Mumbai 400 026.</p>
                        </div>
                    </div>
                    <div class="media contact-info">
                        <span class="contact-info__icon"><i class="ti-tablet"></i></span>
                        <div class="media-body">
                            <h3>022-221-223-21</h3>
                            <p>Mon to Fri 9am to 6pm</p>
                        </div>
                    </div>
                    <div class="media contact-info">
                        <span class="contact-info__icon"><i class="ti-email"></i></span>
                        <div class="media-body">
                            <h3>jobfinderteam08@gmail.com</h3>
                            <p>Send us your query anytime!</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ================ contact section end ================= -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</asp:Content>

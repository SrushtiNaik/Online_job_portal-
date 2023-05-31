<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineJobPortal.User.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="527694860827-b76vvra5p3r0mcar7bn6pipmkmb0itjt.apps.googleusercontent.com">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <style>
            @import url('https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900& display=swap');

            @supports ((-webkit-backdrop-filter: none) or (backdrop-filter: none)) {
                .backdrop-blur {
                    background-color: rgba(255, 255, 255, .1);
                    -webkit-backdrop-filter: blur(2px);
                    backdrop-filter: blur(2px);
                }
            }

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
            }

            .st {
                overflow: hidden;
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 100vh;
                background: linear-gradient(to bottom, #f1f4f9, #dff1ff);
            }

                .st colour {
                    position: absolute;
                    filter: blur(150px)
                }

                    .st colour:nth-child(1) {
                        top: -350px;
                        width: 600px;
                        height: 600px;
                        background: #ff395b;
                    }

                    .st colour:nth-child(2) {
                        bottom: -150px;
                        left: 100px;
                        width: 500px;
                        height: 500px;
                        background: #fffd87;
                    }

                    .st colour:nth-child(3) {
                        bottom: 50px;
                        right: 100px;
                        width: 300px;
                        height: 300px;
                        background: #00d2ff;
                    }

            .boxx {
                position: relative;
            }

                .boxx .square {
                    position: absolute;
                    backdrop-filter: blur(5px);
                    box-shadow: 0 25px 45px rgba(0,0,0,0.1);
                    border: 1px solid rgba(255,255,255,0.5);
                    border-right: 1px solid rgba(255,255,255,0.2);
                    border-bottom: 1px solid rgba(255,255,255,0.2);
                    background: rgba(255,255,255,0.1);
                    border-radius: 10px;
                    animation: animate 10s linear infinite;
                    animation-delay: calc(-1s* var(--i));
                }

            @keyframes animate {
                0%,100% {
                    transform: translateY(-40px);
                }

                50% {
                    transform: translateY(40px);
                }
            }

            .boxx .square:nth-child(1) {
                top: -10px;
                left: -60px;
                width: 100px;
                height: 100px;
            }

            .boxx .square:nth-child(2) {
                top: 150px;
                right: -90px;
                width: 120px;
                height: 120px;
                z-index: 2;
            }

            .boxx .square:nth-child(3) {
                bottom: 60px;
                left: -60px;
                width: 80px;
                height: 80px;
                z-index: 2;
            }

            .boxx .square:nth-child(4) {
                top: 400px;
                right: -40px;
                width: 60px;
                height: 60px;
                z-index: 2;
            }

            .boxx .square:nth-child(5) {
                top: 270px;
                left: -60px;
                width: 80px;
                height: 80px;
                z-index: 2;
            }

            .boxx .square:nth-child(6) {
                top: 500px;
                right: -60px;
                width: 50px;
                height: 50px;
                z-index: 2;
            }

            .conr {
                position: relative;
                width: 700px;
                background: rgba(255,255,255,0.1);
                border-radius: 10px;
                display: flex;
                justify-content: center;
                align-items: center;
                -webkit-backdrop-filter: blur(2px);
                backdrop-filter: blur(2px);
                box-shadow: 0 25px 45px rgba(0,0,0,0.1);
                border: 1px solid rgba(255,255,255,0.5);
                border-right: 1px solid rgba(255,255,255,0.2);
                border-bottom: 1px solid rgba(255,255,255,0.2);
            }

                .conr h2 {
                    color: #370ca3;
                    font-size: 24px;
                    font-weight: 700;
                    position: relative;
                }

                    .conr h2::before {
                        content: '';
                        position: absolute;
                        left: 44%;
                        bottom: -10px;
                        width: 80px;
                        height: 4px;
                        background: #370ca3;
                    }
        </style>
        <script type="text/javascript">
            function validate() {
                var str = document.getElementById('<%=txtPassword.ClientID %>').value;

                if (str.length < 8) {
                    document.getElementById("demo").innerHTML = "Password length must be atleast 8 characters";
                    document.getElementById("demo").style.color = "Red";
                    return ("Too Short");
                }
                
                else if (str.search(/[0-9]/) == -1) {
                    document.getElementById("demo").innerHTML = "Must be Atleast 1 number";
                    document.getElementById("demo").style.color = "Red";
                    return ("No number");
                }
                else if (str.search(/[a-z]/) == -1) {
                    document.getElementById("demo").innerHTML = "Must be Atleast 1 lowercase";
                    document.getElementById("demo").style.color = "Red";
                    return ("No Lowercase");
                }
                else if (str.search(/[A-Z]/) == -1) {
                    document.getElementById("demo").innerHTML = "Must be Atleast 1 Uppercase";
                    document.getElementById("demo").style.color = "Red";
                    return ("No Uppercase");
                }
                else if (str.search(/[!\@\#\$\%\^\&\(\)\_\+\.\,\:\;]/) == -1) {
                    document.getElementById("demo").innerHTML = "Must be a Special character, not ~,',*,";
                    document.getElementById("demo").style.color = "Red";
                    return ("No Special Character");
                }
                document.getElementById("demo").innerHTML = "Excellent!";
                document.getElementById("demo").style.color = "Green";
                return ("okay");
            }
        </script>

        <div class="st">
            <section>
                <div class="colour"></div>
                <div class="colour"></div>
                <div class="colour"></div>
                <div class="boxx">
                    <div class="conr">
                        <div class="square" style="--i: 0;"></div>
                        <div class="square" style="--i: 1;"></div>
                        <div class="square" style="--i: 2;"></div>
                        <div class="square" style="--i: 3;"></div>
                        <div class="square" style="--i: 4;"></div>
                        <div class="square" style="--i: 5;"></div>
                        <div class="container pt-50 pb-40">
                            <div class="row">
                                <div class="col-12 pb-20">
                                    <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
                                </div>
                                <div class="col-12">
                                    <h2 class="contact-title text-center">Sign In</h2>
                                </div>
                                <div class="col-lg-6 mx-auto">
                                    <div class="form-contact contact_form">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label>Username</label>
                                                    <asp:TextBox ID="txtUserName" runat="server" autofocus="autofocus" CssClass="form-control" MinLength="3" MaxLength="15" placeholder="Enter Unique Username" required></asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ErrorMessage="Please give a Username" ControlToValidate="txtUsername" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" Font-Size="Small"></asp:RequiredFieldValidator>
                                                    <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Size="Small" ControlToValidate="txtUserName" ValidationExpression="^[A-Z]{5,15}$" ErrorMessage="Username must be 5-15 characters"></asp:RegularExpressionValidator>--%>
                                                </div>
                                            </div>

                                            <%--<div class="container">
                                                <h2>Show or Hide Password</h2>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <p>Hover on the eye to show/hide the password</p>
                                                        <label>Password</label>
                                                        <div class="input-group">
                                                             <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Enter password" TextMode="Password" MaxLength="8" onkeyup="javascript:validate()"></asp:TextBox>
                                                            <div class="input-group-append">
                                                                <button id="show_password" class="btn btn-primary" type="button">
                                                                    <span class="fa fa-eye-slash icon"></span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>--%>


                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label>Password</label>
                                                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" autocomplete="current-password" placeholder="Enter password" TextMode="Password" MaxLength="15" onkeyup="javascript:validate()"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter the required detail" ForeColor="Red" ControlToValidate="txtPassword" Display="Dynamic" SetFocusOnError="True" Font-Size="Small"></asp:RequiredFieldValidator>
                                                    <span id="demo"></span>
                                                </div>
                                            </div>

                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label>Login Type</label>
                                                    <asp:DropDownList ID="ddlLoginType" runat="server" CssClass="form-control w-100">
                                                        <asp:ListItem Value="0">Select Login Type</asp:ListItem>
                                                        <asp:ListItem>Admin</asp:ListItem>
                                                        <asp:ListItem>User</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator runat="server" ErrorMessage="UserType is required" ControlToValidate="ddlLoginType"
                                                        Display="Dynamic" ForeColor="Red" SetFocusOnError="True" Font-Size="Small" InitialValue="0"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <%--<div class="col-12">
                                            <div class="form-group mt-3">
                                                <div id="ReCaptchContainer"></div>
                                            </div>
                                        </div>--%>
                                        </div>
                                        <div class="form-group mt-3">
                                            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="button button-contactForm boxed-btn mr-2" OnClick="btnLogin_Click" />
                                            <span class="clickLink"><a href="Register.aspx">New User? Click Here</a></span>
                                            <br />
                                            <br />
                                            <span class="clickLink" style="margin-top: 20px"><a href="FgPassword.aspx">Forgot Password?</a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%--<script src="https://www.google.com/recaptcha/api.js"></script>
                    <script src="https://www.google.com/recaptcha/api.js?onload=renderRecaptcha&render=explicit" async defer></script>
                    <script type="text/javascript">
                        var your_site_key = '6LclFOUdAAAAAGKLvzl538uNgQaRgyKrXK6FV-N_';
                        var renderRecaptcha = function () {
                            grecaptcha.render('ReCaptchContainer', {
                                'sitekey': '6LclFOUdAAAAAGKLvzl538uNgQaRgyKrXK6FV-N_',
                                'callback': reCaptchaCallback,
                                theme: 'light',
                                type: 'image',
                                size: 'normal'
                            });
                        };
                        var reCaptchaCallback = function (response) {
                            if (response !== '') {

                            }
                        };

                    </script>--%>
                    </div>
                </div>
            </section>
        </div>
    </section>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="OnlineJobPortal.User.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <script type="text/javascript">
            function validate() {
                var str = document.getElementById('<%=txtPassword.ClientID%>').value;

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

        <script type="text/javascript">
            function validation() {
                var a = document.getElementById('<%=txtContact.ClientID%>').value;
                var get_num = String(a.value).charAt(0);
                var first_num = Number(get_num);

                if ((isNaN(a.value) || a.value.length != 10 || first_num < 6) {
                    document.getElementById("message").innerHTML = "Mobile no. is invalid";
                    document.getElementById("message").style.color = "Red";
                    return false;
                }
                return true;
                if (a == '') {
                    document.getElementById("message").innerHTML = "Please enter Mobile no.";
                    document.getElementById("message").style.color = "Red";
                    return false;
                }
                if (isNaN(a)) {
                    document.getElementById("message").innerHTML = "Inputs must be in digits";
                    document.getElementById("message").style.color = "Red";
                    return false;
                }
                if (a.length < 10) {
                    document.getElementById("message").innerHTML = "Mobile no. must be 10 digits only";
                    document.getElementById("message").style.color = "Red";
                    return false;
                }
                if (a.length > 10) {
                    document.getElementById("message").innerHTML = "Mobile no. must be 10 digits only";
                    document.getElementById("message").style.color = "Red";
                    return false;
                }
                if ((a.charAt(0) != 9) || (a.charAt(0) != 8) || (a.charAt(0) != 7)) {
                    document.getElementById("message").innerHTML = "Mobile no. must start with 9, 8 and 7";
                    document.getElementById("message").style.color = "Red";
                }
                document.getElementById("message").innerHTML = "Excellent!";
                document.getElementById("message").style.color = "Green";
                return ("okay");
            }
        </script>

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
                top: 800px;
                right: -60px;
                width: 80px;
                height: 80px;
                z-index: 2;
            }

            .boxx .square:nth-child(7) {
                bottom: -25px;
                right: -60px;
                width: 100px;
                height: 100px;
            }

            .boxx .square:nth-child(8) {
                top: 550px;
                left: -90px;
                width: 120px;
                height: 120px;
                z-index: 2;
            }

            .boxx .square:nth-child(9) {
                top: 900px;
                left: -55px;
                width: 80px;
                height: 80px;
                z-index: 2;
            }

            .boxx .square:nth-child(10) {
                top: 1200px;
                right: -50px;
                width: 120px;
                height: 120px;
                z-index: 2;
            }

            .boxx .square:nth-child(11) {
                bottom: 70px;
                left: -50px;
                width: 80px;
                height: 80px;
                z-index: 2;
            }

            .boxx .square:nth-child(12) {
                top: 1200px;
                left: -40px;
                width: 50px;
                height: 50px;
                z-index: 2;
            }

            .boxx .square:nth-child(13) {
                top: 460px;
                right: -45px;
                width: 40px;
                height: 40px;
                z-index: 2;
            }

            .conr {
                position: relative;
                width: 950px;
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
                        left: 45%;
                        bottom: -10px;
                        width: 80px;
                        height: 4px;
                        background: #370ca3;
                    }
        </style>

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
                        <div class="square" style="--i: 6;"></div>
                        <div class="square" style="--i: 7;"></div>
                        <div class="square" style="--i: 8;"></div>
                        <div class="square" style="--i: 9;"></div>
                        <div class="square" style="--i: 10;"></div>
                        <div class="square" style="--i: 11;"></div>
                        <div class="square" style="--i: 12;"></div>
                        <div class="square" style="--i: 13;"></div>
                        <div class="container pt-50 pb-40">
                            <div class="row">
                                <div class="col-12 pb-20">
                                    <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
                                </div>
                                <div class="col-12">
                                    <h2 class="contact-title text-center">Sign Up</h2>
                                </div>
                                <div class="col-lg-6 mx-auto">
                                    <div class="form-contact contact_form">
                                        <div class="row">
                                            <div class="col-12">
                                                <h6>Login Information</h6>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label>Username</label>
                                                    <asp:TextBox ID="txtUserName" runat="server" autofocus="autofocus" MinLength="3" MaxLength="10" CssClass="form-control" placeholder="Enter Unique Username"></asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ErrorMessage="Please give a Username" ControlToValidate="txtUsername" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" Font-Size="Small"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label>Password</label>
                                                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Enter Password" MaxLength="15" onkeyup="javascript:validate()">
                                                    </asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter the required detail" ForeColor="Red" ControlToValidate="txtPassword" Display="Dynamic" SetFocusOnError="True" Font-Size="Small"></asp:RequiredFieldValidator>
                                                    &nbsp;<span id="demo"></span>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label>Confirm Password</label>
                                                    <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" placeholder="Re-Enter Password" TextMode="Password" required></asp:TextBox>
                                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password & Confirm Password should be same."
                                                        ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" Display="Dynamic" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <h6>Personal Information</h6>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label>First Name</label>
                                                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" placeholder="Enter First Name"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter the required detail" ForeColor="Red" ControlToValidate="txtFirstName" Display="Dynamic" SetFocusOnError="True" Font-Size="Small"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="First Name must be in characters" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Size="Small" ControlToValidate="txtFirstName" ValidationExpression="^[a-zA-Z\s]+$">
                                                    </asp:RegularExpressionValidator>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label>Last Name</label>
                                                    <asp:TextBox ID="txtLname" runat="server" CssClass="form-control" placeholder="Enter Last Name"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter the required detail" ForeColor="Red" ControlToValidate="txtLname" Display="Dynamic" SetFocusOnError="True" Font-Size="Small"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Last Name must be in charachters" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Size="Small" ControlToValidate="txtLname" ValidationExpression="^[a-zA-Z\s]+$">
                                                    </asp:RegularExpressionValidator>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label>State</label>
                                                    <asp:DropDownList ID="ddlState" runat="server" DataSourceID="SqlDataSource2" CssClass="form-control w-100" AppendDataBoundItems="true" DataTextField="SName" DataValueField="SName">
                                                        <asp:ListItem Value="0">Select State</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator runat="server" ErrorMessage="State name is required" ControlToValidate="ddlState" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Size="Small" InitialValue="0"></asp:RequiredFieldValidator>
                                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT [SName] FROM [State]"></asp:SqlDataSource>
                                                </div>
                                            </div>
                                            &nbsp;
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label>City</label>
                                                    <asp:DropDownList ID="ddlCity" runat="server" AppendDataBoundItems="true" DataSourceID="SqlDataSource1" DataTextField="CityName" DataValueField="CityName" CssClass="form-control w-100">
                                                        <asp:ListItem Value="0">Select City</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator runat="server" ErrorMessage="City name is required" ControlToValidate="ddlCity" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Size="Small" InitialValue="0"></asp:RequiredFieldValidator>
                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT [CityName] FROM [City]"></asp:SqlDataSource>
                                                </div>
                                            </div>
                                            &nbsp;
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label>Email address</label>
                                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Enter Email Address" required></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter the required detail" ForeColor="Red" ControlToValidate="txtEmail" Display="Dynamic" SetFocusOnError="True" Font-Size="Small"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please enter a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Size="Small" ControlToValidate="txtEmail">
                                                    </asp:RegularExpressionValidator>
                                                </div>
                                            </div>

                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label>Contact No.</label>
                                                    <asp:TextBox ID="txtContact" runat="server" CssClass="form-control" TextMode="Phone" placeholder="Enter Contact Number" onkeyup="javascript:validation" required></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter the required detail" ForeColor="Red" ControlToValidate="txtContact" Display="Dynamic" SetFocusOnError="True" Font-Size="Small"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid Contact Number, please give valid contact no." ValidationExpression="^[7-9][0-9]{9}$" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Size="Small" ControlToValidate="txtContact"></asp:RegularExpressionValidator>
                                                    <span id="message"></span>
                                                </div>
                                            </div>
                                            
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label>Age</label>
                                                    <asp:TextBox ID="txtAge" runat="server" CssClass="form-control" TextMode="Number" placeholder="Enter Your Age" required></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter the required detail" ForeColor="Red" ControlToValidate="txtAge" Display="Dynamic" SetFocusOnError="True" Font-Size="Small"></asp:RequiredFieldValidator>
                                                    <asp:RangeValidator runat="server" MinimumValue="18" MaximumValue="58" SetFocusOnError="True" ControlToValidate="txtAge" Display="Dynamic" ErrorMessage="Please fill the required field" Font-Size="Small"></asp:RangeValidator>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label for="txtlastDateToApply">Date of Birth</label>
                                                    <asp:TextBox ID="txtDateofBirth" runat="server" CssClass="form-control" placeholder="Enter Date of Birth" TextMode="Date" required>
                                                    </asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFeildValidatorDateofBirth" runat="server" ControlToValidate="txtDateofBirth" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" Font-Size="Small" ErrorMessage="Please fill the required field"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>

                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label>Gender</label>
                                                    <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control w-100" AppendDataBoundItems="true" DataSourceID="SqlDataSource3" DataTextField="Gname" DataValueField="Gname" >
                                                        <asp:ListItem Value="0">Select Gender</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Select gender type" ControlToValidate="ddlGender" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Size="Small" InitialValue="0"></asp:RequiredFieldValidator>
                                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT [Gname] FROM [Gender]"></asp:SqlDataSource>
                                                </div>
                                            </div>
                                            &nbsp;
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label>Address</label>
                                                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" placeholder="Enter Current Address"></asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAddress" ErrorMessage="Please enter the required details" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Size="Small"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>

                                            <div class="col-12">
                                                <div class="form-group mt-3">
                                                    <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="button button-contactForm boxed-btn mr-4" OnClick="btnRegister_Click" />
                                                    <span class="clickLink"><a href="Login.aspx">Already Register? Click here....</a></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>>
    </section>
</asp:Content>

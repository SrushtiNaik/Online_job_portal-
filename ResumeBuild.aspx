<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="ResumeBuild.aspx.cs" Inherits="OnlineJobPortal.User.ResumeBuild" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <script type="text/javascript">
            function validation() {
                var a = document.getElementById('<%=txtContact.ClientID %>').value;
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
                                    <h2 class="contact-title text-center">Build Resume</h2>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-contact contact_form">
                                        <div class="row">
                                            <div class="col-12">
                                                <h6>Personal Information</h6>
                                            </div>
                                             <div class="col-md-6 col-sm-12">
                                                <div class="form-group">
                                                    <label>First Name</label>
                                                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" autofocus="autofocus" placeholder="Enter First Name"></asp:TextBox>
                                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter the required detail" ForeColor="Red" ControlToValidate="txtFirstName" Display="Dynamic" SetFocusOnError="True" Font-Size="Small"></asp:RequiredFieldValidator>--%>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Name must be in charachters" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Size="Small" ControlToValidate="txtFirstName" ValidationExpression="^[a-zA-Z\s]+$">
                                                    </asp:RegularExpressionValidator>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group">
                                                    <label>Last Name</label>
                                                    <asp:TextBox ID="txtLname" runat="server" CssClass="form-control" placeholder="Enter Last Name"></asp:TextBox>
                                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter the required detail" ForeColor="Red" ControlToValidate="txtLname" Display="Dynamic" SetFocusOnError="True" Font-Size="Small"></asp:RequiredFieldValidator>--%>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Name must be in charachters" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Size="Small" ControlToValidate="txtLname" ValidationExpression="^[a-zA-Z\s]+$">
                                                    </asp:RegularExpressionValidator>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group">
                                                    <label>Username</label>
                                                    <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" placeholder="Enter Unique Username"></asp:TextBox>
                                                    <%--<asp:RequiredFieldValidator runat="server" ErrorMessage="Please give a Username" ControlToValidate="txtUsername" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" Font-Size="Small"></asp:RequiredFieldValidator>--%>
                                                </div>
                                            </div>
                                            
                                             <div class="col-md-6 col-sm-12">
                                                <div class="form-group">
                                                    <label>Email address</label>
                                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Enter Email Address" required></asp:TextBox>
                                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter the required detail" ForeColor="Red" ControlToValidate="txtEmail" Display="Dynamic" SetFocusOnError="True" Font-Size="Small"></asp:RequiredFieldValidator>--%>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please enter a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Size="Small" ControlToValidate="txtEmail">
                                                    </asp:RegularExpressionValidator>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group">
                                                    <label>Contact No.</label>
                                                    <asp:TextBox ID="txtContact" runat="server" CssClass="form-control" TextMode="Phone" placeholder="Enter Contact Number" onkeyup="javascript:validation" required></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter the required detail" ForeColor="Red" ControlToValidate="txtContact" Display="Dynamic" SetFocusOnError="True" Font-Size="Small"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid Contact Number, please give valid contact no." ValidationExpression="^[7-9][0-9]{9}$" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Size="Small" ControlToValidate="txtContact"></asp:RegularExpressionValidator>
                                                    <span id="message"></span>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group">
                                                    <label>Age</label>
                                                    <asp:TextBox ID="txtAge" runat="server" CssClass="form-control" TextMode="Number" placeholder="Enter Your Age" required></asp:TextBox>
                                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter the required detail" ForeColor="Red" ControlToValidate="txtAge" Display="Dynamic" SetFocusOnError="True" Font-Size="Small"></asp:RequiredFieldValidator>--%>
                                                    <asp:RangeValidator runat="server" MinimumValue="18" MaximumValue="58" SetFocusOnError="True" ControlToValidate="txtAge" Display="Dynamic" ErrorMessage="Please fill the required field" Font-Size="Small"></asp:RangeValidator>
                                                </div>
                                            </div>
                                            <%--<div class="col-sm-6">
                                                <div class="form-group">
                                                    <label for="txtlastDateToApply">Date of Birth</label>
                                                    <asp:TextBox ID="txtDateofBirth" runat="server" CssClass="form-control" placeholder="Enter Date of Birth" TextMode="Date" required>
                                                    </asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFeildValidatorDateofBirth" runat="server" ControlToValidate="txtDateofBirth" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" Font-Size="Small" ErrorMessage="Please fill the required field"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>--%>
                                           
                                            <%--<div class="col-12">
                                                <div class="form-group">
                                                    <label>Gender</label>
                                                    <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control w-100" AppendDataBoundItems="true" DataSourceID="SqlDataSource3" DataTextField="Gname" DataValueField="Gname">
                                                        <asp:ListItem Value="0">Select Gender</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlGender" ErrorMessage="Please Select gender type" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Size="Small"></asp:RequiredFieldValidator>
                                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT [Gname] FROM [Gender]"></asp:SqlDataSource>
                                                </div>
                                            </div>--%>
                                            
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label>Address</label>
                                                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" placeholder="Enter Current Address"></asp:TextBox>
                                                    <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="txtAddress" ErrorMessage="Please enter the required details" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Size="Small"></asp:RequiredFieldValidator>--%>
                                                </div>
                                            </div>
                                                           
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group">
                                                    <label>State</label>
                                                    <asp:DropDownList ID="ddlState" runat="server" DataSourceID="SqlDataSource2" CssClass="form-control w-100" AppendDataBoundItems="true" DataTextField="SName" DataValueField="SName" >
                                                        <asp:ListItem Value="0">Select State</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorState" runat="server" ErrorMessage="State name is required" ControlToValidate="ddlState" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Size="Small" InitialValue="0"></asp:RequiredFieldValidator>
                                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT [SName] FROM [State]"></asp:SqlDataSource>
                                                </div>
                                            </div>
                                                           
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group">
                                                    <label>City</label>
                                                    <asp:DropDownList ID="ddlCity" runat="server" AppendDataBoundItems="true" DataSourceID="SqlDataSource1" DataTextField="CityName" DataValueField="CityName" CssClass="form-control w-100">
                                                        <asp:ListItem Value="0">Select City</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID = "RequiredFieldValidatorCity" runat="server" ErrorMessage="City name is required" ControlToValidate="ddlCity" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Size="Small" InitialValue="0"></asp:RequiredFieldValidator>
                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT [CityName] FROM [City]"></asp:SqlDataSource>
                                                </div>
                                            </div>
                                            &nbsp;
                                            <div class="col-12 pt-4 ">
                                                <h6>Education/Resume Information</h6>
                                            </div>
                                           
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group">
                                                    <label>10th Percentage/Grade</label>
                                                    <asp:TextBox ID="txtTenth" runat="server" CssClass="form-control" placeholder="Ex: 90%" ></asp:TextBox>
                                                </div>
                                            </div>

                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group">
                                                    <label>12th Percentage/Grade</label>
                                                    <asp:TextBox ID="txtTwelfth" runat="server" CssClass="form-control" placeholder="Ex: 90%" ></asp:TextBox>
                                                </div>
                                            </div>

                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group">
                                                    <label>Graduation CGPA/Grade</label>
                                                    <asp:TextBox ID="txtGraduation" runat="server" CssClass="form-control" placeholder="Ex: BTech - 8.9 CGPA"></asp:TextBox>
                                                </div>
                                            </div>

                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group">
                                                    <label>Post Graduation CGPA/Grade</label>
                                                    <asp:TextBox ID="txtPG" runat="server" CssClass="form-control" placeholder="Ex: MTech - 8.9 CGPA"></asp:TextBox>
                                                </div>
                                            </div>

                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group">
                                                    <label>PhD CGPA/Grade</label>
                                                    <asp:TextBox ID="txtPhd" runat="server" CssClass="form-control" placeholder="Ex: PhD with Grade" ></asp:TextBox>
                                                </div>
                                            </div>

                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group">
                                                    <label>Achievements / Positions of Responsibility</label>
                                                    <asp:TextBox ID="txtAchievements" runat="server" CssClass="form-control" placeholder="Ex: Student Body President, etc" ></asp:TextBox>
                                                </div>
                                            </div>

                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group">
                                                    <label>Job Profile/Current labour</label>
                                                    <asp:TextBox ID="txtWork" runat="server" CssClass="form-control" placeholder="Ex: Job Profile"></asp:TextBox>
                                                </div>
                                            </div>

                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group">
                                                    <label>Work Experience</label>
                                                    <asp:TextBox ID="txtExperience" runat="server" CssClass="form-control" placeholder="Ex: Work Experience" ></asp:TextBox>
                                                </div>
                                            </div>

                                             <div class="col-md-6 col-sm-12">
                                                <div class="form-group">
                                                    <label>Current CTC</label>
                                                    <asp:TextBox ID="txtCTC" runat="server" CssClass="form-control" placeholder="Ex: 2.5 Lacs -/year, 3599-/service, etc"></asp:TextBox>
                                                </div>
                                            </div>

                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group">
                                                    <label>Resume</label>
                                                    <asp:FileUpload ID="fuResume" runat="server" CssClass="form-control pt-2" ToolTip=".doc, .docx, .pdf extension only" />
                                                   <%-- <br />
                                                    <asp:Button ID="btnUploadResume" runat="server" Text="Upload Resume" OnClick="btnUploadResume_Click />
                                                    <br />--%>
                                                </div>
                                            </div>

                                            <%--<div class="col-12">
                                                <div class="form-group mt-3">
                                                    <div id="ReCaptchContainer"></div>
                                                </div>
                                            </div>--%>
                                            <div class="col-12">
                                                <div class="form-group mt-3">
                                                    <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="button button-contactForm boxed-btn mr-4" OnClick="btnUpdate_Click" />
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
        </div>
    </section>

</asp:Content>

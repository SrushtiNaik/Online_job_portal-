<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="NewJob.aspx.cs" Inherits="OnlineJobPortal.Admin.NewJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
    <div style="background-image: url('../Images/bg.jpg'); width: 100%; height: 720px; background-repeat: no-repeat; background-size: cover; background-attachment: fixed;">
        <div class="container pt-4 pb-4">
            <div class="btn-toolbar justify-content-between mb-3">
                <div class="btn-group">
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </div>
                <div class="input-group h-25">
                    <asp:HyperLink ID="linkBack" runat="server" NavigateUrl="~/Admin/JobList.aspx" CssClass="btn btn-secondary"
                        Visible="false">< Back</asp:HyperLink>
                </div>
            </div>

            <h3 class="text-center"><% Response.Write(Session["title"]); %></h3>

            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <div class="col-md-6 pt-3">
                    <label for="txtCompany" style="font-weight: 600">Company/Employee Name</label>
                    <asp:TextBox ID="txtCompany" runat="server" autofocus="autofocus" CssClass="form-control" placeholder="Enter the Company/Employee Name" required>
                    </asp:TextBox>
                 </div>
                <div class="col-md-6 pt-3">
                    <label for="fuCompanyLogo" style="font-weight: 600">Employee Photo/Company Logo</label>
                    <asp:FileUpload ID="fuCompanyLogo" runat="server" CssClass="form-control" ToolTip=".jpg, .jpeg, .png extension only" />
                </div>
            </div>
            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <div class="col-md-6 pt-3">
                    <label for="txtJobTitle" style="font-weight: 600">Job Title</label>
                    <asp:TextBox ID="txtJobTitle" runat="server" CssClass="form-control" placeholder="Ex. Web Developer,App Developer" required>
                    </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorJbTitle" runat="server" ControlToValidate="txtJobTitle" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" Font-Size="Small" ErrorMessage="Please fill the required field"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-6 pt-3">
                    <label for="txtNoOfPost" style="font-weight: 600">Number of Post</label>
                    <asp:TextBox ID="txtNoOfPost" runat="server" CssClass="form-control" placeholder="Enter the Number Of Positions" TextMode="Number" required>
                    </asp:TextBox>
                </div>
            </div>
            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <div class="col-md-12 pt-3">
                    <label for="txtJobDescription" style="font-weight: 600">Job Description</label>
                    <asp:TextBox ID="txtJobDescription" runat="server" CssClass="form-control" placeholder="Enter Job Description" TextMode="MultiLine" required>
                    </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFeildValidatorJbDescription" runat="server" ControlToValidate="txtJobDescription" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" Font-Size="Small" ErrorMessage="Please fill the required field"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <div class="col-md-12 pt-3">
                    <label for="txtJobRoles" style="font-weight: 600">Roles & Responsibilities</label>
                    <asp:TextBox ID="txtJobRoles" runat="server" CssClass="form-control" placeholder="Enter Job Roles & Responsiblities" TextMode="MultiLine">
                    </asp:TextBox>
                </div>
            </div>
            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <div class="col-md-6 pt-3">
                    <label for="txtQualification" style="font-weight: 600">Educational Qualification/Skills</label>
                    <asp:TextBox ID="txtQualification" runat="server" CssClass="form-control" placeholder="Ex. Graduates, UnderGraduates, PostGraduates, etc.." required>
                    </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFeildValidatorQualification" runat="server" ControlToValidate="txtQualification" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" Font-Size="Small" ErrorMessage="Please fill the required field"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-6 pt-3">
                    <label for="txtExperience" style="font-weight: 600">Work Experience</label>
                    <asp:TextBox ID="txtExperience" runat="server" CssClass="form-control" placeholder="Ex: 2 Years, 3 Years, etc.." required>
                    </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFeildValidatorExperience" runat="server" ControlToValidate="txtExperience" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" Font-Size="Small" ErrorMessage="Please fill the required field"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <div class="col-md-6 pt-3">
                    <label for="txtSpecialization" style="font-weight: 600">Specialization Required</label>
                    <asp:TextBox ID="txtSpecialization" runat="server" CssClass="form-control" placeholder="Enter the specialization required" TextMode="MultiLine" required>
                    </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFeildValidatorSpecialization" runat="server" ControlToValidate="txtSpecialization" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" Font-Size="Small" ErrorMessage="Please fill the required field"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-6 pt-3">
                    <label for="txtLastDate" style="font-weight: 600">Last Date To Apply</label>
                    <asp:TextBox ID="txtLastDate" runat="server" CssClass="form-control" placeholder="Enter Last Date To Apply" TextMode="Date" required>
                    </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFeildValidatorDateToApply" runat="server" ControlToValidate="txtLastDate" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" Font-Size="Small" ErrorMessage="Please fill the required field"></asp:RequiredFieldValidator>
                </div>
            </div>

            <%--<<div class="row mr-lg-5 ml-lg-5 mb-3">
                <div class="col-md-6 pt-3">
                    <label for="txtAge" style="font-weight: 600">Employee Age</label>
                    <asp:TextBox ID="txtAge" runat="server" CssClass="form-control" placeholder="Enter Employee Age" TextMode="Number" required ></asp:TextBox>
                    asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter the required detail" ForeColor="Red" ControlToValidate="txtAge" Display="Dynamic" SetFocusOnError="True" Font-Size="Small"></asp:RequiredFieldValidator>
                    <asp:RangeValidator runat="server" MinimumValue="18" MaximumValue="58" SetFocusOnError="True" ControlToValidate="txtAge" Display="Dynamic" ErrorMessage="Please fill the required field" Font-Size="Small" ForeColor="Red"></asp:RangeValidator>
                </div>
                <<div class="col-md-6 pt-3">
                    <label for="txtContactNo" style="font-weight: 600">Employee Contact No</label>
                    <asp:TextBox ID="txtContactNo" runat="server" CssClass="form-control" placeholder="Enter Contact Number" TextMode="Phone" ></asp:TextBox>
                    asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter the required detail" ForeColor="Red" ControlToValidate="txtContactNo" Display="Dynamic" SetFocusOnError="True" Font-Size="Small"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Contact Number, please give valid contact no." ValidationExpression="^[7-9][0-9]{9}$" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Size="Small" ControlToValidate="txtContactNo"></asp:RegularExpressionValidator>
                </div>
            </div>--%>

            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <div class="col-md-6 pt-3">
                    <label for="txtSalary" style="font-weight: 600">Salary</label>
                    <asp:TextBox ID="txtSalary" runat="server" CssClass="form-control" placeholder="Ex 3,00,000 P.A, 5000/-per service,etc.." required>
                    </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFeildValidatorSalary" runat="server" ControlToValidate="txtSalary" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" Font-Size="Small" ErrorMessage="Please fill the required field"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-6 pt-3">
                    <label for="ddlJobType" style="font-weight: 600">Job Type</label>
                    <asp:DropDownList ID="ddlJobType" runat="server" CssClass="form-control">
                        <asp:ListItem Value="0">Select Job Type</asp:ListItem>
                        <asp:ListItem>Full Time</asp:ListItem>
                        <asp:ListItem>Part Time</asp:ListItem>
                        <asp:ListItem>Remote</asp:ListItem>
                        <asp:ListItem>Freelance</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFeildValidatorJbType" runat="server" ErrorMessage="JobType is required" ForeColor="Red"
                        ControlToValidate="ddlJobType" InitialValue="0" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <div class="col-md-6 pt-3">
                    <label for="txtWebsite" style="font-weight: 600">Website</label>
                    <asp:TextBox ID="txtWebsite" runat="server" CssClass="form-control" placeholder="Enter the Website" TextMode="Url">
                    </asp:TextBox>
                </div>
                <div class="col-md-6 pt-3">
                    <label for="txtEmail" style="font-weight: 600">Email Address</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Email ID" TextMode="Email">
                    </asp:TextBox>
                </div>
            </div>
            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <div class="col-md-6 pt-3">
                    <label for="txtJobLocation" style="font-weight: 600">Location</label>
                    <asp:TextBox ID="txtJobLocation" runat="server" CssClass="form-control" placeholder="Enter the Job Location" TextMode="MultiLine" required>
                    </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorlocation" runat="server" ControlToValidate="txtJobLocation" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" Font-Size="Small" ErrorMessage="Please fill the required field"></asp:RequiredFieldValidator>
                </div>
              <div class="col-md-6 pt-3">
                    <label for="txtContact" style="font-weight: 600">Contact No.</label>
                    <asp:TextBox ID="txtContact" runat="server" CssClass="form-control" TextMode="Phone" placeholder="Enter Contact Number" onkeyup="javascript:validation" required>
                    </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorContact" runat="server" ErrorMessage="Please enter the required detail" ForeColor="Red" ControlToValidate="txtContact" Display="Dynamic" SetFocusOnError="True" Font-Size="Small"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorContactNo" runat="server" ErrorMessage="Invalid Contact Number, please give valid contact no." ValidationExpression="^[7-9][0-9]{9}$" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Size="Small" ControlToValidate="txtContact"></asp:RegularExpressionValidator>
                    <span id="message"></span>
                </div>
            </div>       
            <div class="row mr-lg-5 ml-lg-5 mb-3">
                <div class="col-md-6 pt-3">
                    <label for="ddlState" style="font-weight: 600">State</label>
                    <asp:DropDownList ID="ddlState" runat="server" DataSourceID="SqlDataSource2" CssClass="form-control w-100" AppendDataBoundItems="true" DataTextField="SName" DataValueField="SName">
                        <asp:ListItem Value="0">Select State</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ErrorMessage="State name is required" ControlToValidate="ddlState" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Size="Small" InitialValue="0"></asp:RequiredFieldValidator>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT [SName] FROM [State]"></asp:SqlDataSource>
                </div>
                <div class="col-md-6 pt-3">
                    <label for="ddlCity" style="font-weight: 600">City</label>
                    <asp:DropDownList ID="ddlCity" runat="server" AppendDataBoundItems="true" DataSourceID="SqlDataSource1" DataTextField="CityName" DataValueField="CityName" CssClass="form-control w-100">
                        <asp:ListItem Value="0">Select City</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ErrorMessage="City name is required" ControlToValidate="ddlCity" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Font-Size="Small" InitialValue="0"></asp:RequiredFieldValidator>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT [CityName] FROM [City]"></asp:SqlDataSource>
                </div>
            </div>
            <div class="row mr-lg-5 ml-lg-5 mb-3 pt-4">
                <div class="col-md-3 col-md-offset-2 mb-3">
                    <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary btn-block" BackColor="#7200cf" Text="Add Job" OnClick="btnAdd_Click" />
                </div>
            </div>

        </div>

    </div>

</asp:Content>

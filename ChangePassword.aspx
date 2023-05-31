<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="OnlineJobPortal.User.ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:600,700,900" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        function validate() {
            var str = document.getElementById('<%=txtNewPassword.ClientID %>').value;

            if (str.length < 8) {
                document.getElementById("demo").innerHTML = "Password length must be 8 characters";
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
    <style>
        #login-card {
            width: 600px;
            border-radius: 25px;
            margin: 50px auto;
        }
    </style>
    <div id="login-card" class="card" style="background-color:#f0edfa;">
        <div class="container pt-50  pb-40">
            <div class="row">
                <div class="col-12 pb-20">
                    <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
                </div>
                <div class="col-12">
                    <h2 class="contact-title text-center">Change/Update Password</h2>
                </div>
                <div class="col-lg-9 mx-auto">
                    <div class="form-contact contact_form">
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group">
                                    <label>Current Password</label>
                                    <asp:TextBox ID="txtCurrentPassword" runat="server" autofocus="autofocus" autocomplete="current-password" MaxLength="15" CssClass="form-control" placeholder="Enter Current password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label>New Password</label>
                                    <asp:TextBox ID="txtNewPassword" runat="server" CssClass="form-control" autofocus="autofocus" MinLength="8" MaxLength="15" placeholder="Enter New password" onkeyup="javascript:validate()"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label>Confirm Password</label>
                                    <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" autofocus="autofocus" placeholder="Re-enter new password" TextMode="Password" MinLength="8" MaxLength="15"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmPassword" Display="Dynamic" Font-Size="Small" ErrorMessage="Password & Confirm Password should be same."
                                        ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <asp:Button ID="Btnsend" runat="server" BorderColor="#ff0066" ForeColor="White" BackColor="#ff0066" Text="Update Password" CssClass="btn btn-lg btn-primary btn-block" Style="align-content: center" OnClick="Btnsend_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

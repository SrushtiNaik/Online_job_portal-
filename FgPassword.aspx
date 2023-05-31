<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="FgPassword.aspx.cs" Inherits="OnlineJobPortal.User.FgPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <div class="container pt-50  pb-40">
        <div class="row">
            <div class="col-12 pb-20">
                <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
            </div>
            <div class="form-gap"></div>
            <div class="col-md-4 mx-auto">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="text-center">
                            <h3><i class="fas fa-lock fa-4x"></i></h3>
                            <h2 class="text-center">Forgot Password?</h2>
                            <p>You can retrieve your password here.</p>
                            <div class="panel-body">

                                <form id="register-form" role="form" autocomplete="off" class="form" method="post">

                                    <div class="form-group">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                                            <%-- <input id="email" name="email" placeholder="email address" class="form-control"  type="email">

                          <input class="form-control valid" runat="server" name="email" id="email" type="email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" 
                          placeholder="Email" title="Please provide valid E-mail address" pattern="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" required>--%>

                                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Email ID" TextMode="Email" title="Please provide valid E-mail address" pattern="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" required></asp:TextBox>

                                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Registered Email ID" 
                           ForeColor="Red" ControlToValidate="txtEmail" Display="Dynamic" SetFocusOnError="True" Font-Size="Small"></asp:RequiredFieldValidator>--%>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <%--<input name="recover-submit" class="btn btn-lg btn-primary btn-block" value="Reset Password" type="submit">--%>
                                        <asp:Button ID="Btnsend" runat="server" BorderColor="#ff0066" ForeColor="White" BackColor="#ff0066" Text="Retrieve Password" CssClass="btn btn-lg btn-primary btn-block" OnClick="Btnsend_Click" />
                                        <br />
                                        <span class="clickLink"><a href="Login.aspx">Have an account? Login..</a></span>
                                        <br />
                                        <span class="clickLink"><a href="Register.aspx">Don't have an account? Register..</a></span>
                                    </div>

                                    <input type="hidden" class="hide" name="token" id="token" value="">
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

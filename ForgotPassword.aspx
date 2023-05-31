<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="OnlineJobPortal.User.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container pt-50  pb-40">
                        <div class="row">
                            <div class="col-12 pb-20">
                                <asp:Label ID="LabelMessage" runat="server" Visible="false"></asp:Label>
                            </div>
                            <div class="col-12">
                                <h2 class="contact-title text-center">Retrieve Password</h2>
                            </div>
                            <div class="col-lg-6 mx-auto">
                                <div class="form-contact contact_form">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="form-group">
                                                <label>Username</label>
                                                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter Unique Username"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ErrorMessage="Enter the Username" ControlToValidate="txtUsername" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" Font-Size="Small"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <label>Email Address</label>
                                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Email ID" TextMode="Email"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Registered Email ID" ForeColor="Red" ControlToValidate="txtEmail" Display="Dynamic" SetFocusOnError="True" Font-Size="Small"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group mt-3">
                                        <asp:Button ID="Btnsend" runat="server" Text="Send" CssClass="button button-contactForm boxed-btn mr-2" OnClick="Btnsend_Click"/>&nbsp;
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
</asp:Content>
